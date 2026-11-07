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


with javax.microedition.rms.RecordEnumeration_Package; use javax.microedition.rms.RecordEnumeration_Package;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.game.configuration.persistance.BasicPersitance_Package; use org.allbinary.game.configuration.persistance.BasicPersitance_Package;
with org.allbinary.game.configuration.persistance.NullRecordComparator_Package; use org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
with org.allbinary.game.configuration.persistance.NullRecordFilter_Package; use org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.HashtableUtil_Package; use org.allbinary.util.HashtableUtil_Package;
with org.allbinary.util.HashtableUtil_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with javax.microedition.rms.RecordComparator_Package;
with javax.microedition.rms.RecordFilter_Package;
with javax.microedition.rms.RecordListener_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.input.InputPersistance_Package is

   package RecordEnumeration_Package renames Standard.javax.microedition.rms.RecordEnumeration_Package;
   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package NullRecordComparator_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordComparator_Package;
   package NullRecordFilter_Package renames Standard.org.allbinary.game.configuration.persistance.NullRecordFilter_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeClientInformationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References."=";
   subtype HashtableUtil_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access;
   function "=" (Left, Right : HashtableUtil_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access_Array is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype HashtableUtil_Access_Array_Access_Array_Access is org.allbinary.util.HashtableUtil_Package_References.HashtableUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HashtableUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.HashtableUtil_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
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
        recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
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
            This.valueList.add (Java_Object_Access (hashtable));
            This.idList.add (Java_Box (smallIntegerSingletonFactory.getAt (id)));
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
        recordStore := RecordStore_Package.openRecordStore (InputPersistance'Class (This).getRecordId (abeClientInformation), True);
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


