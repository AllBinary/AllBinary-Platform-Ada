-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2011 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
-- ` 
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot 
--   
--  Generated Code Do Not Modify


with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package; use org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package is

   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package XmlOptionItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out XmlOptionItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("xmloptionitems");
   end Initialize_Fields;


   procedure Initialize (This : in out XmlOptionItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        XmlOptionItemsEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return XmlOptionItemsEntity_Access is
      This : constant XmlOptionItemsEntity_Access := new XmlOptionItemsEntity;
   begin
      XmlOptionItemsEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out XmlOptionItemsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, XmlOptionItemsEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, XmlOptionItemsEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out XmlOptionItemsEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (This.basicItemData.ID, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, XmlOptionItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, XmlOptionItemsEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function createTableStatement (This : in out XmlOptionItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (XmlOptionItemData_Package.XML_FILE_STATUS).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (XmlOptionItemData_Package.OPTION_XML_FILE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.basicItemData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out XmlOptionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (XmlOptionItemsEntity'Class (This).createTableStatement);
   end createTable;

   procedure update (This : in out XmlOptionItemsEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Java_Unbox (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out XmlOptionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package;


