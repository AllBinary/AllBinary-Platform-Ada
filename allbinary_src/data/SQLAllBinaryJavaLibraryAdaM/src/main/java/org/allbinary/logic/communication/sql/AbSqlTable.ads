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
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBasic_Package; use org.allbinary.logic.communication.sql.AbSqlBasic_Package;

package org.allbinary.logic.communication.sql.AbSqlTable_Package is

   package DbConnectionInfo_Package renames org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;

   type AbSqlTable is tagged;
   type AbSqlTable_Access is access all AbSqlTable'Class;
   type AbSqlTable_Access_Array is array (Natural range <>) of AbSqlTable_Access;
   type AbSqlTable_Access_Array_Access is access all AbSqlTable_Access_Array;

   type AbSqlTable is new AbSqlBasic with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
      METHOD_CREATED_TABLE : Unbounded_String;
      METHOD_DROP_TABLE : Unbounded_String;
      TABLE_CREATION_SUCCESS : Unbounded_String;
      DROPPED_SUCCESS : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlTable'Class; databaseConnectionInfoInterface : DbConnectionInfo_Access);
   function Create (databaseConnectionInfoInterface : DbConnectionInfo_Access) return AbSqlTable_Access;
   procedure setTableName (This : in out AbSqlTable; tableName : Unbounded_String);
   function getTableName (This : in out AbSqlTable) return Unbounded_String;
   procedure getTableName (This : in out AbSqlTable);
   function createTable (This : in out AbSqlTable; data : Unbounded_String) return Unbounded_String;
   procedure createTable (This : in out AbSqlTable; data : Unbounded_String);
   function dropTable (This : in out AbSqlTable) return Unbounded_String;
   procedure dropTable (This : in out AbSqlTable);

end org.allbinary.logic.communication.sql.AbSqlTable_Package;


