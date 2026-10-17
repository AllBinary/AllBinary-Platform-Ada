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
      hashtable : ABHashtable_Access;
      stringBuffer : StringMaker_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
      id : Integer;
   begin
        recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
        recordEnum := recordStore.enumerateRecords (NullRecordFilter_Package.NULL_RECORD_FILTER, NullRecordComparator_Package.NULL_RECORD_COMPARATOR, True);
        hashtable := null;
        stringBuffer := StringMaker_Package.Create;
        smallIntegerSingletonFactory := SmallIntegerSingletonFactory_Package.getInstance;
        id := 0;
        while recordEnum.hasNextElement loop
            id := recordEnum.nextRecordId;
            stringBuffer.delete (0, stringBuffer.length);
            This.logUtil.putF (stringBuffer.append (This.persistanceStrings.LOADING_ID).appendint (id).toString, InputPersistance_Access'(This'Unchecked_Access), This.persistanceStrings.LOAD_ALL);
            hashtable := StdUtil_Package.getInstance.createHashtable;
            This.valueList.add (hashtable);
            This.idList.add (smallIntegerSingletonFactory.getAt (id));
        end loop;
        recordStore.closeRecordStore;
   end loadAll;

   --  throws Exception
   procedure save (This : in out InputPersistance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      recordStore : RecordStore_Access;
      gameActionInput : Input_Access;
      list : BasicArrayList_Access;
      input : Input_Access;
      inputObjectArray : Java_Object_Access_Array_Access;
      size : Integer;
      index2 : Integer;
      index : Integer;
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.persistanceStrings.NOT_SAVING).append (StringUtil_Package.getInstance.toString (hashtable)).toString, InputPersistance_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
        recordStore := RecordStore_Package.openRecordStore (This.getRecordId (abeClientInformation), True);
        gameActionInput := null;
        list := null;
        input := null;
        inputObjectArray := This.hashtableUtil.getKeysAsArray (hashtable);
        size := inputObjectArray'Length;
        for index in 0 .. (size) - 1 loop
            gameActionInput := Input_Access (inputObjectArray (index));
            list := BasicArrayList_Access (hashtable.get (inputObjectArray (index)));
            for index2 in 0 .. (list.size) - 1 loop
                input := Input_Access (list.get (index2));
            end loop;
        end loop;
        recordStore.closeRecordStore;
   end save;

end org.allbinary.game.input.InputPersistance_Package;


