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

limited with org.allbinary.logic.communication.sql.AbSqlColumn_Package;
package org.allbinary.logic.communication.sql.AbSqlColumn_Package_References is
   type AbSqlColumn_Access is access all org.allbinary.logic.communication.sql.AbSqlColumn_Package.AbSqlColumn'Class;
   type AbSqlColumn_Access_Array is array (Natural range <>) of AbSqlColumn_Access;
   type AbSqlColumn_Access_Array_Access is access all AbSqlColumn_Access_Array;
   type AbSqlColumn_Access_Array_Access_Array is array (Natural range <>) of AbSqlColumn_Access_Array_Access;
   type AbSqlColumn_Access_Array_Access_Array_Access is access all AbSqlColumn_Access_Array_Access_Array;
end org.allbinary.logic.communication.sql.AbSqlColumn_Package_References;

with org.allbinary.logic.communication.sql.AbSqlColumn_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.sql.ResultSet_Package; use java.sql.ResultSet_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlTable_Package; use org.allbinary.logic.communication.sql.AbSqlTable_Package;

package org.allbinary.logic.communication.sql.AbSqlColumn_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype AbSqlColumn_Access is org.allbinary.logic.communication.sql.AbSqlColumn_Package_References.AbSqlColumn_Access;
   function "=" (Left, Right : AbSqlColumn_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlColumn_Package_References."=";
   subtype AbSqlColumn_Access_Array is org.allbinary.logic.communication.sql.AbSqlColumn_Package_References.AbSqlColumn_Access_Array;
   function "=" (Left, Right : AbSqlColumn_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlColumn_Package_References."=";
   subtype AbSqlColumn_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlColumn_Package_References.AbSqlColumn_Access_Array_Access;
   function "=" (Left, Right : AbSqlColumn_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlColumn_Package_References."=";
   subtype AbSqlColumn_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlColumn_Package_References.AbSqlColumn_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlColumn_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlColumn_Package_References."=";
   subtype AbSqlColumn_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlColumn_Package_References.AbSqlColumn_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlColumn_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlColumn_Package_References."=";

   type AbSqlColumn is new AbSqlTable with record
      logUtil : LogUtil_Access;
      LARGEST_INT_VALUE_IN_COLUMN : Unbounded_String;
      METHOD_GET_LARGETS_INTEGER_IN_COLUMN : Unbounded_String;
      METHOD_GET_COLUMN : Unbounded_String;
      METHOD_GET_COLUMN_WHERE : Unbounded_String;
      INVALID_RESULT : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlColumn'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlColumn_Access;
   function getLargestIntegerInColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) return Unbounded_String;
   procedure getLargestIntegerInColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String);
   function getColumn (This : in out AbSqlColumn; columnName : Unbounded_String) return BasicArrayList_Access;
   procedure getColumn (This : in out AbSqlColumn; columnName : Unbounded_String);
   function getColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String) return BasicArrayList_Access;
   procedure getColumnWhere (This : in out AbSqlColumn; columnName : Unbounded_String; key : Unbounded_String; value : Unbounded_String);

end org.allbinary.logic.communication.sql.AbSqlColumn_Package;


