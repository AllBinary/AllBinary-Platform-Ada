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
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
--  with java.sql.ResultSetMetaData_Package; use java.sql.ResultSetMetaData_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlColumn_Package; use org.allbinary.logic.communication.sql.AbSqlColumn_Package;

package org.allbinary.logic.communication.sql.AbSqlRow_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbSqlRow is tagged;
   type AbSqlRow_Access is access all AbSqlRow'Class;
   type AbSqlRow_Access_Array is array (Natural range <>) of AbSqlRow_Access;
   type AbSqlRow_Access_Array_Access is access all AbSqlRow_Access_Array;
   type AbSqlRow_Access_Array_Access_Array is array (Natural range <>) of AbSqlRow_Access_Array_Access;
   type AbSqlRow_Access_Array_Access_Array_Access is access all AbSqlRow_Access_Array_Access_Array;

   type AbSqlRow is new AbSqlColumn with record
      logUtil : LogUtil_Access;
      EQUAL_QUOTE : Unbounded_String;
      ESCAPE_QUOTES : Unbounded_String;
      GET_ROW : Unbounded_String;
      METHOD_GET_ROW : Unbounded_String;
      METHOD_GET_ROWS : Unbounded_String;
      METHOD_GET_ALL_ROWS : Unbounded_String;
      METHOD_UPDATE_WHERE : Unbounded_String;
      METHOD_GET_ROWS_WHERE_BETWEEN : Unbounded_String;
      METHOD_DELETE_WHERE : Unbounded_String;
      ROW_VALUE_LABEL : Unbounded_String;
      ROW_VALUES_LABEL : Unbounded_String;
      NO_RESULTS_IN_RESULT_SET : Unbounded_String;
      COLUMN_NAME_LABEL : Unbounded_String;
      INSERT_END : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlRow'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlRow_Access;
   function getValue (This : in out AbSqlRow; value : Unbounded_String) return Unbounded_String;
   procedure getValue (This : in out AbSqlRow; value : Unbounded_String);
   procedure updateWhere (This : in out AbSqlRow; key : Unbounded_String; value : Unbounded_String; updatedKeyValuePairs_Param : access HashMap_Package.HashMap'Class);
   procedure updateWhere (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap_Package.HashMap'Class; updatedKeyValuePairs_Param : access HashMap_Package.HashMap'Class);
   procedure deleteWhere (This : in out AbSqlRow; key : Unbounded_String; value : Unbounded_String);
   procedure deleteWhere (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class);
   procedure insert (This : in out AbSqlRow; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getRow (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class) return HashMap_Access;
   procedure getRow (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class);
   function getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class) return BasicArrayList_Access;
   procedure getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class);
   function getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class; more : Unbounded_String) return BasicArrayList_Access;
   procedure getRows (This : in out AbSqlRow; keysAndValues_Param : access HashMap_Package.HashMap'Class; more : Unbounded_String);
   function getAllRows (This : in out AbSqlRow) return BasicArrayList_Access;
   function getRowsWhereBetween (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap_Package.HashMap'Class; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) return BasicArrayList_Access;
   procedure getRowsWhereBetween (This : in out AbSqlRow; whereKeyValuePairs_Param : access HashMap_Package.HashMap'Class; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String);
   function getRowsWhereBetween (This : in out AbSqlRow; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String) return BasicArrayList_Access;
   procedure getRowsWhereBetween (This : in out AbSqlRow; betweenColumn : Unbounded_String; smallest : Unbounded_String; largest : Unbounded_String);

end org.allbinary.logic.communication.sql.AbSqlRow_Package;


