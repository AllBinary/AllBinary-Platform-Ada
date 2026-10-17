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


package body org.allbinary.data.tables.staticpages.StaticPagesEntity_Package is

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
        This.setTableName (This.TABLENAME);
   end Initialize;

   function Create return StaticPagesEntity_Access is
      This : constant StaticPagesEntity_Access := new StaticPagesEntity;
   begin
      StaticPagesEntity_Package.Initialize (This.all);
      return This;
   end Create;

   procedure insert (This : in out StaticPagesEntity; values : BasicArrayList_Access) is
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

   function getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) return Unbounded_String is
      whereHashMap : HashMap_Access;
      file : Unbounded_String;
   begin
        whereHashMap := StdUtil_Package.getInstance.createHashMap;
        whereHashMap.put (StoreFrontData_Package.getInstance.NAME, store);
        whereHashMap.put (This.basicItemData.KEYWORDS, keywords);
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

   procedure update (This : in out StaticPagesEntity; updatedValues : HashMap_Access) is
   begin
        AbSqlBean (This).updateWhere (This.basicItemData.KEYWORDS, Unbounded_String (updatedValues.get (This.basicItemData.KEYWORDS)), updatedValues);
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
        return AbSqlBean (This).createTable (This.createTableStatement);
   end createTable;

   procedure getFile (This : in out StaticPagesEntity; store : Unbounded_String; keywords : Unbounded_String) is
      Java_Result : constant Unbounded_String := StaticPagesEntity'Class (This).getFile (store, keywords);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFile;

end org.allbinary.data.tables.staticpages.StaticPagesEntity_Package;


