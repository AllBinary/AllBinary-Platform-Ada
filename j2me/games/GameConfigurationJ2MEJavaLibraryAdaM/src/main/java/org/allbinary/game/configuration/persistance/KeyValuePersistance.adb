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


package body org.allbinary.game.configuration.persistance.KeyValuePersistance_Package is

   procedure Initialize_Fields (This : in out KeyValuePersistance'Class) is
   begin
      null;
      This.tsUtil := TsUtil_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyValuePersistance'Class; recordId : Unbounded_String) is
   begin
        BasicPersitance_Package.Initialize (This, recordId);
        Initialize_Fields (This);
   end Initialize;

   function Create (recordId : Unbounded_String) return KeyValuePersistance_Access is
      This : constant KeyValuePersistance_Access := new KeyValuePersistance;
   begin
      Initialize (This.all, recordId);
      return This;
   end Create;

   --  throws Exception
   procedure loadAll (This : in out KeyValuePersistance; abeClientInformation : AbeClientInformationInterface_Access) is
   begin
        This.loadAllSize (abeClientInformation, 1);
   end loadAll;

   --  throws Exception
   procedure loadAllSize (This : in out KeyValuePersistance; abeClientInformation : AbeClientInformationInterface_Access; size : Integer) is
      recordStore : RecordStore_Access;
      recordEnum : RecordEnumeration_Access;
      hashtable : ABHashtable_Access;
      name : Unbounded_String;
      value : Unbounded_String;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      stringBuffer : StringMaker_Access;
      recordAsBytes : Short_Short_Integer_Array_Access;
      byteArrayInputStream : ByteArrayInputStream_Access;
      inputStream : DataInputStream_Access;
      id : Integer;
      index : Integer;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
            hashtable := null;
            name := Null_Unbounded_String;
            value := Null_Unbounded_String;
            smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
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
                    hashtable := ABHashtable_Package.Create;
                    for index in 0 .. (size) - 1 loop
                        name := inputStream.readUTF;
                        inputStream.readUTF;
                        value := inputStream.readUTF;
                        hashtable.put (name, value);
                    end loop;
                    This.valueList.add (hashtable);
                    This.idList.add (smallIntegerSingletonFactory.getAt (id));
                end if;
            end loop;
        exception
            when e : others =>
            Java_Throw (e);
        end;
        --  finally
        begin
            if (recordStore) /= (null) then
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, This'Unchecked_Access, This.persistanceStrings.LOAD_ALL);
                recordStore.closeRecordStore;
            end if;
        end;
   end loadAllSize;

   --  throws Exception
   procedure save (This : in out KeyValuePersistance; abeClientInformation : AbeClientInformationInterface_Access; hashtable : ABHashtable_Access) is
      recordStore : RecordStore_Access;
      byteArrayOutputStream : ByteArrayOutputStream_Access;
      outputStream : DataOutputStream_Access;
      value : Unbounded_String;
      commonSeps : CommonSeps_Access;
      objectArray : Java_Object_Access_Array_Access;
      anyType : Java_Object_Access;
      size : Integer;
      index : Integer;
      tsUtil : TsUtil_Access;
      savedGameBytes : Short_Short_Integer_Array_Access;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (This.persistanceStrings.SAVING).append (StringUtil_Package.getInstance.toString (hashtable)).toString, This'Unchecked_Access, This.commonStrings.SAVE);
            recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
            byteArrayOutputStream := ByteArrayOutputStream_Package.Create;
            outputStream := DataOutputStream_Package.Create (byteArrayOutputStream);
            value := Null_Unbounded_String;
            commonSeps := CommonSeps_Package.getInstance;
            objectArray := HashtableUtil_Package.getInstance.getKeysAsArray (hashtable);
            anyType := null;
            size := objectArray'Length;
            for index in 0 .. (size) - 1 loop
                outputStream.writeUTF (Unbounded_String (objectArray (index)));
                outputStream.writeUTF (commonSeps.EQUALS);
                anyType := Java_Object_Access (objectArray (index));
                value := Unbounded_String (hashtable.get (anyType));
                outputStream.writeUTF (value);
            end loop;
            tsUtil := TsUtil_Package.getInstance;
            savedGameBytes := tsUtil.getByteArray (byteArrayOutputStream.toString);
            recordStore.addRecord (savedGameBytes, 0, savedGameBytes'Length);
        exception
            when e : others =>
            Java_Throw (e);
        end;
        --  finally
        begin
            if (recordStore) /= (null) then
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, This'Unchecked_Access, This.commonStrings.SAVE);
                recordStore.closeRecordStore;
            end if;
        end;
   end save;

   function get (This : in out KeyValuePersistance; index : Integer) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
   begin
        hashtable := ABHashtable_Access (This.valueList.objectArray (index));
        return hashtable;
   end get;

   procedure get (This : in out KeyValuePersistance; index : Integer) is
      Java_Result : constant ABHashtable_Access := KeyValuePersistance'Class (This).get (index);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;


