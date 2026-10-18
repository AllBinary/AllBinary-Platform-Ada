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


with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
with org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package; use org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.UserDbInitInfo_Package; use org.allbinary.business.init.db.UserDbInitInfo_Package;
with org.allbinary.business.time.TimeData_Package; use org.allbinary.business.time.TimeData_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package AdvertisementCampaign_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaign_Package;
   package AdvertisementCampaignData_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaignData_Package;
   package AdvertisementCampaigns_Package renames Standard.org.allbinary.business.advertisement.campaign.AdvertisementCampaigns_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package UserDbInitInfo_Package renames Standard.org.allbinary.business.init.db.UserDbInitInfo_Package;
   package TimeData_Package renames Standard.org.allbinary.business.time.TimeData_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out AdvertisementCampaignInternalEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("adCampaignInternal");
   end Initialize_Fields;


   procedure Initialize (This : in out AdvertisementCampaignInternalEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        AdvertisementCampaignInternalEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return AdvertisementCampaignInternalEntity_Access is
      This : constant AdvertisementCampaignInternalEntity_Access := new AdvertisementCampaignInternalEntity;
   begin
      AdvertisementCampaignInternalEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AdvertisementCampaignInternalEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (StoreFrontData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, AdvertisementCampaignInternalEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, AdvertisementCampaignInternalEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String) return AdvertisementCampaignsInterface_Access is
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
            if (hashMap) /= (null) then
                vector.add (AdvertisementCampaignInterface_Access (AdvertisementCampaign_Package.Create (hashMap)));
            end if;
        end loop;
        return AdvertisementCampaignsInterface_Access (AdvertisementCampaigns_Package.Create (vector));
   end getCampaignsInStore;

   function get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String) return AdvertisementCampaignInterface_Access is
      keysAndValues : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, Java_Box (storeName));
        keysAndValues.put (AdvertisementCampaignData_Package.getInstance.NAME, Java_Box (name));
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        if (hashMap) /= (null) then
            return AdvertisementCampaignInterface_Access (AdvertisementCampaign_Package.Create (hashMap));
        else
            return null;
        end if;
   end get;

   procedure update (This : in out AdvertisementCampaignInternalEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (EntryData_Package.getInstance.getInstance.ID, Java_Unbox (updatedValues.get (EntryData_Package.getInstance.getInstance.ID)), updatedValues);
   end update;

   function createTableStatement (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String is
      entryData : EntryData_Access;
      advertisementCampaignData : AdvertisementCampaignData_Access;
      stringBuffer : StringMaker_Access;
   begin
        entryData := EntryData_Package.getInstance.getInstance;
        advertisementCampaignData := AdvertisementCampaignData_Package.getInstance;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (AdvertisementCampaignInternalEntity'Class (This).getTableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (entryData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.DESCRIPTION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.CONFIG).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (TimeData_Package.getInstance.START).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (TimeData_Package.getInstance.END_Id).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (entryData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (AdvertisementCampaignInternalEntity'Class (This).createTableStatement);
        return returnStr;
   end createTable;

   function dropTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure getCampaignsInStore (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String) is
      Java_Result : constant AdvertisementCampaignsInterface_Access := AdvertisementCampaignInternalEntity'Class (This).getCampaignsInStore (storeName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCampaignsInStore;

   procedure get (This : in out AdvertisementCampaignInternalEntity; storeName : Unbounded_String; name : Unbounded_String) is
      Java_Result : constant AdvertisementCampaignInterface_Access := AdvertisementCampaignInternalEntity'Class (This).get (storeName, name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end get;

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package;


