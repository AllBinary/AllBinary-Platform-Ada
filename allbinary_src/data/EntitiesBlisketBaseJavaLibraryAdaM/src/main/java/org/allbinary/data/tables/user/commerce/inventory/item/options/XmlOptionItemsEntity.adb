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


package body org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package is

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
        This.setTableName (This.tableName);
   end Initialize;

   function Create return XmlOptionItemsEntity_Access is
      This : constant XmlOptionItemsEntity_Access := new XmlOptionItemsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out XmlOptionItemsEntity; values : BasicArrayList_Access) is
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

   procedure delete (This : in out XmlOptionItemsEntity; value : Unbounded_String) is
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
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out XmlOptionItemsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Unbounded_String (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out XmlOptionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure createTableStatement (This : in out XmlOptionItemsEntity) is
      Java_Result : constant Unbounded_String := XmlOptionItemsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out XmlOptionItemsEntity) is
      Java_Result : constant Unbounded_String := XmlOptionItemsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out XmlOptionItemsEntity) is
      Java_Result : constant Unbounded_String := XmlOptionItemsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.options.XmlOptionItemsEntity_Package;


