--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.game.score.RecordStoreHighScores_Package is

   procedure Initialize_Fields (This : in out RecordStoreHighScores'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.platformRecordIdUtil := PlatformRecordIdUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.RECORD_ID := To_Unbounded_String ("_HS");
      This.MAXHIGHSCORES := 100;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RecordStoreHighScores'Class; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) is
   begin
        HighScores_Package.Initialize (This, name, heading, columnTwoHeading);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        This.gameInfo := gameInfo;
        This.recordComparatorInterface := recordComparatorInterface;
        This.load;
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) return RecordStoreHighScores_Access is
      This : constant RecordStoreHighScores_Access := new RecordStoreHighScores;
   begin
      Initialize (This.all, abeClientInformation, gameInfo, name, heading, columnTwoHeading, recordComparatorInterface);
      return This;
   end Create;

   function getInstance (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) return HighScores_Access is
      highScoresCanBeNull : Java_Object_Access;
      highScores : HighScores_Access;
   begin
        highScoresCanBeNull := RecordStoreHighScores_Package.hashTable.get (Java_Object_Access (highScoreName));
        if (highScoresCanBeNull) = (null) then
            highScores := RecordStoreHighScores_Package.Create (abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
            RecordStoreHighScores_Package.hashTable.put (highScores.getName, highScores);
            return highScores;
        end if;
        return HighScores_Access (highScoresCanBeNull);
   end getInstance;

   function getRecordId (This : in out RecordStoreHighScores; abeClientInformation : AbeClientInformationInterface_Access) return Unbounded_String is
   begin
        return This.platformRecordIdUtil.getRecordId (abeClientInformation, StringMaker_Package.Create.append (CommonSeps_Package.getInstance.UNDERSCORE).append (This.getName).append (This.RECORD_ID).toString);
   end getRecordId;

   procedure addHighScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access) is
      recordStore : RecordStore_Access;
      highScoreBytes : Short_Short_Integer_Array_Access;
      recordId : Integer;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Adding HighScore: ")).appendlong (Long_Long_Integer (newHighScore.getScore)).toString, This'Unchecked_Access, This.commonStrings.ADD);
            if This.isTooManyHighScores then
                This.logUtil.putF (To_Unbounded_String ("Removing Lowest Score"), This'Unchecked_Access, This.commonStrings.ADD);
                This.removeLowestHighScore;
            end if;
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (This.abeClientInformation), True);
            highScoreBytes := newHighScore.getAsBytes;
            recordId := recordStore.addRecord (highScoreBytes, 0, highScoreBytes'Length);
            This.load;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.ADD, e);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), This'Unchecked_Access, This.commonStrings.ADD);
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.ADD, e);
                    end;
            end;
        end;
   end addHighScore;

   procedure removeLowestHighScore (This : in out RecordStoreHighScores) is
      recordStore : RecordStore_Access;
      recordEnum : RecordEnumeration_Access;
      scoreComparator : ScoreComparator_Access;
      bestHighScore : HighScore_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
      name : Unbounded_String;
      nextScore : Long_Long_Integer;
      nextCurrentHighScore : HighScore_Access;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (This.abeClientInformation), True);
            recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
            scoreComparator := (ScoreComparator_Access (This.recordComparatorInterface));
            bestHighScore := HighScore_Package.Create (-(1), To_Unbounded_String ("none"), GameInfo_Package.NONE, scoreComparator.getBestScore);
            recordAsBytes := null;
            byteArrayInputStream := null;
            inputStream := null;
            while recordEnum.hasNextElement loop
                id := recordEnum.nextRecordId;
                recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                if (recordAsBytes) /= (null) then
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    name := inputStream.readUTF;
                    nextScore := inputStream.readLong;
                    nextCurrentHighScore := HighScore_Package.Create (id, name, GameInfo_Package.NONE, nextScore);
                    if (This.recordComparatorInterface.compare (nextCurrentHighScore.getAsBytes, bestHighScore.getAsBytes)) = (RecordComparator_Package.FOLLOWS) then
                        bestHighScore := nextCurrentHighScore;
                    end if;
                end if;
            end loop;
            if (bestHighScore.getId) /= (-(1)) then
                This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Removing Lowest HighScore: ")).appendlong (Long_Long_Integer (bestHighScore.getScore)).toString, This'Unchecked_Access, This.commonStrings.LOAD);
                recordStore.deleteRecord (bestHighScore.getId);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("removeLowestHighScore"), e);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), This'Unchecked_Access, To_Unbounded_String ("removeLowestHighScore"));
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("removeLowestHighScore"), e);
                    end;
            end;
        end;
   end removeLowestHighScore;

   procedure load (This : in out RecordStoreHighScores) is
      recordStore : RecordStore_Access;
      recordEnum : RecordEnumeration_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
      name : Unbounded_String;
      score : Long_Long_Integer;
      newHighScore : HighScore_Access;
      list : BasicArrayList_Access;
      size : Integer;
      lastIndex : Integer;
      highScore : HighScore_Access;
      index : Integer;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (This.abeClientInformation), True);
            This.setList (BasicArrayListD_Package.Create);
            recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
            recordAsBytes := null;
            byteArrayInputStream := null;
            inputStream := null;
            while recordEnum.hasNextElement loop
                id := recordEnum.nextRecordId;
                recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                if (recordAsBytes) /= (null) then
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    begin
                        name := inputStream.readUTF;
                        score := inputStream.readLong;
                        newHighScore := HighScore_Package.Create (id, name, GameInfo_Package.NONE, score);
                        list := This.getList;
                        size := list.size;
                        lastIndex := size;
                        for index in 0 .. (size) - 1 loop
                            highScore := HighScore_Access (list.objectArray (index));
                            if (This.recordComparatorInterface.compare (newHighScore.getAsBytes, highScore.getAsBytes)) = (RecordComparator_Package.PRECEDES) then
                                lastIndex := index;
                                exit;
                            end if;
                        end loop;
                        list.addAt (lastIndex, newHighScore);
                    exception
                        when Java_Occurrence : others =>
                            declare
                                e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                            begin
                        This.logUtil.put (To_Unbounded_String ("EOF"), This'Unchecked_Access, This.commonStrings.LOAD, e);
                        Java_Throw (e);
                            end;
                    end;
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("No High Scores"), This'Unchecked_Access, This.commonStrings.LOAD, e);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), This'Unchecked_Access, This.commonStrings.LOAD);
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.LOAD, e);
                    end;
            end;
        end;
   end load;

   function isTooManyHighScores (This : in out RecordStoreHighScores) return Boolean is
   begin
        if ((This.getList) /= (null)) and then ((This.getList.size) < (This.MAXHIGHSCORES)) then
            return False;
        else
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("HighScores RecordStore Max Reached: ")).appendint (This.MAXHIGHSCORES).toString, This'Unchecked_Access, To_Unbounded_String ("isTooManyHighScores"));
            return True;
        end if;
   end isTooManyHighScores;

   --  throws Exception
   function isBestScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access) return Boolean is
      list : BasicArrayList_Access;
      size : Integer;
      highScore : HighScore_Access;
      index : Integer;
   begin
        begin
            if not (This.isTooManyHighScores) then
                This.logUtil.putF (To_Unbounded_String ("Slot Available for a High Score"), This'Unchecked_Access, To_Unbounded_String ("isBestScore"));
                return True;
            else
                list := This.getList;
                size := list.size;
                for index in 0 .. (size) - 1 loop
                    highScore := HighScore_Access (list.objectArray (index));
                    if (This.recordComparatorInterface.compare (newHighScore.getAsBytes, highScore.getAsBytes)) = (RecordComparator_Package.FOLLOWS) then
                        This.logUtil.putF (To_Unbounded_String ("Obtained a High Score"), This'Unchecked_Access, To_Unbounded_String ("isBestScore"));
                        return True;
                    end if;
                end loop;
            end if;
            This.logUtil.putF (To_Unbounded_String ("Not a High Score"), This'Unchecked_Access, To_Unbounded_String ("isBestScore"));
            return False;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.ADD, e);
            Java_Throw (e);
                end;
        end;
   end isBestScore;

   function toString (This : in out RecordStoreHighScores) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      list : BasicArrayList_Access;
      size : Integer;
      highScore : HighScore_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (HighScores (This).toString);
        list := This.getList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            highScore := HighScore_Access (list.objectArray (index));
            stringBuffer.append (highScore.getScoreString);
            stringBuffer.append (CommonSeps_Package.getInstance.COMMA_SEP);
        end loop;
        return stringBuffer.toString;
   end toString;

   procedure getInstance (abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; highScoreName : Unbounded_String; heading : Unbounded_String; columnTwoHeading : Unbounded_String; recordComparatorInterface : RecordComparator_Access) is
      Java_Result : constant HighScores_Access := getInstance (abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRecordId (This : in out RecordStoreHighScores; abeClientInformation : AbeClientInformationInterface_Access) is
      Java_Result : constant Unbounded_String := RecordStoreHighScores'Class (This).getRecordId (abeClientInformation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

   procedure isTooManyHighScores (This : in out RecordStoreHighScores) is
      Java_Result : constant Boolean := RecordStoreHighScores'Class (This).isTooManyHighScores;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isTooManyHighScores;

   procedure isBestScore (This : in out RecordStoreHighScores; newHighScore : HighScore_Access) is
      Java_Result : constant Boolean := RecordStoreHighScores'Class (This).isBestScore (newHighScore);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isBestScore;

   procedure toString (This : in out RecordStoreHighScores) is
      Java_Result : constant Unbounded_String := RecordStoreHighScores'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

begin
   null;
   hashTable := StdUtil_Package.getInstance.createHashtable;

end org.allbinary.game.score.RecordStoreHighScores_Package;


