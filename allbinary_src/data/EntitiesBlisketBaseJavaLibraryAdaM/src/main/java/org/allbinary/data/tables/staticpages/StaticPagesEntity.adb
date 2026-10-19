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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.init.db.StaticPagesDbInitInfo_Package; use org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.control.search.SearchData_Package; use org.allbinary.logic.control.search.SearchData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.data.tables.staticpages.StaticPagesEntity_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package StaticPagesDbInitInfo_Package renames Standard.org.allbinary.business.init.db.StaticPagesDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SearchData_Package renames Standard.org.allbinary.logic.control.search.SearchData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out StaticPagesEntity'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicItemData := BasicItemData_Package.getInstance;
      This.TABLENAME := To_Unbounded_String ("staticpages");
   end Initialize_Fields;


   procedure Initialize (This : in out StaticPagesEntity'Class) is
   begin
        AbSqlBean_Package.Initialize (This, StaticPagesDbInitInfo_Package.Create);
        Initialize_Fields (This);
        StaticPagesEntity'Class (This).setTableName (This.TABLENAME);
   end Initialize;

   function Create return StaticPagesEntity_Access is
      This : constant StaticPagesEntity_Access := new StaticPagesEntity;
   begin
      StaticPagesEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out StaticPagesEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      values : constant BasicArrayList_Access := BasicArrayList_Access (values_Param);
   begin
        begin
            AbSqlBean (This).insert (values);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.commonStrings.SUCCESS, StaticPagesEntity_Access'(This'Unchecked_Access), INSERT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.put (This.commonStrings.FAILURE, StaticPagesEntity_Access'(This'Unchecked_Access), INSERT, e);
            end if;
                end;
        end;
   end insert;

   function getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) return Unbounded_String is
      whereHashMap : HashMap_Access;
      file : Unbounded_String;
   begin
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (StoreFrontData_Package.getInstance.NAME, Java_Box (store));
        whereHashMap.put (This.basicItemData.KEYWORDS, Java_Box (keywords));
        file := AbSqlBean (This).getField (whereHashMap, SearchData_Package.PAGE);
        return file;
   end getFile;

   procedure delete (This : in out StaticPagesEntity; keywords : Unbounded_String) is
   begin
        AbSqlBean (This).deleteWhere (This.basicItemData.KEYWORDS, keywords);
   end delete;

   function dropTable (This : in out StaticPagesEntity) return Unbounded_String is
      returnStr : Unbounded_String;
   begin
        returnStr := AbSqlBean (This).dropTable;
        return returnStr;
   end dropTable;

   procedure update (This : in out StaticPagesEntity; updatedValues_Param : access HashMap_Package.HashMap'Class) is
      updatedValues : constant HashMap_Access := HashMap_Access (updatedValues_Param);
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.KEYWORDS, Java_Unbox (updatedValues.get (This.basicItemData.KEYWORDS)), updatedValues);
   end update;

   function createTableStatement (This : in out StaticPagesEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE).append (This.TABLENAME).append (This.sqlStrings.START).append (StoreFrontData_Package.getInstance.NAME).append (This.sqlTypeStrings.SIXTY_CHAR_COLUMN_NOT_NULL).append (This.basicItemData.KEYWORDS).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (SearchData_Package.PAGE).append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL).append (This.sqlStrings.PRIMARY_KEY).append (StoreFrontData_Package.getInstance.NAME).append (CommonSeps_Package.getInstance.COMMA_SEP).append (This.basicItemData.KEYWORDS).append (This.sqlStrings.END_Id);
        return stringBuffer.toString;
   end createTableStatement;

   function createTable (This : in out StaticPagesEntity) return Unbounded_String is
   begin
        return AbSqlBean (This).createTable (StaticPagesEntity'Class (This).createTableStatement);
   end createTable;

   procedure getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) is
      Java_Result : constant Unbounded_String := StaticPagesEntity'Class (This).getFile (store => store, keywords => keywords);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

end org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;


