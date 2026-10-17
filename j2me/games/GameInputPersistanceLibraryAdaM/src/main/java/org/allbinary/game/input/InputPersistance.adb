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


package body org.allbinary.game.input.InputPersistance_Package is

   procedure Initialize_Fields (This : in out InputPersistance'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
      This.hashtableUtil := HashtableUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out InputPersistance'Class; name : Unbounded_String) is
   begin
        BasicPersitance_Package.Initialize (This, name);
        Initialize_Fields (This);
   end Initialize;

   function Create (name : Unbounded_String) return InputPersistance_Access is
      This : constant InputPersistance_Access := new InputPersistance;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   procedure loadAll (This : in out InputPersistance; abeClientInformation : AbeClientInformationInterface_Access) is
      recordStore : RecordStore_Access;
      recordEnum : RecordEnumeration_Access;
      gameActionInputId : Long_Long_Integer;
      inputId : Long_Long_Integer;
      gameActionInput : Input_Access;
      input : Input_Access;
      hashtable : ABHashtable_Access;
      gameKeyFactory : GameKeyMappingFactory_Access;
      stringBuffer : StringMaker_Access;
      inputFactory : InputFactory_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      stdUtil : StdUtil_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
      value : Integer;
      gameActionInputIdAsString : Unbounded_String;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
            gameActionInputId := 0;
            inputId := 0;
            gameActionInput := null;
            input := null;
            hashtable := null;
            gameKeyFactory := GameKeyMappingFactory_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            inputFactory := InputFactory_Package.getInstance;
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            stdUtil := StdUtil_Package.getInstance;
            recordAsBytes := null;
            byteArrayInputStream := null;
            inputStream := null;
            while recordEnum.hasNextElement loop
                id := recordEnum.nextRecordId;
                stringBuffer.delete (0, stringBuffer.length);
                This.logUtil.putF (stringBuffer.append (This.persistanceStrings.LOADING_ID).appendint (id).toString, This'Unchecked_Access, This.persistanceStrings.LOAD_ALL);
                recordAsBytes := This.tsUtil.getRecord (recordStore, id);
                if (recordAsBytes) /= (null) then
                    byteArrayInputStream := ByteArrayInputStream_Package.Create (recordAsBytes);
                    inputStream := DataInputStream_Package.Create (byteArrayInputStream);
                    hashtable := stdUtil.createHashtable;
                    value := 0;
                    while (inputStream.available) > (0) loop
                        gameActionInputIdAsString := inputStream.readUTF;
                        value := Integer'Value (To_String (gameActionInputIdAsString));
                        gameActionInputId := Long_Long_Integer (value);
                        inputStream.readUTF;
                        value := Integer'Value (To_String (inputStream.readUTF));
                        inputId := Long_Long_Integer (value);
                        gameActionInput := gameKeyFactory.getGameKey (Integer (gameActionInputId));
                        input := inputFactory.getInstanceById (Integer (inputId));
                        if ((input) = (inputFactory.NO_INPUT)) or else ((gameActionInput) = (null)) then
                            stringBuffer.delete (0, stringBuffer.length);
                            if (input) = (inputFactory.NO_INPUT) then
                                stringBuffer.append (This.persistanceStrings.ERROR_LOADING_ID);
                                stringBuffer.appendlong (inputId);
                                stringBuffer.append (This.persistanceStrings.GAME_ACTION_INPUT);
                                stringBuffer.appendlong (gameActionInputId);
                                PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, This.persistanceStrings.LOAD_ALL);
                            end if;
                            if (gameActionInput) = (null) then
                                stringBuffer.delete (0, stringBuffer.length);
                                stringBuffer.append (This.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong (gameActionInputId);
                                stringBuffer.append (This.persistanceStrings.ID);
                                stringBuffer.appendlong (inputId);
                                PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, This.persistanceStrings.LOAD_ALL);
                            end if;
                        else
                            null;
                        end if;
                        hashtable.put (input, gameActionInput);
                    end loop;
                    This.valueList.add (hashtable);
                    This.idList.add (smallIntegerSingletonFactory.getAt (id));
                else
                    null;
                end if;
            end loop;
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
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, This'Unchecked_Access, This.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore;
            end if;
        end;
   end loadAll;

   --  throws Exception
   procedure save (This : in out InputPersistance; abeClientInformation : AbeClientInformationInterface_Access; hashtable : ABHashtable_Access) is
      recordStore : RecordStore_Access;
      stringBuffer : StringMaker_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
      gameActionInput : Input_Access;
      list : BasicArrayList_Access;
      input : Input_Access;
      savedGameBytes : Short_Short_Integer_Array_Access;
      commonSeps : CommonSeps_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      inputObjectArray : Java_Object_Access_Array_Access;
      size : Integer;
      gameActionInputIdAsString : Unbounded_String;
      inputIdAsString : Unbounded_String;
      index2 : Integer;
      index : Integer;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            stringBuffer := StringMaker_Package.Create;
            PreLogUtil_Package.put (stringBuffer.append (This.persistanceStrings.SAVING).append (StringUtil_Package.getInstance.toString (hashtable)).toString, This'Unchecked_Access, This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
            gameActionInput := null;
            list := null;
            input := null;
            savedGameBytes := null;
            commonSeps := CommonSeps_Package.getInstance;
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            inputObjectArray := This.hashtableUtil.getKeysAsArray (hashtable);
            size := inputObjectArray'Length;
            for index in 0 .. (size) - 1 loop
                gameActionInput := Input_Access (inputObjectArray (index));
                list := BasicArrayList_Access (hashtable.get (Java_Object_Access (inputObjectArray (index))));
                for index2 in 0 .. (list.size) - 1 loop
                    gameActionInputIdAsString := smallIntegerSingletonFactory.getAt (gameActionInput.getId).toString;
                    outputStream.writeUTF (gameActionInputIdAsString);
                    outputStream.writeUTF (commonSeps.EQUALS);
                    input := Input_Access (list.objectArray (index2));
                    inputIdAsString := smallIntegerSingletonFactory.getAt (input.getId).toString;
                    outputStream.writeUTF (inputIdAsString);
                end loop;
            end loop;
            savedGameBytes := byteArrayOutputStream.toByteArray;
            recordStore.addRecord (savedGameBytes, 0, savedGameBytes'Length);
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
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, This'Unchecked_Access, This.commonStrings.SAVE);
                recordStore.closeRecordStore;
            end if;
        end;
   end save;

end org.allbinary.game.input.InputPersistance_Package;


