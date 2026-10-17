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


package body org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package is

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
        This.setTableName (This.tableName);
   end Initialize;

   function Create return AdvertisementCampaignInternalEntity_Access is
      This : constant AdvertisementCampaignInternalEntity_Access := new AdvertisementCampaignInternalEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure delete (This : in out AdvertisementCampaignInternalEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (StoreFrontData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.delete, e);
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
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, storeName);
        hashMapVector := AbSqlBean (This).getRows (keysAndValues);
        vector := BasicArrayListD_Package.Create;
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
        keysAndValues.put (StoreFrontData_Package.getInstance.NAME, storeName);
        keysAndValues.put (AdvertisementCampaignData_Package.getInstance.NAME, name);
        hashMap := AbSqlBean (This).getRow (keysAndValues);
        if (hashMap) /= (null) then
            return AdvertisementCampaignInterface_Access (AdvertisementCampaign_Package.Create (hashMap));
        else
            return null;
        end if;
   end get;

   procedure update (This : in out AdvertisementCampaignInternalEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (EntryData_Package.getInstance.getInstance.ID, Unbounded_String (updatedValues.get (EntryData_Package.getInstance.getInstance.ID)), updatedValues);
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
        stringBuffer.append (This.getTableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (entryData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.DESCRIPTION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (advertisementCampaignData.CONFIG).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (TimeData_Package.getInstance.START).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (TimeData_Package.getInstance.END_Id).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (entryData.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (entryData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out AdvertisementCampaignInternalEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).createTable (This.createTableStatement);
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

   procedure createTableStatement (This : in out AdvertisementCampaignInternalEntity) is
      Java_Result : constant Unbounded_String := AdvertisementCampaignInternalEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out AdvertisementCampaignInternalEntity) is
      Java_Result : constant Unbounded_String := AdvertisementCampaignInternalEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out AdvertisementCampaignInternalEntity) is
      Java_Result : constant Unbounded_String := AdvertisementCampaignInternalEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntity_Package;


