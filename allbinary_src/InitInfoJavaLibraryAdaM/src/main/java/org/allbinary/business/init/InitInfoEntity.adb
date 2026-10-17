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


package body org.allbinary.business.init.InitInfoEntity_Package is

   procedure Initialize_Fields (This : in out InitInfoEntity'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("InitInfoEntity");
      This.NOTHING := To_Unbounded_String ("NOTHING");
      This.tableName := To_Unbounded_String ("initdata");
      
      This.NOT_IN_DB := To_Unbounded_String ("Not In DB");
      This.METHOD_GET := To_Unbounded_String ("get()");
      This.METHOD_IS := To_Unbounded_String ("is()");
      This.METHOD_ADD := To_Unbounded_String ("add()");
      This.CREATED_SUCCESS := To_Unbounded_String (" Created Successfully");
      This.FAILED_TO_CREATE := To_Unbounded_String ("Failed to create ");
   end Initialize_Fields;


   procedure Initialize (This : in out InitInfoEntity'Class) is
      stringBuffer : StringMaker_Access;
   begin
        InitSql_Package.Initialize (This, UserDbInitInfo_Package.Create);
        Initialize_Fields (This);
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.sqlStrings.CREATE_TABLE);
        stringBuffer.append (This.tableName);
        stringBuffer.append (This.sqlStrings.START);
        stringBuffer.append (This.NOTHING);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (InitInfo_Package.getInstance.TESTING);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (InitInfo_Package.getInstance.TESTHTMLPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (InitInfo_Package.getInstance.MAINPATH);
        stringBuffer.append (This.sqlTypeStrings.MAX_CHAR_COLUMN_NOT_NULL);
        stringBuffer.append (This.sqlStrings.PRIMARY_KEY);
        stringBuffer.append (This.NOTHING);
        stringBuffer.append (This.sqlStrings.END_Id);
        This.tableData := stringBuffer.toString;
        This.setTable (This.tableName);
   end Initialize;

   function Create return InitInfoEntity_Access is
      This : constant InitInfoEntity_Access := new InitInfoEntity;
   begin
      InitInfoEntity_Package.Initialize (This.all);
      return This;
   end Create;

   function get (This : in out InitInfoEntity) return Boolean is
      keyAndValue : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        begin
            keyAndValue := StdUtil_Package.getInstance.createHashMap;
            keyAndValue.put (This.NOTHING, This.NOTHING);
            hashMap := This.getRow (keyAndValue);
            if (hashMap) /= (null) then
                InitInfo_Package.getInstance.set (hashMap);
                return True;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                    PreLogUtil_Package.put (This.NOT_IN_DB, This.NAME, This.METHOD_GET);
                end if;
                return False;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.NAME, This.METHOD_GET, e);
            end if;
            return False;
                end;
        end;
   end get;

   function is_Id (This : in out InitInfoEntity) return Boolean is
      keyAndValue : HashMap_Access;
      hashMap : HashMap_Access;
   begin
        begin
            keyAndValue := StdUtil_Package.getInstance.createHashMap;
            keyAndValue.put (This.NOTHING, This.NOTHING);
            hashMap := This.getRow (keyAndValue);
            if (hashMap) /= (null) then
                return True;
            else
                if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADER) then
                    PreLogUtil_Package.put (This.NOT_IN_DB, This.NAME, This.METHOD_IS);
                end if;
                return False;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.NAME, This.METHOD_IS, e);
            end if;
            return False;
                end;
        end;
   end is_Id;

   procedure update (This : in out InitInfoEntity) is
   begin
        This.updateWhere (This.NOTHING, This.NOTHING, InitInfo_Package.getInstance.toHashMap);
   end update;

   procedure add (This : in out InitInfoEntity) is
      values : BasicArrayList_Access;
   begin
        begin
            values := BasicArrayListD_Package.Create;
            values.add (This.NOTHING);
            values.add (InitInfo_Package.getInstance.getTesting);
            values.add (InitInfo_Package.getInstance.getTestHtmlPath);
            values.add (InitInfo_Package.getInstance.getMainPath);
            This.insert (values);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if LogConfigTypes_Package.LOGGING.contains (LogConfigTypeFactory_Package.getInstance.PRELOADERERROR) then
                PreLogUtil_Package.putOE (This.commonStrings.EXCEPTION_Id, This.NAME, This.METHOD_ADD, e);
            end if;
                end;
        end;
   end add;

   function createTable (This : in out InitInfoEntity) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        if InitSql (This).createTable (This.tableData) then
            return This.tableName & This.CREATED_SUCCESS;
        else
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (This.FAILED_TO_CREATE);
            stringBuffer.append (This.tableData);
            stringBuffer.append (AbPathData_Package.getInstance.EXTENSION_SEP);
            return stringBuffer.toString;
        end if;
   end createTable;

end org.allbinary.business.init.InitInfoEntity_Package;


