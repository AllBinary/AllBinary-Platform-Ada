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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.sql.Connection_Package; use java.sql.Connection_Package;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
--  with java.sql.SQLException_Package; use java.sql.SQLException_Package;
--  with java.sql.Statement_Package; use java.sql.Statement_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package; use org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.sql.SqlTypeStrings_Package; use org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;

package org.allbinary.logic.communication.sql.AbSqlBasic_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SqlConnectionPool_Package renames Standard.org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type AbSqlBasic is tagged;
   type AbSqlBasic_Access is access all AbSqlBasic'Class;
   type AbSqlBasic_Access_Array is array (Natural range <>) of AbSqlBasic_Access;
   type AbSqlBasic_Access_Array_Access is access all AbSqlBasic_Access_Array;
   type AbSqlBasic_Access_Array_Access_Array is array (Natural range <>) of AbSqlBasic_Access_Array_Access;
   type AbSqlBasic_Access_Array_Access_Array_Access is access all AbSqlBasic_Access_Array_Access_Array;

   type AbSqlBasic is new Java_Object with record
      logUtil : LogUtil_Access;
      sqlConnectionPool : SqlConnectionPool_Access;
      databaseConnectionInfoInterface : DbConnectionInfo_Access;
      connectAttemptCounter : Integer;
      conn : Connection_Access;
      stringUtil : StringUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      stdUtil : StdUtil_Access;
      sqlTypeStrings : SqlTypeStrings_Access;
      sqlStrings : SqlStrings_Access;
      INSERT : Unbounded_String;
      UPDATE : Unbounded_String;
      FAILED_SQL_STATEMENT : Unbounded_String;
      SUCCESS_SQL_STATEMENT : Unbounded_String;
      METHOD_EXECUTED_SQL_STATEMENT : Unbounded_String;
      METHOD_CREATE : Unbounded_String;
      DATABASE_CREATED_LABEL : Unbounded_String;
      DATABASE_CREATION_FAILED_LABEL : Unbounded_String;
      SQL_CONNECTION_FAILED : Unbounded_String;
      SQL_CONNECTION_RETRYING : Unbounded_String;
      SQL_CONNECTION_RETRY : Unbounded_String;
      METHOD_CREATE_CONNECTION : Unbounded_String;
      METHOD_INITIALIZE : Unbounded_String;
      LOAD_JDBC_DRIVER_FAILED_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlBasic'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlBasic_Access;
   function executeSQLStatement (This : in out AbSqlBasic; statement : Unbounded_String) return ResultSet_Access;
   procedure executeSQLStatement (This : in out AbSqlBasic; statement : Unbounded_String);
   function create (This : in out AbSqlBasic; databaseName : Unbounded_String) return Unbounded_String;
   procedure create (This : in out AbSqlBasic; databaseName : Unbounded_String);
   procedure createConnection (This : in out AbSqlBasic);
   procedure initialize (This : in out AbSqlBasic);
   function getDatabaseConnectionInfoInterface (This : in out AbSqlBasic) return DatabaseConnectionInfoInterface_Access;
   procedure setDatabaseConnectionInfoInterface (This : in out AbSqlBasic; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);

end org.allbinary.logic.communication.sql.AbSqlBasic_Package;


