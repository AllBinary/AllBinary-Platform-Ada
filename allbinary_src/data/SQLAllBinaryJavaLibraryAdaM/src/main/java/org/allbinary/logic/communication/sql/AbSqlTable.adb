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


package body org.allbinary.logic.communication.sql.AbSqlTable_Package is

   procedure Initialize_Fields (This : in out AbSqlTable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.tableName := Null_Unbounded_String;
      This.METHOD_CREATED_TABLE := To_Unbounded_String ("createTable()");
      This.METHOD_DROP_TABLE := To_Unbounded_String ("dropTable()");
      This.TABLE_CREATION_SUCCESS := To_Unbounded_String ("Table Creation Successful: ");
      This.DROPPED_SUCCESS := To_Unbounded_String (" Dropped Successfully");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlTable'Class; databaseConnectionInfoInterface : DbConnectionInfo_Access) is
   begin
        AbSqlBasic_Package.Initialize (This, databaseConnectionInfoInterface);
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface : DbConnectionInfo_Access) return AbSqlTable_Access is
      This : constant AbSqlTable_Access := new AbSqlTable;
   begin
      AbSqlTable_Package.Initialize (This.all, databaseConnectionInfoInterface);
      return This;
   end Create;

   procedure setTableName (This : in out AbSqlTable; tableName : Unbounded_String) is
   begin
        This.tableName := tableName;
   end setTableName;

   function getTableName (This : in out AbSqlTable) return Unbounded_String is
   begin
        return This.tableName;
   end getTableName;

   function createTable (This : in out AbSqlTable; data : Unbounded_String) return Unbounded_String is
   begin
        begin
            This.executeSQLStatement (data);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.TABLE_CREATION_SUCCESS & This.tableName & To_Unbounded_String (" with statement: ") & data, This'Unchecked_Access, This.METHOD_CREATED_TABLE);
            end if;
            return This.tableName & Java_Image (This.sqlStrings.CREATE_RETURN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (To_Unbounded_String ("Table Creation Failed: ") & This.tableName & To_Unbounded_String (" with statement: ") & data, This'Unchecked_Access, This.METHOD_CREATED_TABLE, e);
            end if;
            return To_Unbounded_String ("Failed to Create ") & This.tableName & To_Unbounded_String (" table.");
                end;
        end;
   end createTable;

   function dropTable (This : in out AbSqlTable) return Unbounded_String is
      sqlStatement : Unbounded_String;
   begin
        sqlStatement := Java_Image (This.sqlStrings.DROP_TABLE) & This.tableName;
        begin
            This.executeSQLStatement (sqlStatement);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (Java_Image (This.SUCCESS_SQL_STATEMENT) & sqlStatement, This'Unchecked_Access, This.METHOD_DROP_TABLE);
            end if;
            return This.tableName & This.DROPPED_SUCCESS;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (Java_Image (This.FAILED_SQL_STATEMENT) & sqlStatement, This'Unchecked_Access, This.METHOD_DROP_TABLE, e);
            end if;
            return To_Unbounded_String ("Failed to Drop ") & This.tableName & To_Unbounded_String (" table.");
                end;
        end;
   end dropTable;

   procedure createTable (This : in out AbSqlTable; data : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlTable'Class (This).createTable (data);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createTable;

end org.allbinary.logic.communication.sql.AbSqlTable_Package;


