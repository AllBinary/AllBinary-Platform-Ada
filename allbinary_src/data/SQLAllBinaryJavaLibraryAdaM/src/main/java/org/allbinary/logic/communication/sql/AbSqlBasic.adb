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


with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.logic.communication.sql.ClassLoader_Package; use org.allbinary.logic.communication.sql.ClassLoader_Package;

package body org.allbinary.logic.communication.sql.AbSqlBasic_Package is

   package Thread_Package renames Standard.java.lang.Thread_Package;
   procedure Initialize_Fields (This : in out AbSqlBasic'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.sqlConnectionPool := SqlConnectionPool_Package.getInstance;
      
      
      
      This.stringUtil := StringUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.stdUtil := StdUtil_Package.getInstance;
      This.sqlTypeStrings := SqlTypeStrings_Package.getInstance;
      This.sqlStrings := SqlStrings_Package.getInstance;
      This.INSERT := To_Unbounded_String ("insert");
      This.UPDATE := To_Unbounded_String ("update");
      This.FAILED_SQL_STATEMENT := To_Unbounded_String ("Failed" & ASCII.LF & "SQL Statement: ");
      This.SUCCESS_SQL_STATEMENT := To_Unbounded_String ("Success" & ASCII.LF & "SQL Statement: ");
      This.METHOD_EXECUTED_SQL_STATEMENT := To_Unbounded_String ("executedSQLStatement");
      This.METHOD_CREATE := To_Unbounded_String ("create");
      This.DATABASE_CREATED_LABEL := To_Unbounded_String ("Database Created: ");
      This.DATABASE_CREATION_FAILED_LABEL := To_Unbounded_String ("Database Creation Failed: ");
      This.SQL_CONNECTION_FAILED := To_Unbounded_String ("SQL Connection Failed");
      This.SQL_CONNECTION_RETRYING := To_Unbounded_String ("SQL Connection Retrying");
      This.SQL_CONNECTION_RETRY := To_Unbounded_String ("SQL Connection Retry");
      This.METHOD_CREATE_CONNECTION := To_Unbounded_String ("createConnection()");
      This.METHOD_INITIALIZE := To_Unbounded_String ("initialize");
      This.LOAD_JDBC_DRIVER_FAILED_LABEL := To_Unbounded_String ("Load JDBC Driver Failed: ");
   end Initialize_Fields;


   procedure Initialize (This : in out AbSqlBasic'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
      Initialize_Fields (This);
        This.databaseConnectionInfoInterface := databaseConnectionInfoInterface;
        This.connectAttemptCounter := 0;
        This.conn := null;
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlBasic_Access is
      This : constant AbSqlBasic_Access := new AbSqlBasic;
   begin
      AbSqlBasic_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   --  throws SQLException
   function executeSQLStatement (This : in out AbSqlBasic; statement : Unbounded_String) return ResultSet_Access is
      stmt : Statement_Access;
      rset : ResultSet_Access;
      tempConnection : Connection_Access;
   begin
        begin
            AbSqlBasic'Class (This).initialize;
            stmt := This.conn.createStatement;
            stmt.execute (statement);
            rset := stmt.getResultSet;
            stmt.close;
            tempConnection := This.conn;
            This.conn := null;
            This.sqlConnectionPool.add (AbSqlBasic'Class (This).getDatabaseConnectionInfoInterface.getUrl, tempConnection);
            return rset;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (This.FAILED_SQL_STATEMENT & statement, AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_EXECUTED_SQL_STATEMENT, e);
            end if;
            This.conn.close;
            This.conn := null;
            Java_Throw (e);
                end;
        end;
   end executeSQLStatement;

   function create (This : in out AbSqlBasic; databaseName : Unbounded_String) return Unbounded_String is
   begin
        begin
            AbSqlBasic'Class (This).executeSQLStatement (Java_Image (This.sqlStrings.CREATE_DATABASE) & databaseName);
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGING) then
                This.logUtil.putF (This.DATABASE_CREATED_LABEL & databaseName, AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_CREATE);
            end if;
            return databaseName & Java_Image (This.sqlStrings.CREATE_RETURN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (This.DATABASE_CREATION_FAILED_LABEL & databaseName, AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_CREATE, e);
            end if;
            return This.DATABASE_CREATION_FAILED_LABEL & databaseName;
                end;
        end;
   end create;

   procedure createConnection (This : in out AbSqlBasic) is
   begin
        begin
            This.conn := This.sqlConnectionPool.get (AbSqlBasic'Class (This).getDatabaseConnectionInfoInterface.getUrl);
        exception
            when Java_Occurrence : others =>
                declare
                    se : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (This.SQL_CONNECTION_RETRYING, AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_CREATE_CONNECTION, se);
            end if;
            begin
                Thread_Package.currentThread.sleep (2000);
                if (This.connectAttemptCounter) < (10) then
                    This.connectAttemptCounter := This.connectAttemptCounter + 1;
                    AbSqlBasic'Class (This).initialize;
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                    This.logUtil.put (This.SQL_CONNECTION_RETRY & Java_Get_Message (se), AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_CREATE_CONNECTION, e);
                end if;
                    end;
            end;
                end;
        end;
   end createConnection;

   procedure initialize (This : in out AbSqlBasic) is
      loader : ClassLoader_Access;
      jdbcDriverClass : Ada.Tags.Tag;
   begin
        begin
            begin
                begin
                    loader := Thread_Package.currentThread.getContextClassLoader;
                    jdbcDriverClass := loader.loadClass (AbSqlBasic'Class (This).getDatabaseConnectionInfoInterface.getJdbcDriver);
                    jdbcDriverClass.newInstance;
                exception
                    when Java_Occurrence : others =>
                        declare
                            e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                        begin
                    if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                        This.logUtil.put (This.LOAD_JDBC_DRIVER_FAILED_LABEL & Java_Image (AbSqlBasic'Class (This).getDatabaseConnectionInfoInterface.getJdbcDriver), AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_INITIALIZE, e);
                    end if;
                        end;
                end;
            end;
            AbSqlBasic'Class (This).createConnection;
        exception
            when Java_Occurrence : others =>
                declare
                    se : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.SQLLOGGINGERROR) then
                This.logUtil.put (This.SQL_CONNECTION_FAILED, AbSqlBasic_Access'(This'Unchecked_Access), This.METHOD_INITIALIZE, se);
            end if;
                end;
        end;
   end initialize;

   function getDatabaseConnectionInfoInterface (This : in out AbSqlBasic) return DatabaseConnectionInfoInterface_Access is
   begin
        return DatabaseConnectionInfoInterface_Access (This.databaseConnectionInfoInterface);
   end getDatabaseConnectionInfoInterface;

   procedure setDatabaseConnectionInfoInterface (This : in out AbSqlBasic; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      databaseConnectionInfoInterface : constant DbConnectionInfo_Access := DbConnectionInfo_Access (databaseConnectionInfoInterface_Param);
   begin
        This.databaseConnectionInfoInterface := databaseConnectionInfoInterface;
   end setDatabaseConnectionInfoInterface;

   procedure executeSQLStatement (This : in out AbSqlBasic; statement : Unbounded_String) is
      Java_Result : constant ResultSet_Access := AbSqlBasic'Class (This).executeSQLStatement (statement => statement);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end executeSQLStatement;

   procedure create (This : in out AbSqlBasic; databaseName : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbSqlBasic'Class (This).create (databaseName => databaseName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

end org.allbinary.logic.communication.sql.AbSqlBasic_Package;


