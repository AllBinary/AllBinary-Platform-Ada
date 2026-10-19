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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package; use org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package BasicGroupItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.group.BasicGroupItemData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out BasicGroupItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("basicgroupeditems");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGroupItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        BasicGroupItemsEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return BasicGroupItemsEntity_Access is
      This : constant BasicGroupItemsEntity_Access := new BasicGroupItemsEntity;
   begin
      BasicGroupItemsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out BasicGroupItemsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, BasicGroupItemsEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, BasicGroupItemsEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out BasicGroupItemsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.basicItemData.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, BasicGroupItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, BasicGroupItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function createTableStatement (This : in out BasicGroupItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicGroupItemData_Package.ITEM_ONE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_TWO).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_THREE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_FOUR).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_FIVE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_SIX).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_SEVEN).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_EIGHT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_NINE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_TEN).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.basicItemData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out BasicGroupItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (BasicGroupItemsEntity'Class (This).createTableStatement);
   end createTable;

   procedure update (This : in out BasicGroupItemsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Java_Unbox (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out BasicGroupItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package;


