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

with AllBinary_Java;
limited with org.allbinary.business.init.InitSql_Package;
package org.allbinary.business.init.InitSql_Package_References is
   type InitSql_Access is access all org.allbinary.business.init.InitSql_Package.InitSql'Class;
   type InitSql_Access_Array is array (Natural range <>) of InitSql_Access;
   type InitSql_Access_Array_Access is access all InitSql_Access_Array;
   type InitSql_Access_Array_Access_Array is array (Natural range <>) of InitSql_Access_Array_Access;
   type InitSql_Access_Array_Access_Array_Access is access all InitSql_Access_Array_Access_Array;
   type InitSql_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitSql_Access_Array_Access;
   end record;
   function Java_Box (Value : InitSql_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitSql_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitSql_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitSql_Access_Array_Access is (if Value /= null and then Value.all in InitSql_Access_Array_Object'Class then InitSql_Access_Array_Object'Class (Value.all).Value else null);
   type InitSql_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitSql_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitSql_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitSql_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitSql_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitSql_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitSql_Access_Array_Access_Array_Object'Class then InitSql_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.InitSql_Package_References;

with org.allbinary.business.init.InitSql_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.sql.Connection_Package; use java.sql.Connection_Package;
--  with java.sql.DriverManager_Package; use java.sql.DriverManager_Package;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
--  with java.sql.ResultSetMetaData_Package; use java.sql.ResultSetMetaData_Package;
--  with java.sql.SQLException_Package; use java.sql.SQLException_Package;
--  with java.sql.Statement_Package; use java.sql.Statement_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package_References;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.StdUtil_Package_References;
limited with org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package_References;
limited with org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
with org.allbinary.logic.communication.sql.SqlTypeStrings_Package_References;
limited with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringUtil_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.business.init.InitSql_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   package SqlTypeStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype InitSql_Access is org.allbinary.business.init.InitSql_Package_References.InitSql_Access;
   function "=" (Left, Right : InitSql_Access) return Boolean renames org.allbinary.business.init.InitSql_Package_References."=";
   subtype InitSql_Access_Array is org.allbinary.business.init.InitSql_Package_References.InitSql_Access_Array;
   function "=" (Left, Right : InitSql_Access_Array) return Boolean renames org.allbinary.business.init.InitSql_Package_References."=";
   subtype InitSql_Access_Array_Access is org.allbinary.business.init.InitSql_Package_References.InitSql_Access_Array_Access;
   function "=" (Left, Right : InitSql_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitSql_Package_References."=";
   function Java_Box (Value : InitSql_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.InitSql_Package_References.Java_Box;
   function Java_Unbox_InitSql_Access_Array (Value : access Java_Object'Class) return InitSql_Access_Array_Access renames org.allbinary.business.init.InitSql_Package_References.Java_Unbox_InitSql_Access_Array;
   subtype InitSql_Access_Array_Access_Array is org.allbinary.business.init.InitSql_Package_References.InitSql_Access_Array_Access_Array;
   function "=" (Left, Right : InitSql_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.InitSql_Package_References."=";
   subtype InitSql_Access_Array_Access_Array_Access is org.allbinary.business.init.InitSql_Package_References.InitSql_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitSql_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.InitSql_Package_References."=";
   function Java_Box (Value : InitSql_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.InitSql_Package_References.Java_Box;
   function Java_Unbox_InitSql_Access_Array_Access_Array (Value : access Java_Object'Class) return InitSql_Access_Array_Access_Array_Access renames org.allbinary.business.init.InitSql_Package_References.Java_Unbox_InitSql_Access_Array_Access_Array;

   type InitSql is new Java_Object with record
      stringUtil : StringUtil_Access;
      commonSeps : CommonSeps_Access;
      sqlTypeStrings : SqlTypeStrings_Access;
      sqlStrings : SqlStrings_Access;
      stdUtil : StdUtil_Access;
      INSERT_Field : Unbounded_String;
      UPDATE : Unbounded_String;
      databaseConnectionInfoInterface : DbConnectionInfo_Access;
      userid : Unbounded_String;
      password : Unbounded_String;
      tableName : Unbounded_String;
      conn : Connection_Access;
      useridAndPassword : Boolean;
      SUCCESS_SQL_STATEMENT : Unbounded_String;
      FAILED_SQL_STATEMENT : Unbounded_String;
      INIT_SQL : Unbounded_String;
      commonStrings : CommonStrings_Access;
      EQUAL_QUOTE : Unbounded_String;
      METHOD_GET_ROW : Unbounded_String;
      METHOD_UPDATE_WHERE : Unbounded_String;
      ROW_VALUE_LABEL : Unbounded_String;
      NO_RESULTS_IN_RESULT_SET : Unbounded_String;
      INSERT_END : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitSql'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return InitSql_Access;
   procedure setTable (This : in out InitSql; tableName : Unbounded_String);
   procedure setDatabaseConnectionInfoInterface (This : in out InitSql; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function createTable (This : in out InitSql; tableData : Unbounded_String) return Boolean;
   procedure createTable (This : in out InitSql; tableData : Unbounded_String);
   function dropTable (This : in out InitSql) return Boolean;
   function getRow (This : in out InitSql; keysAndValues_Param : access HashMap_Package.HashMap'Class) return HashMap_Access;
   procedure getRow (This : in out InitSql; keysAndValues_Param : access HashMap_Package.HashMap'Class);
   procedure updateWhere (This : in out InitSql; key : Unbounded_String; value : Unbounded_String; updatedKeyValuePairs_Param : access HashMap_Package.HashMap'Class);
   procedure insert (This : in out InitSql; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getValue (This : in out InitSql; value : Unbounded_String) return Unbounded_String;
   procedure getValue (This : in out InitSql; value : Unbounded_String);
   function executeSQLStatement (This : in out InitSql; statement : Unbounded_String) return ResultSet_Access;
   procedure executeSQLStatement (This : in out InitSql; statement : Unbounded_String);
   procedure createConnection (This : in out InitSql);
   procedure initialize (This : in out InitSql);
   function getDatabaseConnectionInfoInterface (This : in out InitSql) return DatabaseConnectionInfoInterface_Access;

end org.allbinary.business.init.InitSql_Package;


