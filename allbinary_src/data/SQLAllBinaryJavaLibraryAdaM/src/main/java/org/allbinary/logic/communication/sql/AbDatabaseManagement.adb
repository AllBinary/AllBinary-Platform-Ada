-- 
-- To change this license header, choose License Headers in Project Properties. 
-- To change this template file, choose Tools | Templates 
-- and open the template in the editor.  
--  Generated Code Do Not Modify


package body org.allbinary.logic.communication.sql.AbDatabaseManagement_Package is

   procedure Initialize_Fields (This : in out AbDatabaseManagement'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
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


   procedure Initialize (This : in out AbDatabaseManagement'Class; databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) is
   begin
        AbSqlBean_Package.Initialize (This, DbConnectionInfo_Access (databaseConnectionInfoInterface));
        Initialize_Fields (This);
   end Initialize;

   function Create (databaseConnectionInfoInterface : DatabaseConnectionInfoInterface_Access) return AbDatabaseManagement_Access is
      This : constant AbDatabaseManagement_Access := new AbDatabaseManagement;
   begin
      Initialize (This.all, databaseConnectionInfoInterface);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out AbDatabaseManagement'Class; connectionInfo : DbConnectionInfo_Access) is
   begin
        AbSqlBean_Package.Initialize (This, connectionInfo);
        Initialize_Fields (This);
   end Initialize;

   function Create (connectionInfo : DbConnectionInfo_Access) return AbDatabaseManagement_Access is
      This : constant AbDatabaseManagement_Access := new AbDatabaseManagement;
   begin
      Initialize (This.all, connectionInfo);
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
            This.logUtil.put (This.FAILED, This'Unchecked_Access, This.GET_HOST_NAME, e);
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
        AbSqlBean (This).executeSQLStatement (sqlStatement);
        return True;
   end addDbUser;

   function addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) return Boolean is
      hostName : Unbounded_String;
   begin
        begin
            This.addDbUser (This.AT_LOCALHOST, db, userName, password);
            hostName := This.getHostName;
            if (hostName) /= (Null_Unbounded_String) then
                This.addDbUser (hostName, db, userName, password);
            end if;
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.UNABLE_TO_CREATE_USER & userName, This'Unchecked_Access, This.METHOD_ADD_USER, e);
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
            AbSqlBean (This).executeSQLStatement (sqlStatement);
            return True;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.UNABLE_TO_CREATE_DATABASE & db, This'Unchecked_Access, This.METHOD_ADD_DB, e);
            return False;
                end;
        end;
   end addDb;

   procedure getHostName (This : in out AbDatabaseManagement) is
      Java_Result : constant Unbounded_String := AbDatabaseManagement'Class (This).getHostName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHostName;

   procedure addDbUser (This : in out AbDatabaseManagement; hostName : Unbounded_String; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDbUser (hostName, db, userName, password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDbUser;

   procedure addDbUser (This : in out AbDatabaseManagement; db : Unbounded_String; userName : Unbounded_String; password : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDbUser (db, userName, password);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDbUser;

   procedure addDb (This : in out AbDatabaseManagement; db : Unbounded_String) is
      Java_Result : constant Boolean := AbDatabaseManagement'Class (This).addDb (db);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end addDb;

end org.allbinary.logic.communication.sql.AbDatabaseManagement_Package;


