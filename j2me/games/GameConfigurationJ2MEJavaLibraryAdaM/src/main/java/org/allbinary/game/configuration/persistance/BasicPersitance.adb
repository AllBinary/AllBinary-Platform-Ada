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


with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
with org.allbinary.persistance.PlatformRecordIdUtil_Package; use org.allbinary.persistance.PlatformRecordIdUtil_Package;
with org.allbinary.persistance.PlatformRecordIdUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package; use org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package; use org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.configuration.persistance.NullRecordStore_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.configuration.persistance.PersistanceStrings_Package;
with javax.microedition.rms.RecordComparator_Package;
with javax.microedition.rms.RecordEnumeration_Package;
with javax.microedition.rms.RecordFilter_Package;
with javax.microedition.rms.RecordListener_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.configuration.persistance.BasicPersitance_Package is

   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
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
   subtype PlatformRecordIdUtil_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access_Array is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype PlatformRecordIdUtil_Access_Array_Access_Array_Access is org.allbinary.persistance.PlatformRecordIdUtil_Package_References.PlatformRecordIdUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlatformRecordIdUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.persistance.PlatformRecordIdUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype PersistanceStrings_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access;
   function "=" (Left, Right : PersistanceStrings_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array;
   function "=" (Left, Right : PersistanceStrings_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array_Access_Array is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   subtype PersistanceStrings_Access_Array_Access_Array_Access is org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References.PersistanceStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PersistanceStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.persistance.PersistanceStrings_Package_References."=";
   procedure Initialize_Fields (This : in out BasicPersitance'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.persistanceStrings := PersistanceStrings_Package.getInstance;
      This.platformRecordIdUtil := PlatformRecordIdUtil_Package.getInstance;
      
      This.valueList := BasicArrayList_Access (BasicArrayListD_Package.Create);
      This.idList := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out BasicPersitance'Class; recordId : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.recordId := recordId;
   end Initialize;

   function Create (recordId : Unbounded_String) return BasicPersitance_Access is
      This : constant BasicPersitance_Access := new BasicPersitance;
   begin
      BasicPersitance_Package.Initialize (This.all, recordId);
      return This;
   end Create;

   --  throws Exception
   procedure deleteRecoreStore (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        RecordStore_Package.deleteRecordStore (BasicPersitance'Class (This).getRecordId (abeClientInformation));
   end deleteRecoreStore;

   --  throws Exception
   procedure deleteAll (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      size : Integer;
      integer_Id : Integer;
      index : Integer;
   begin
        size := This.idList.size;
        for index in 0 .. (size) - 1 loop
            integer_Id := Java_Unbox_Integer (This.idList.objectArray (index));
            BasicPersitance'Class (This).delete (abeClientInformation, Integer (integer_Id));
        end loop;
        BasicPersitance'Class (This).clear;
   end deleteAll;

   --  throws Exception
   procedure delete (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; deleteId : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      recordStore : RecordStore_Access;
   begin
        recordStore := RecordStore_Access (NullRecordStore_Package.NULL_RECORD_STORE);
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (This.persistanceStrings.DELETING_WITH_ID).appendint (deleteId).toString, BasicPersitance_Access'(This'Unchecked_Access), This.commonStrings.delete);
            recordStore := RecordStore_Package.openRecordStore (BasicPersitance'Class (This).getRecordId (abeClientInformation), True);
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
                PreLogUtil_Package.put (This.persistanceStrings.CLOSING_RECORDSTORE, BasicPersitance_Access'(This'Unchecked_Access), This.commonStrings.delete);
                recordStore.closeRecordStore;
            end if;
        end;
   end delete;

   function getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) return Unbounded_String is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        return This.platformRecordIdUtil.getRecordId (abeClientInformation, This.recordId);
   end getRecordId;

   function getList (This : in out BasicPersitance) return BasicArrayList_Access is
   begin
        return This.valueList;
   end getList;

   function getIds (This : in out BasicPersitance) return BasicArrayList_Access is
   begin
        return This.idList;
   end getIds;

   procedure clear (This : in out BasicPersitance) is
   begin
        This.valueList.clear;
        This.idList.clear;
   end clear;

   procedure getRecordId (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      Java_Result : constant Unbounded_String := BasicPersitance'Class (This).getRecordId (abeClientInformation_Param => abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

end org.allbinary.game.configuration.persistance.BasicPersitance_Package;


