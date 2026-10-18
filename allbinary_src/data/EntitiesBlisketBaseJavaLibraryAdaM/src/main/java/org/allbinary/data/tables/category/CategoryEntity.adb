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
with org.allbinary.business.category.CategoryData_Package; use org.allbinary.business.category.CategoryData_Package;
with org.allbinary.business.init.db.InventoryDbInitInfo_Package; use org.allbinary.business.init.db.InventoryDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.data.tables.category.CategoryEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CategoryData_Package renames Standard.org.allbinary.business.category.CategoryData_Package;
   package InventoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.InventoryDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out CategoryEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := To_Unbounded_String ("categories");
   end Initialize_Fields;


   procedure Initialize (This : in out CategoryEntity'Class; categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) is
      categoryFactoryInterface : constant CategoryFactoryInterface_Access := CategoryFactoryInterface_Access (categoryFactoryInterface_Param);
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        CategoryEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create (categoryFactoryInterface_Param : access CategoryFactoryInterface_Package.CategoryFactoryInterface'Class) return CategoryEntity_Access is
      This : constant CategoryEntity_Access := new CategoryEntity;
   begin
      CategoryEntity_Package.Initialize (This.all, categoryFactoryInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out CategoryEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, InventoryDbInitInfo_Package.Create);
        Initialize_Fields (This);
        CategoryEntity'Class (This).setTableName (This.tableName);
   end Initialize;

   function Create return CategoryEntity_Access is
      This : constant CategoryEntity_Access := new CategoryEntity;
   begin
      CategoryEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out CategoryEntity; category_Param : access Category_Package.Category'Class) is
      category : constant Category_Access := Category_Access (category_Param);
      categoryVector : BasicArrayList_Access;
      values : BasicArrayList_Access;
   begin
        begin
            categoryVector := category.toVector;
            values := BasicArrayList_Access (BasicArrayListD_Package.Create);
            values.add (categoryVector.get (0));
            values.add (categoryVector.get (1));
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, CategoryEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   procedure delete (This : in out CategoryEntity; value : Unbounded_String) is
   begin
        begin
            AbSqlBean (This).deleteWhere (CategoryData_Package.getInstance.NAME, value);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, CategoryEntity_Access'(This'Unchecked_Access), This.commonStrings.delete);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, CategoryEntity_Access'(This'Unchecked_Access), This.commonStrings.delete, e);
            end if;
                end;
        end;
   end delete;

   function createTableStatement (This : in out CategoryEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (CategoryData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (CategoryData_Package.getInstance.LEVEL);
        stringBuffer.append (This.sqlTypeStrings.MAX_BIG_INT_UNSIGNED_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (CategoryData_Package.getInstance.NAME);
        stringBuffer.append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out CategoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (CategoryEntity'Class (This).createTableStatement);
   end createTable;

   procedure update (This : in out CategoryEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (CategoryData_Package.getInstance.NAME, Java_Unbox (updatedValues.get (CategoryData_Package.getInstance.NAME)), updatedValues);
   end update;

   function dropTable (This : in out CategoryEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).dropTable;
   end dropTable;

end org.allbinary.data.tables.category.CategoryEntity_Package;


