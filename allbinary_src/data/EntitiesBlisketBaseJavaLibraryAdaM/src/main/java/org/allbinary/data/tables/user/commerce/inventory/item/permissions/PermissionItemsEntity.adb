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


package body org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntity_Package is

   procedure Initialize_Fields (This : in out PermissionItemsEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.tableName := To_Unbounded_String ("permissionitems");
   end Initialize_Fields;


   procedure Initialize (This : in out PermissionItemsEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        This.setTableName (This.tableName);
   end Initialize;

   function Create return PermissionItemsEntity_Access is
      This : constant PermissionItemsEntity_Access := new PermissionItemsEntity;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out PermissionItemsEntity; values : BasicArrayList_Access) is
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

   procedure delete (This : in out PermissionItemsEntity; value : Unbounded_String) is
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

   function createTableStatement (This : in out PermissionItemsEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.tableName).append (This.sqlStrings.START).append (This.basicItemData.ID).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.basicItemData.NUMBER).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.ENABLE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (PermissionItemData_Package.WHO).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PermissionItemData_Package.WHAT).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PermissionItemData_Package.TYPE_Id).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PermissionItemData_Package.REMOTE_ADDR).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (PermissionItemData_Package.START_TIME).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (PermissionItemData_Package.END_TIME).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.basicItemData.PRICE).append (To_Unbounded_String (" DECIMAL (11,2) NOT NULL,")).append (EntryData_Package.getInstance.TIMECREATED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (EntryData_Package.getInstance.LASTMODIFIED).append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (This.basicItemData.ID).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out PermissionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure update (This : in out PermissionItemsEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.ID, Unbounded_String (updatedValues.get (This.basicItemData.ID)), updatedValues);
   end update;

   function dropTable (This : in out PermissionItemsEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

   procedure createTableStatement (This : in out PermissionItemsEntity) is
      Java_Result : constant Unbounded_String := PermissionItemsEntity'Class (This).createTableStatement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTableStatement;

   procedure createTable (This : in out PermissionItemsEntity) is
      Java_Result : constant Unbounded_String := PermissionItemsEntity'Class (This).createTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

   procedure dropTable (This : in out PermissionItemsEntity) is
      Java_Result : constant Unbounded_String := PermissionItemsEntity'Class (This).dropTable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end dropTable;

end org.allbinary.data.tables.user.commerce.inventory.item.permissions.PermissionItemsEntity_Package;


