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


package body org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package is

   procedure Initialize_Fields (This : in out HighScoreNamePersistanceSingleton'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tsUtil := TsUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.platformRecordIdUtil := PlatformRecordIdUtil_Package.getInstance;
      This.RECORD_ID := To_Unbounded_String ("_SN");
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
      This.nameBasicArrayList := BasicArrayListD_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out HighScoreNamePersistanceSingleton'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return HighScoreNamePersistanceSingleton_Access is
      This : constant HighScoreNamePersistanceSingleton_Access := new HighScoreNamePersistanceSingleton;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return HighScoreNamePersistanceSingleton_Access is
   begin
        return HighScoreNamePersistanceSingleton_Package.SINGLETON;
   end getInstance;

   procedure clear (This : in out HighScoreNamePersistanceSingleton) is
   begin
        This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end clear;

   --  throws Exception
   procedure deleteAll (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access) is
      size : Integer;
      integer_Id : Integer;
      index : Integer;
   begin
        size := This.nameBasicArrayList.size;
        for index in 0 .. (size) - 1 loop
            integer_Id := Integer (This.nameBasicArrayList.objectArray (index));
            This.delete (abeClientInformation, gameInfo, integer_Id.intValue);
        end loop;
        This.clear;
   end deleteAll;

   function getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access) return Unbounded_String is
   begin
        return This.platformRecordIdUtil.getRecordId (abeClientInformation, This.RECORD_ID);
   end getRecordId;

   --  throws Exception
   procedure delete (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; deleteId : Integer) is
      recordStore : RecordStore_Access;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Deleting: ")).appendint (deleteId).toString, This'Unchecked_Access, This.commonStrings.delete);
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            recordStore.deleteRecord (deleteId);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            Java_Throw (e);
                end;
        end;
        --  finally
        begin
            if (recordStore) /= (null) then
                PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), This'Unchecked_Access, This.commonStrings.delete);
                recordStore.closeRecordStore;
            end if;
        end;
   end delete;

   function getIds (This : in out HighScoreNamePersistanceSingleton) return BasicArrayList_Access is
   begin
        return This.nameBasicArrayList;
   end getIds;

   function load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access) return Unbounded_String is
      recordStore : RecordStore_Access;
      LOADING_ID : Unbounded_String;
      recordEnum : RecordEnumeration_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            if (This.name) = (StringUtil_Package.getInstance.EMPTY_STRING) then
                LOADING_ID := To_Unbounded_String ("Loading id: ");
                recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
                recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
                smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
                recordAsBytes := null;
                byteArrayInputStream := null;
                inputStream := null;
                while recordEnum.hasNextElement loop
                    id := recordEnum.nextRecordId;
                    This.logUtil.putF (StringMaker_Package.Create.append (LOADING_ID).appendint (id).toString, This'Unchecked_Access, This.commonStrings.LOAD);
                    recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    while (inputStream.available) > (0) loop
                        This.name := inputStream.readUTF;
                    end loop;
                    This.nameBasicArrayList.add (smallIntegerSingletonFactory.getAt (id));
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.save (abeClientInformation, gameInfo, This.name);
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (ExceptionUtil_Package.getInstance.getStackTrace (e)).toString, This'Unchecked_Access, This.commonStrings.LOAD);
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
        return This.name;
   end load;

   procedure save (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access; name : Unbounded_String) is
      recordStore : RecordStore_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
      savedGameBytes : Short_Short_Integer_Array_Access;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Saving: ")).append (name).toString, This'Unchecked_Access, This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
            outputStream.writeUTF (name);
            savedGameBytes := byteArrayOutputStream.toByteArray;
            recordStore.addRecord (savedGameBytes, 0, savedGameBytes'Length);
            This.name := name;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.SAVE, e);
                end;
        end;
        --  finally
        begin
            begin
                if (recordStore) /= (null) then
                    PreLogUtil_Package.put (To_Unbounded_String ("Closing RecordStore"), This'Unchecked_Access, This.commonStrings.SAVE);
                    recordStore.closeRecordStore;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.SAVE, e);
                    end;
            end;
        end;
   end save;

   procedure getInstance is
      Java_Result : constant HighScoreNamePersistanceSingleton_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getRecordId (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access) is
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).getRecordId (abeClientInformation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

   procedure getIds (This : in out HighScoreNamePersistanceSingleton) is
      Java_Result : constant BasicArrayList_Access := HighScoreNamePersistanceSingleton'Class (This).getIds;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIds;

   procedure load (This : in out HighScoreNamePersistanceSingleton; abeClientInformation : AbeClientInformationInterface_Access; gameInfo : GameInfo_Access) is
      Java_Result : constant Unbounded_String := HighScoreNamePersistanceSingleton'Class (This).load (abeClientInformation, gameInfo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end load;

begin
   null;
   SINGLETON := HighScoreNamePersistanceSingleton_Package.Create;

end org.allbinary.game.score.HighScoreNamePersistanceSingleton_Package;


