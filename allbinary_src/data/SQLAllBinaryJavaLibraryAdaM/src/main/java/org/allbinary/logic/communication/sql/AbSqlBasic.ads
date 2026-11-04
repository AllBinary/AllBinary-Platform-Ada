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

limited with org.allbinary.logic.communication.sql.AbSqlBasic_Package;
package org.allbinary.logic.communication.sql.AbSqlBasic_Package_References is
   type AbSqlBasic_Access is access all org.allbinary.logic.communication.sql.AbSqlBasic_Package.AbSqlBasic'Class;
   type AbSqlBasic_Access_Array is array (Natural range <>) of AbSqlBasic_Access;
   type AbSqlBasic_Access_Array_Access is access all AbSqlBasic_Access_Array;
   type AbSqlBasic_Access_Array_Access_Array is array (Natural range <>) of AbSqlBasic_Access_Array_Access;
   type AbSqlBasic_Access_Array_Access_Array_Access is access all AbSqlBasic_Access_Array_Access_Array;
end org.allbinary.logic.communication.sql.AbSqlBasic_Package_References;

with org.allbinary.logic.communication.sql.AbSqlBasic_Package_References;
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
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.StdUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
with org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
with org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References;
limited with org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package_References;

package org.allbinary.logic.communication.sql.AbSqlBasic_Package is

   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package SqlConnectionPool_Package renames Standard.org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype DatabaseConnectionInfoInterface_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access;
   use type DatabaseConnectionInfoInterface_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array;
   subtype DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References.DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   use type DatabaseConnectionInfoInterface_Access_Array_Access_Array_Access;
   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   use type DbConnectionInfo_Access;
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   use type DbConnectionInfo_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access;
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   use type DbConnectionInfo_Access_Array_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   use type DbConnectionInfo_Access_Array_Access_Array_Access;
   subtype StdUtil_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access;
   use type StdUtil_Access;
   subtype StdUtil_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array;
   use type StdUtil_Access_Array;
   subtype StdUtil_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access;
   use type StdUtil_Access_Array_Access;
   subtype StdUtil_Access_Array_Access_Array is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array;
   use type StdUtil_Access_Array_Access_Array;
   subtype StdUtil_Access_Array_Access_Array_Access is org.allbinary.logic.StdUtil_Package_References.StdUtil_Access_Array_Access_Array_Access;
   use type StdUtil_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype SqlConnectionPool_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access;
   use type SqlConnectionPool_Access;
   subtype SqlConnectionPool_Access_Array is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array;
   use type SqlConnectionPool_Access_Array;
   subtype SqlConnectionPool_Access_Array_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access;
   use type SqlConnectionPool_Access_Array_Access;
   subtype SqlConnectionPool_Access_Array_Access_Array is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access_Array;
   use type SqlConnectionPool_Access_Array_Access_Array;
   subtype SqlConnectionPool_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.connection.pool.SqlConnectionPool_Package_References.SqlConnectionPool_Access_Array_Access_Array_Access;
   use type SqlConnectionPool_Access_Array_Access_Array_Access;
   subtype StringUtil_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access;
   use type StringUtil_Access;
   subtype StringUtil_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array;
   use type StringUtil_Access_Array;
   subtype StringUtil_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access;
   use type StringUtil_Access_Array_Access;
   subtype StringUtil_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array;
   use type StringUtil_Access_Array_Access_Array;
   subtype StringUtil_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringUtil_Package_References.StringUtil_Access_Array_Access_Array_Access;
   use type StringUtil_Access_Array_Access_Array_Access;
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype SqlTypeStrings_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access;
   use type SqlTypeStrings_Access;
   subtype SqlTypeStrings_Access_Array is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array;
   use type SqlTypeStrings_Access_Array;
   subtype SqlTypeStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access;
   use type SqlTypeStrings_Access_Array_Access;
   subtype SqlTypeStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access_Array;
   use type SqlTypeStrings_Access_Array_Access_Array;
   subtype SqlTypeStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References.SqlTypeStrings_Access_Array_Access_Array_Access;
   use type SqlTypeStrings_Access_Array_Access_Array_Access;
   subtype SqlStrings_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access;
   use type SqlStrings_Access;
   subtype SqlStrings_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array;
   use type SqlStrings_Access_Array;
   subtype SqlStrings_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access;
   use type SqlStrings_Access_Array_Access;
   subtype SqlStrings_Access_Array_Access_Array is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array;
   use type SqlStrings_Access_Array_Access_Array;
   subtype SqlStrings_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.SqlStrings_Package_References.SqlStrings_Access_Array_Access_Array_Access;
   use type SqlStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AbSqlBasic_Access is org.allbinary.logic.communication.sql.AbSqlBasic_Package_References.AbSqlBasic_Access;
   function "=" (Left, Right : AbSqlBasic_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBasic_Package_References."=";
   subtype AbSqlBasic_Access_Array is org.allbinary.logic.communication.sql.AbSqlBasic_Package_References.AbSqlBasic_Access_Array;
   function "=" (Left, Right : AbSqlBasic_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBasic_Package_References."=";
   subtype AbSqlBasic_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlBasic_Package_References.AbSqlBasic_Access_Array_Access;
   function "=" (Left, Right : AbSqlBasic_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBasic_Package_References."=";
   subtype AbSqlBasic_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlBasic_Package_References.AbSqlBasic_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlBasic_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBasic_Package_References."=";
   subtype AbSqlBasic_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlBasic_Package_References.AbSqlBasic_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlBasic_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlBasic_Package_References."=";

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


