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
--  with java.sql.DriverManager_Package; use java.sql.DriverManager_Package;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
--  with java.sql.ResultSetMetaData_Package; use java.sql.ResultSetMetaData_Package;
--  with java.sql.SQLException_Package; use java.sql.SQLException_Package;
--  with java.sql.Statement_Package; use java.sql.Statement_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
with org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package; use org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
with org.allbinary.logic.communication.sql.SqlStrings_Package; use org.allbinary.logic.communication.sql.SqlStrings_Package;
with org.allbinary.logic.communication.sql.SqlTypeStrings_Package; use org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.init.InitSql_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DatabaseConnectionInfoInterface_Package renames Standard.org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package LogConfigTypeFactory_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory_Package;
   package LogConfigTypes_Package renames Standard.org.allbinary.logic.communication.log.config.type_Id.LogConfigTypes_Package;
   package SqlStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlStrings_Package;
   package SqlTypeStrings_Package renames Standard.org.allbinary.logic.communication.sql.SqlTypeStrings_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package StringValidationUtil_Package renames Standard.org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type InitSql is tagged;
   type InitSql_Access is access all InitSql'Class;
   type InitSql_Access_Array is array (Natural range <>) of InitSql_Access;
   type InitSql_Access_Array_Access is access all InitSql_Access_Array;

   type InitSql is new Java_Object with record
      stringUtil : StringUtil_Access;
      commonSeps : CommonSeps_Access;
      sqlTypeStrings : SqlTypeStrings_Access;
      sqlStrings : SqlStrings_Access;
      stdUtil : StdUtil_Access;
      INSERT : Unbounded_String;
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

   procedure Initialize (This : in out InitSql'Class; databaseConnectionInfoInterface : DbConnectionInfo_Access);
   function Create (databaseConnectionInfoInterface : DbConnectionInfo_Access) return InitSql_Access;
   procedure setTable (This : in out InitSql; tableName : Unbounded_String);
   procedure setDatabaseConnectionInfoInterface (This : in out InitSql; databaseConnectionInfoInterface : DbConnectionInfo_Access);
   function createTable (This : in out InitSql; tableData : Unbounded_String) return Boolean;
   procedure createTable (This : in out InitSql; tableData : Unbounded_String);
   function dropTable (This : in out InitSql) return Boolean;
   function getRow (This : in out InitSql; keysAndValues : HashMap_Access) return HashMap_Access;
   procedure getRow (This : in out InitSql; keysAndValues : HashMap_Access);
   procedure updateWhere (This : in out InitSql; key : Unbounded_String; value : Unbounded_String; updatedKeyValuePairs : HashMap_Access);
   procedure insert_Case (This : in out InitSql; values : BasicArrayList_Access);
   function getValue (This : in out InitSql; value : Unbounded_String) return Unbounded_String;
   procedure getValue (This : in out InitSql; value : Unbounded_String);
   function executeSQLStatement (This : in out InitSql; statement : Unbounded_String) return ResultSet_Access;
   procedure executeSQLStatement (This : in out InitSql; statement : Unbounded_String);
   procedure createConnection (This : in out InitSql);
   procedure initialize (This : in out InitSql);
   function getDatabaseConnectionInfoInterface (This : in out InitSql) return DatabaseConnectionInfoInterface_Access;

end org.allbinary.business.init.InitSql_Package;


