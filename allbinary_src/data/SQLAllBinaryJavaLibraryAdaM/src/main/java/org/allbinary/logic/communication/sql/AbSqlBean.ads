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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlRow_Package; use org.allbinary.logic.communication.sql.AbSqlRow_Package;

package org.allbinary.logic.communication.sql.AbSqlBean_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AbSqlBean is tagged;
   type AbSqlBean_Access is access all AbSqlBean'Class;
   type AbSqlBean_Access_Array is array (Natural range <>) of AbSqlBean_Access;
   type AbSqlBean_Access_Array_Access is access all AbSqlBean_Access_Array;
   type AbSqlBean_Access_Array_Access_Array is array (Natural range <>) of AbSqlBean_Access_Array_Access;
   type AbSqlBean_Access_Array_Access_Array_Access is access all AbSqlBean_Access_Array_Access_Array;

   type AbSqlBean is new AbSqlRow with record
      logUtil : LogUtil_Access;
      METHOD_GET_FIELD : Unbounded_String;
      METHOD_IS_SUBSET_OF_ENTRY : Unbounded_String;
   end record;

   procedure Initialize (This : in out AbSqlBean'Class; databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (databaseConnectionInfoInterface_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return AbSqlBean_Access;
   function getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String) return Unbounded_String;
   procedure getField (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; requestedField : Unbounded_String);
   function getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap_Package.HashMap'Class; requestedField : Unbounded_String) return Unbounded_String;
   procedure getField (This : in out AbSqlBean; keysAndValues_Param : access HashMap_Package.HashMap'Class; requestedField : Unbounded_String);
   function isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap_Package.HashMap'Class) return Unbounded_String;
   procedure isSubsetOfEntry (This : in out AbSqlBean; key : Unbounded_String; value : Unbounded_String; columnsAndValues_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.logic.communication.sql.AbSqlBean_Package;


