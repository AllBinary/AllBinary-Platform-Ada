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


package body org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package is

   procedure Initialize_Fields (This : in out DownloadItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("downloaditems");
   end Initialize_Fields;


   procedure Initialize (This : in out DownloadItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        DownloadItemsEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return DownloadItemsEntity_Access is
      This : constant DownloadItemsEntity_Access := new DownloadItemsEntity;
   begin
      DownloadItemsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out DownloadItemsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, DownloadItemsEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, DownloadItemsEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out DownloadItemsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (DownloadItemData_Package.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, DownloadItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, DownloadItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   procedure update (This : in out DownloadItemsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (DownloadItemData_Package.ID, Java_Unbox (updatedValues.get (DownloadItemData_Package.ID)), updatedValues);
   end update;

   function getForItem (This : in out DownloadItemsEntity; id : Unbounded_String) return BasicArrayList_Access is
      returnVector : BasicArrayList_Access;
      keysAndValues : HashMap_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      index : Integer;
   begin
        returnVector := BasicArrayListD_Package.Create;
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (This.basicItemData.ID, Java_Box (id));
        vector := AbSqlBean (This).getRows (keysAndValues);
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (vector.get (index));
            returnVector.add (DownloadableItem_Package.Create (hashMap));
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Found: ") & Java_Image (size), DownloadItemsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getForItem"));
        end if;
        return returnVector;
   end getForItem;

   function getForItem (This : in out DownloadItemsEntity; id : Unbounded_String; downloadItemId : Unbounded_String) return BasicArrayList_Access is
      returnVector : BasicArrayList_Access;
      keysAndValues : HashMap_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      hashMap : HashMap_Access;
      index : Integer;
   begin
        returnVector := BasicArrayListD_Package.Create;
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (This.basicItemData.ID, Java_Box (id));
        keysAndValues.put (DownloadItemData_Package.ID, Java_Box (downloadItemId));
        vector := AbSqlBean (This).getRows (keysAndValues);
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            hashMap := HashMap_Access (vector.get (index));
            returnVector.add (DownloadableItem_Package.Create (hashMap));
        end loop;
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Found: ") & Java_Image (size), DownloadItemsEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getForItem"));
        end if;
        return returnVector;
   end getForItem;

   function createTableStatement (This : in out DownloadItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (DownloadItemData_Package.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.ENABLE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.SPECIAL_NAME).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.VERSION).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.CHANGES).append (This.sqlTypeStrings.BLOB_NOT_NULL).append (DownloadItemData_Package.SYSTEM).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.PLATFORM).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.LICENSE_FILE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (DownloadItemData_Package.FILE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (DownloadItemData_Package.SIZE).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (DownloadItemData_Package.VALID_TIME).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (DownloadItemData_Package.RETRIES).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (DownloadItemData_Package.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out DownloadItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (DownloadItemsEntity'Class (This).createTableStatement);
   end createTable;

   function dropTable (This : in out DownloadItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure getForItem (This : in out DownloadItemsEntity; id : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := DownloadItemsEntity'Class (This).getForItem (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForItem;

   procedure getForItem (This : in out DownloadItemsEntity; id : Unbounded_String; downloadItemId : Unbounded_String) is
      Java_Result : constant BasicArrayList_Access := DownloadItemsEntity'Class (This).getForItem (id, downloadItemId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForItem;

end org.allbinary.data.tables.user.commerce.inventory.item.downloads.DownloadItemsEntity_Package;


