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


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.DynamicObjectData_Package; use org.allbinary.business.DynamicObjectData_Package;
with org.allbinary.business.advertisement.AdvertisementData_Package; use org.allbinary.business.advertisement.AdvertisementData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DynamicObjectData_Package renames Standard.org.allbinary.business.DynamicObjectData_Package;
   package AdvertisementData_Package renames Standard.org.allbinary.business.advertisement.AdvertisementData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out AdvertisementsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("advertisements");
      This.U_INDEX := To_Unbounded_String ("_index");
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        AdvertisementsEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return AdvertisementsEntity_Access is
      This : constant AdvertisementsEntity_Access := new AdvertisementsEntity;
   begin
      AdvertisementsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AdvertisementsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (EntryData_Package.getInstance.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, AdvertisementsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, AdvertisementsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      keysAndValues : HashMap_Access;
      hashMapVector : BasicArrayList_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      index : Integer;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
        hashMapVector := AbSqlBean (This).getRows (keysAndValues);
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := hashMapVector.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (hashMapVector.get (index));
        end loop;
        return vector;
   end get;

   function get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) return AdvertisementInterface_Access is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
        keysAndValues.put (AdvertisementData_Package.getInstance.NAME, Java_Box (advertismentName));
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        return null;
   end get;

   function createTableStatement (This : in out AdvertisementsEntity) return Unbounded_String is
      advertisementData : AdvertisementData_Access;
      stringBuffer : StringMaker_Access;
   begin
        advertisementData := AdvertisementData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (AdvertisementsEntity'Class (This).getTableName).append (This.sqlStrings.START).append (advertisementData.NAME).append (This.U_INDEX).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (advertisementData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementData.DESCRIPTION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (DynamicObjectData_Package.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (advertisementData.NAME).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AdvertisementsEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (AdvertisementsEntity'Class (This).createTableStatement);
        return returnStr;
   end createTable;

   procedure update (This : in out AdvertisementsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (EntryData_Package.getInstance.ID, Java_Unbox (updatedValues.get (EntryData_Package.getInstance.ID)), updatedValues);
   end update;

   function dropTable (This : in out AdvertisementsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AdvertisementsEntity'Class (This).get (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out AdvertisementsEntity; storeName : Unbounded_String; advertismentName : Unbounded_String) is
      Java_Result : constant AdvertisementInterface_Access := AdvertisementsEntity'Class (This).get (storeName => storeName, advertismentName => advertismentName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tables.advertisement.AdvertisementsEntity_Package;


