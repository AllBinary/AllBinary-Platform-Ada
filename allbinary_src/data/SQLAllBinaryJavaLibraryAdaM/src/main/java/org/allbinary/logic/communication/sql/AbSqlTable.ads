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

limited with org.allbinary.logic.communication.sql.AbSqlTable_Package;
package org.allbinary.logic.communication.sql.AbSqlTable_Package_References is
   type AbSqlTable_Access is access all org.allbinary.logic.communication.sql.AbSqlTable_Package.AbSqlTable'Class;
   type AbSqlTable_Access_Array is array (Natural range <>) of AbSqlTable_Access;
   type AbSqlTable_Access_Array_Access is access all AbSqlTable_Access_Array;
   type AbSqlTable_Access_Array_Access_Array is array (Natural range <>) of AbSqlTable_Access_Array_Access;
   type AbSqlTable_Access_Array_Access_Array_Access is access all AbSqlTable_Access_Array_Access_Array;
end org.allbinary.logic.communication.sql.AbSqlTable_Package_References;

with org.allbinary.logic.communication.sql.AbSqlTable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package; use org.allbinary.logic.communication.sql.AbSqlBasic_Package;

package org.allbinary.logic.communication.sql.AbSqlTable_Package is

   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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


   subtype AbSqlTable_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access;
   function "=" (Left, Right : AbSqlTable_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array;
   function "=" (Left, Right : AbSqlTable_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access_Array is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";
   subtype AbSqlTable_Access_Array_Access_Array_Access is org.allbinary.logic.communication.sql.AbSqlTable_Package_References.AbSqlTable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbSqlTable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.sql.AbSqlTable_Package_References."=";

   type AbSqlTable is new AbSqlBasic with record
      AbSqlTable_Field_logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      METHOD_CREATED_TABLE : Unbounded_String;
      METHOD_DROP_TABLE : Unbounded_String;
      TABLE_CREATION_SUCCESS : Unbounded_String;
      DROPPED_SUCCESS : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlTable'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlTable_Access;
   procedure setTableName (This : in out AbSqlTable; tableName : Unbounded_String);
   function getTableName (This : in out AbSqlTable) return Unbounded_String;
   function createTable (This : in out AbSqlTable; data : Unbounded_String) return Unbounded_String;
   procedure createTable (This : in out AbSqlTable; data : Unbounded_String);
   function dropTable (This : in out AbSqlTable) return Unbounded_String;

end org.allbinary.logic.communication.sql.AbSqlTable_Package;


