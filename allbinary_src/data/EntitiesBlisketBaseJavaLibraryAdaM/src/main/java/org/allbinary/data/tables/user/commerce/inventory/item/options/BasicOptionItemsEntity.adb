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


package body org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package is

   procedure Initialize_Fields (This : in out BasicOptionItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("basicoptionitems");
   end Initialize_Fields;


   procedure Initialize (This : in out BasicOptionItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
   end Initialize;

   function Create return BasicOptionItemsEntity_Access is
      This : constant BasicOptionItemsEntity_Access := new BasicOptionItemsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out BasicOptionItemsEntity; values : BasicArrayList_Access) is
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, INSERT);
            end if;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, INSERT, e);
            end if;
        end;
   end insert;

   procedure delete (This : in out BasicOptionItemsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.basicItemData.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, This'Unchecked_Access, This.commonStrings.delete);
            end if;
        exception
            when e : others =>
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, This'Unchecked_Access, This.commonStrings.delete, e);
            end if;
        end;
   end delete;

   function createTableStatement (This : in out BasicOptionItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (BasicOptionItemData_Package.OPTION_ONE_TITLE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.DEFAULT_OPTION_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.DEFAULT_OPTION_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (BasicOptionItemData_Package.OPTION_ONE_ONE_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_ONE_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_TWO_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_TWO_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_THREE_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_THREE_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_FOUR_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_FOUR_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_FIVE_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_FIVE_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_SIX_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_SIX_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_SEVEN_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_SEVEN_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_EIGHT_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_EIGHT_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_NINE_ITEM).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (BasicOptionItemData_Package.OPTION_ONE_NINE_VALUE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.basicItemData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out BasicOptionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out BasicOptionItemsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Unbounded_String (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out BasicOptionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure createTableStatement (This : in out BasicOptionItemsEntity) is
      Java_Result : constant Unbounded_String := BasicOptionItemsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out BasicOptionItemsEntity) is
      Java_Result : constant Unbounded_String := BasicOptionItemsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out BasicOptionItemsEntity) is
      Java_Result : constant Unbounded_String := BasicOptionItemsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.options.BasicOptionItemsEntity_Package;


