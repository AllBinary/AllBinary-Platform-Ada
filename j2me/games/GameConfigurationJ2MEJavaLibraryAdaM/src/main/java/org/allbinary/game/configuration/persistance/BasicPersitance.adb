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


package body org.allbinary.game.configuration.persistance.BasicPersitance_Package is

   procedure Initialize_Fields (This : in out BasicPersitance'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.persistanceStrings := PersistanceStrings_Package.getInstance;
      This.platformRecordIdUtil := PlatformRecordIdUtil_Package.getInstance;
      
      This.valueList := BasicArrayListD_Package.Create;
      This.idList := BasicArrayListD_Package.Create;
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
            integer_Id := Integer (This.idList.objectArray (index));
            BasicPersitance'Class (This).delete (abeClientInformation, integer_Id.intValue);
        end loop;
        BasicPersitance'Class (This).clear;
   end deleteAll;

   --  throws Exception
   procedure delete (This : in out BasicPersitance; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; deleteId : Integer) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      recordStore : RecordStore_Access;
   begin
        recordStore := NullRecordStore_Package.NULL_RECORD_STORE;
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
      Java_Result : constant Unbounded_String := BasicPersitance'Class (This).getRecordId (abeClientInformation_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecordId;

end org.allbinary.game.configuration.persistance.BasicPersitance_Package;


