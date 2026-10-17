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


package body org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package is

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
        This.setTableName (This.tableName);
   end Initialize;

   function Create return BasicGroupItemsEntity_Access is
      This : constant BasicGroupItemsEntity_Access := new BasicGroupItemsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out BasicGroupItemsEntity; values : BasicArrayList_Access) is
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out BasicGroupItemsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.basicItemData.ID, value);
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

   function createTableStatement (This : in out BasicGroupItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicGroupItemData_Package.ITEM_ONE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_TWO).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_THREE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_FOUR).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_FIVE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_SIX).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_SEVEN).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_EIGHT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_NINE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicGroupItemData_Package.ITEM_TEN).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.basicItemData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out BasicGroupItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out BasicGroupItemsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Unbounded_String (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out BasicGroupItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure createTableStatement (This : in out BasicGroupItemsEntity) is
      Java_Result : constant Unbounded_String := BasicGroupItemsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out BasicGroupItemsEntity) is
      Java_Result : constant Unbounded_String := BasicGroupItemsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out BasicGroupItemsEntity) is
      Java_Result : constant Unbounded_String := BasicGroupItemsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.groups.BasicGroupItemsEntity_Package;


