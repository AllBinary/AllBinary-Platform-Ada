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


package body org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package is

   procedure Initialize_Fields (This : in out InventoryEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("basicinventory");
   end Initialize_Fields;


   procedure Initialize (This : in out InventoryEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
   end Initialize;

   function Create return InventoryEntity_Access is
      This : constant InventoryEntity_Access := new InventoryEntity;
   begin
      InventoryEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out InventoryEntity; values_Param : access BasicArrayList'Class) is
      values : BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, InventoryEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, InventoryEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out InventoryEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.basicItemData.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, InventoryEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, InventoryEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   --  throws Exception
   function getItems (This : in out InventoryEntity; storeFrontInterface_Param : access StoreFrontInterface'Class) return BasicArrayList_Access is
      storeFrontInterface : StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
      itemVector : BasicArrayList_Access;
      keysAndValues : HashMap_Access;
      itemHashMapVector : BasicArrayList_Access;
      size : Integer;
      itemHashMap : HashMap_Access;
      category : Unbounded_String;
      i : Integer;
   begin
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
            This.logUtil.putF (To_Unbounded_String ("Getting Items For: ") & storeFrontInterface.getName, InventoryEntity_Access'(This'Unchecked_Access), To_Unbounded_String ("getItems"));
        end if;
        itemVector := BasicArrayListD_Package.Create;
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        itemHashMapVector := AbSqlBean (This).getRows (keysAndValues);
        size := itemHashMapVector.size;
        for i in 0 .. (size) - 1 loop
            itemHashMap := HashMap_Access (itemHashMapVector.get (i));
            if (itemHashMap) /= (null) then
                category := Unbounded_String (itemHashMap.get (This.basicItemData.CATEGORY));
                if (not (StringValidationUtil_Package.getInstance.isEmpty (category))) and then (category.startsWith (storeFrontInterface.getCategoryPath)) then
                    itemVector.add (BasicItem_Package.Create (itemHashMap));
                end if;
            end if;
        end loop;
        return itemVector;
   end getItems;

   --  throws MoneyException
   function getItem (This : in out InventoryEntity; id : Unbounded_String) return ItemInterface_Access is
      keysAndValues : HashMap_Access;
      itemHashMap : HashMap_Access;
   begin
        keysAndValues := StdUtil_Package.getInstance.createHashMap;
        keysAndValues.put (This.basicItemData.ID, id);
        itemHashMap := AbSqlBean (This).getRow (keysAndValues);
        if (itemHashMap) /= (null) then
            return BasicItem_Package.Create (itemHashMap);
        else
            return null;
        end if;
   end getItem;

   function getWeight (This : in out InventoryEntity; id : Unbounded_String) return Unbounded_String is
   begin
        return AbSqlBean (This).getField (This.basicItemData.ID, id, This.basicItemData.WEIGHT);
   end getWeight;

   function createTableStatement (This : in out InventoryEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (This.basicItemData.ID);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.NUMBER);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.INBASKETS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.WEIGHT);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(20) NOT NULL,"));
        stringBuffer.append (EntryData_Package.getInstance.ENABLE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.NEWORUSED);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.SUMMARY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.DISTRIBUTOR);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.IDUSEDBYDISTRIBUTOR);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRODUCEDBY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRODUCTIONDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.STARTPRODUCTIONDATE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.DESCRIPTION);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (This.basicItemData.KEYWORDS);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.CATEGORY);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.TYPE_Id);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.SMALLIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.MEDIUMIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.basicItemData.LARGEIMAGE);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.LASTMODIFIED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (EntryData_Package.getInstance.TIMECREATED);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.PRICE);
        stringBuffer.append (To_Unbounded_String (" VARCHAR(20) NOT NULL,"));
        stringBuffer.append (This.basicItemData.COMMENT);
        stringBuffer.append (This.sqlTypeStrings.BLOB_NOT_NULL);
        stringBuffer.append (This.basicItemData.CUSTOMS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.DOWNLOADS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.GROUPS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.OPTIONS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.PERMISSIONS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.basicItemData.SPECIALS);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (This.basicItemData.ID);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out InventoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out InventoryEntity; updatedValues_Param : access HashMap'Class) is
      updatedValues : HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Unbounded_String (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out InventoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure getItems (This : in out InventoryEntity; storeFrontInterface_Param : access StoreFrontInterface'Class) is
      Java_Result : constant BasicArrayList_Access := InventoryEntity'Class (This).getItems (storeFrontInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItems;

   procedure getItem (This : in out InventoryEntity; id : Unbounded_String) is
      Java_Result : constant ItemInterface_Access := InventoryEntity'Class (This).getItem (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItem;

   procedure getWeight (This : in out InventoryEntity; id : Unbounded_String) is
      Java_Result : constant Unbounded_String := InventoryEntity'Class (This).getWeight (id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWeight;

end org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;


