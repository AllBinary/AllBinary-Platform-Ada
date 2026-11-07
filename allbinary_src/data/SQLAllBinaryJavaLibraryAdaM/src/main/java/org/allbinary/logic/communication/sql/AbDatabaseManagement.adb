-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashMap_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package;
with org.allbinary.logic.communication.sql.AbSqlColumn_Package;
with org.allbinary.logic.communication.sql.AbSqlRow_Package;
with org.allbinary.logic.communication.sql.AbSqlTable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.logic.communication.sql.AbDatabaseManagement_Package is

   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References."=";
   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   function "=" (Left, Right : DbConnectionInfo_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out AbDatabaseManagement'Class) is
   begin
      null;
      This.AbDatabaseManagement_Field_logUtil := LogUtil_Package.getInstance;
      This.AbDatabaseManagement_Field_commonStrings := CommonStrings_Package.getInstance;
      This.sqlCommandLog := StringMaker_Package.Create;
      This.GRANT_ALL := To_Unbounded_String ("GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER ON ");
      This.DOT_STAR := To_Unbounded_String (".*");
      This.TO := To_Unbounded_String (" TO ");
      This.AT_LOCALHOST := To_Unbounded_String ("@localhost");
      This.IDENTIFIED_BY := To_Unbounded_String (" IDENTIFIED BY '");
      This.WITH_GRANT_OPTION := To_Unbounded_String ("' WITH GRANT OPTION");
      This.FAILED := To_Unbounded_String ("Failed");
      This.GET_HOST_NAME := To_Unbounded_String ("getHostName()");
      This.METHOD_ADD_USER := To_Unbounded_String ("addUser()");
      This.METHOD_ADD_USERS := To_Unbounded_String ("addUsers()");
      This.METHOD_ADD_DB := To_Unbounded_String ("addDb()");
      This.METHOD_ADD_DATABASES := To_Unbounded_String ("addDatabases()");
      This.METHOD_ADD_TABLES := To_Unbounded_String ("addTables()");
      This.UNABLE_TO_CREATE_USER := To_Unbounded_String ("Unable to Create User: ");
      This.UNABLE_TO_CREATE_DATABASE := To_Unbounded_String ("Unable to Create Database: ");
      This.UNABLE_TO_CREATE_TABLES := To_Unbounded_String ("Unable to Create Tables");
      This.ADD_TABLES_RESULTS_LABEL := To_Unbounded_String ("Add Table Results: ");
   end Initialize_Fields;


   procedure Initialize (This : in out AbDatabaseManagement'Class; databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) is
      databaseConnectionInfoInterface : constant DatabaseConnectionInfoInterface_Access := DatabaseConnectionInfoInterface_Access (databaseConnectionInfoInterface_Param);
   begin
        AbSqlBean_Package.Initialize (This, DbConnectionInfo_Access (databaseConnectionInfoInterface));
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface_Param : access DatabaseConnectionInfoInterface_Package.DatabaseConnectionInfoInterface'Class) return AbDatabaseManagement_Access is
      This : constant AbDatabaseManagement_Access := new AbDatabaseManagement;
   begin
      AbDatabaseManagement_Package.Initialize (This.all, databaseConnectionInfoInterface_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AbDatabaseManagement'Class; connectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) is
      connectionInfo : constant DbConnectionInfo_Access := DbConnectionInfo_Access (connectionInfo_Param);
   begin
        AbSqlBean_Package.Initialize (This, connectionInfo);
        Initialize_Fields (This);
   end Initialize;

   function Create (connectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbDatabaseManagement_Access is
      This : constant AbDatabaseManagement_Access := new AbDatabaseManagement;
   begin
      AbDatabaseManagement_Package.Initialize (This.all, connectionInfo_Param);
      return This;
   end Create;

   function getHostName (This : in out AbDatabaseManagement) return Unbounded_String is
      addr : InetAddress_Access;
   begin
        begin
            addr := InetAddress_Package.getLocalHost;
            return addr.getHostName;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.AbDatabaseManagement_Field_logUtil.put (This.FAILED, AbDatabaseManagement_Access'(This'Unchecked_Access), This.GET_HOST_NAME, e);
            return Null_Unbounded_String;
                end;
        end;
   end getHostName;

   --  throws Exception
   function addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean is
      stringBuffer : StringMaker_Access;
      sqlStatement : Unbounded_String;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (This.GRANT_ALL);
        stringBuffer.append (db);
        stringBuffer.append (This.DOT_STAR);
        stringBuffer.append (This.TO);
        stringBuffer.append (userName);
        stringBuffer.append (hostName);
        stringBuffer.append (This.IDENTIFIED_BY);
        stringBuffer.append (password);
        stringBuffer.append (This.WITH_GRANT_OPTION);
        sqlStatement := stringBuffer.toString;
        This.sqlCommandLog.append (sqlStatement);
        This.sqlCommandLog.append (This.commonSeps.NEW_LINE);
        AbSqlBean_Package.AbSqlBean (This).executeSQLStatement (sqlStatement);
        return True;
   end addDbUser;

   function addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean is
      hostName : Unbounded_String;
   begin
        begin
            AbDatabaseManagement'Class (This).addDbUser (This.AT_LOCALHOST, db, userName, password);
            hostName := AbDatabaseManagement'Class (This).getHostName;
            if (hostName) /= (Null_Unbounded_String) then
                AbDatabaseManagement'Class (This).addDbUser (hostName, db, userName, password);
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.AbDatabaseManagement_Field_logUtil.put (This.UNABLE_TO_CREATE_USER & userName, AbDatabaseManagement_Access'(This'Unchecked_Access), This.METHOD_ADD_USER, e);
            return False;
                end;
        end;
   end addDbUser;

   function addDb (This : in out AbDatabaseManagement; db : Unbounded_String) return Boolean is
      sqlStatement : Unbounded_String;
   begin
        begin
            sqlStatement := Java_Image (This.sqlStrings.CREATE_DATABASE) & db;
            This.sqlCommandLog.append (sqlStatement);
            This.sqlCommandLog.append (This.commonSeps.NEW_LINE);
            AbSqlBean_Package.AbSqlBean (This).executeSQLStatement (sqlStatement);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.AbDatabaseManagement_Field_logUtil.put (This.UNABLE_TO_CREATE_DATABASE & db, AbDatabaseManagement_Access'(This'Unchecked_Access), This.METHOD_ADD_DB, e);
            return False;
                end;
        end;
   end addDb;

   procedure addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDbUser (hostName => hostName, db => db, userName => userName, password => password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDbUser;

   procedure addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDbUser (db => db, userName => userName, password => password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDbUser;

   procedure addDb (This : in out AbDatabaseManagement; db : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDb (db => db);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDb;

end org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;


