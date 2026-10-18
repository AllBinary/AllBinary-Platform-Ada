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


with java.io.ByteArrayOutputStream_Package; use java.io.ByteArrayOutputStream_Package;
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.GameKeyMappingFactory_Package; use org.allbinary.game.input.GameKeyMappingFactory_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;

package body org.allbinary.game.input.InputPersistance_Package is

   package ByteArrayOutputStream_Package renames Standard.java.io.ByteArrayOutputStream_Package;
   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package DataOutputStream_Package renames Standard.java.io.DataOutputStream_Package;
   package RecordEnumeration_Package renames Standard.javax.microedition.rms.RecordEnumeration_Package;
   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package NullRecordComparator_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package NullRecordStore_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordStore_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
      InputPersistance_Package.Initialize (This.all, name);
      return This;
   end Create;

   --  throws Exception
   procedure loadAll (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
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
            recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
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
                This.logUtil.putF (stringBuffer.append (This.persistanceStrings.LOADING_ID).appendint (id).toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
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
                                PreLogUtil_Package.put (stringBuffer.toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                            end if;
                            if (gameActionInput) = (null) then
                                stringBuffer.delete (0, stringBuffer.length);
                                stringBuffer.append (This.persistanceStrings.ERROR_LOADING);
                                stringBuffer.appendlong (gameActionInputId);
                                stringBuffer.append (This.persistanceStrings.ID);
                                stringBuffer.appendlong (inputId);
                                PreLogUtil_Package.put (stringBuffer.toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                            end if;
                        else
                            null;
                        end if;
                        hashtable.put (input, gameActionInput);
                    end loop;
                    This.valueList.add (Java_Object_Access (hashtable));
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
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore;
            end if;
        end;
   end loadAll;

   --  throws Exception
   procedure save (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
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
            PreLogUtil_Package.put (stringBuffer.append (This.persistanceStrings.SAVING).append (StringUtil_Package.getInstance.toString (hashtable)).toString, InputPersistance_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
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
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, InputPersistance_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
                recordStore.closeRecordStore;
            end if;
        end;
   end save;

end org.allbinary.game.input.InputPersistance_Package;


