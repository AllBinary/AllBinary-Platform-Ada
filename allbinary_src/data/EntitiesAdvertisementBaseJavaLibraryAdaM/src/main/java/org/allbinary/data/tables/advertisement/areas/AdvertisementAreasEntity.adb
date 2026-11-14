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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.advertisement.area.AdvertisementArea_Package; use org.allbinary.business.advertisement.area.AdvertisementArea_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaData_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package; use org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package;
with org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementArea_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementArea_Package;
   package AdvertisementAreaData_Package renames Standard.org.allbinary.business.advertisement.area.AdvertisementAreaData_Package;
   package AdvertisementCampaignData_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
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
   subtype AdvertisementAreaInterface_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access_Array is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
   subtype AdvertisementAreaInterface_Access_Array_Access_Array_Access is org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References.AdvertisementAreaInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AdvertisementAreaInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.advertisement.area.AdvertisementAreaInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out AdvertisementAreasEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("advertisements");
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementAreasEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        AdvertisementAreasEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return AdvertisementAreasEntity_Access is
      This : constant AdvertisementAreasEntity_Access := new AdvertisementAreasEntity;
   begin
      AdvertisementAreasEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AdvertisementAreasEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean_Package.AbSqlBean (This).deleteWhere (EntryData_Package.getInstance.ID, value);
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, AdvertisementAreasEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, AdvertisementAreasEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   --  throws Exception
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String) return BasicArrayList_Access is
      keysAndValues : HashMap_Access;
      hashMapVector : BasicArrayList_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      index : Integer;
   begin
        keysAndValues := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
        hashMapVector := AbSqlBean_Package.AbSqlBean (This).getRows (keysAndValues);
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        size := hashMapVector.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (hashMapVector.get (index));
            if (hashMap) /= (null) then
                vector.add (AdvertisementAreaInterface_Access (AdvertisementArea_Package.Create (hashMap)));
            end if;
        end loop;
        return vector;
   end get;

   --  throws Exception
   function get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) return AdvertisementAreaInterface_Access is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        keysAndValues := HashMap_Access (StdUtil_Package.getInstance.createHashMap);
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
        keysAndValues.put (AdvertisementAreaData_Package.getInstance.NAME, Java_Box (advertisementAreaName));
        hashMap := AbSqlBean_Package.AbSqlBean (This).getRow (keysAndValues);
        if (hashMap) /= (null) then
            return AdvertisementAreaInterface_Access (AdvertisementArea_Package.Create (hashMap));
        else
            return null;
        end if;
   end get;

   function createTableStatement (This : in out AdvertisementAreasEntity) return Unbounded_String is
      advertisementAreaData : AdvertisementAreaData_Access;
      stringBuffer : StringMaker_Access;
   begin
        advertisementAreaData := AdvertisementAreaData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (AdvertisementAreasEntity'Class (This).getTableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (advertisementAreaData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementAreaData.DESCRIPTION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementAreaData.CONSTRAINTS).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (AdvertisementCampaignData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (advertisementAreaData.NAME).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AdvertisementAreasEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean_Package.AbSqlBean (This).createTable (AdvertisementAreasEntity'Class (This).createTableStatement);
        return returnStr;
   end createTable;

   procedure update (This : in out AdvertisementAreasEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean_Package.AbSqlBean (This).updateWhere (AdvertisementAreaData_Package.getInstance.NAME, Java_Unbox (updatedValues.get (AdvertisementAreaData_Package.getInstance.NAME)), updatedValues);
   end update;

   function dropTable (This : in out AdvertisementAreasEntity) return Unbounded_String is
   begin
        return AbSqlBean_Package.AbSqlBean (This).dropTable;
   end dropTable;

   procedure insert (This : in out AdvertisementAreasEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        AbSqlBean_Package.AbSqlBean (This).insert (values);
   end insert;

   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := AdvertisementAreasEntity'Class (This).get (storeName => storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

   procedure get (This : in out AdvertisementAreasEntity; storeName : Unbounded_String; advertisementAreaName : Unbounded_String) is
      Java_Result : constant AdvertisementAreaInterface_Access := AdvertisementAreasEntity'Class (This).get (storeName => storeName, advertisementAreaName => advertisementAreaName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tables.advertisement.areas.AdvertisementAreasEntity_Package;


