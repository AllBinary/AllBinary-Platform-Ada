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
limited with org.allbinary.business.installer.InitDb_Package;
package org.allbinary.business.installer.InitDb_Package_References is
   type InitDb_Access is access all org.allbinary.business.installer.InitDb_Package.InitDb'Class;
   type InitDb_Access_Array is array (Natural range <>) of InitDb_Access;
   type InitDb_Access_Array_Access is access all InitDb_Access_Array;
   type InitDb_Access_Array_Access_Array is array (Natural range <>) of InitDb_Access_Array_Access;
   type InitDb_Access_Array_Access_Array_Access is access all InitDb_Access_Array_Access_Array;
   type InitDb_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitDb_Access_Array_Access;
   end record;
   function Java_Box (Value : InitDb_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitDb_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitDb_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitDb_Access_Array_Access is (if Value /= null and then Value.all in InitDb_Access_Array_Object'Class then InitDb_Access_Array_Object'Class (Value.all).Value else null);
   type InitDb_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : InitDb_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : InitDb_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new InitDb_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_InitDb_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return InitDb_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in InitDb_Access_Array_Access_Array_Object'Class then InitDb_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.installer.InitDb_Package_References;

with org.allbinary.business.installer.InitDb_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.lang.reflect.Method_Package; use java.lang.reflect.Method_Package;
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
with org.allbinary.business.init.db.DbConnectionInfo_Package_References;

package org.allbinary.business.installer.InitDb_Package is

   package DbConnectionInfo_Package renames Standard.org.allbinary.business.init.db.DbConnectionInfo_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype InitDb_Access is org.allbinary.business.installer.InitDb_Package_References.InitDb_Access;
   function "=" (Left, Right : InitDb_Access) return Boolean renames org.allbinary.business.installer.InitDb_Package_References."=";
   subtype InitDb_Access_Array is org.allbinary.business.installer.InitDb_Package_References.InitDb_Access_Array;
   function "=" (Left, Right : InitDb_Access_Array) return Boolean renames org.allbinary.business.installer.InitDb_Package_References."=";
   subtype InitDb_Access_Array_Access is org.allbinary.business.installer.InitDb_Package_References.InitDb_Access_Array_Access;
   function "=" (Left, Right : InitDb_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitDb_Package_References."=";
   function Java_Box (Value : InitDb_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitDb_Package_References.Java_Box;
   function Java_Unbox_InitDb_Access_Array (Value : access Java_Object'Class) return InitDb_Access_Array_Access renames org.allbinary.business.installer.InitDb_Package_References.Java_Unbox_InitDb_Access_Array;
   subtype InitDb_Access_Array_Access_Array is org.allbinary.business.installer.InitDb_Package_References.InitDb_Access_Array_Access_Array;
   function "=" (Left, Right : InitDb_Access_Array_Access_Array) return Boolean renames org.allbinary.business.installer.InitDb_Package_References."=";
   subtype InitDb_Access_Array_Access_Array_Access is org.allbinary.business.installer.InitDb_Package_References.InitDb_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InitDb_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.installer.InitDb_Package_References."=";
   function Java_Box (Value : InitDb_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.installer.InitDb_Package_References.Java_Box;
   function Java_Unbox_InitDb_Access_Array_Access_Array (Value : access Java_Object'Class) return InitDb_Access_Array_Access_Array_Access renames org.allbinary.business.installer.InitDb_Package_References.Java_Unbox_InitDb_Access_Array_Access_Array;

   type InitDb is new Java_Object with record
      anyType : Java_Object_Access;
      METHOD_CALL_GET_HOST_NAME : Unbounded_String;
      METHOD_CALL_ADD_USERS : Unbounded_String;
      METHOD_CALL_ADD_DATABASES : Unbounded_String;
      METHOD_CALL_ADD_TABLES : Unbounded_String;
      METHOD_CALL_TEMP_MAIN_PATH : Unbounded_String;
      METHOD_CALL_MAIN_PATH : Unbounded_String;
   end record;

   procedure Initialize (This : in out InitDb'Class);
   function Create return InitDb_Access;
   procedure Initialize (This : in out InitDb'Class; dbConnectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class);
   function Create (dbConnectionInfo_Param : access DbConnectionInfo_Package.DbConnectionInfo'Class) return InitDb_Access;
   procedure setHelper (This : in out InitDb; anyType_Param : access Java_Object'Class);
   function getHelper (This : in out InitDb) return Java_Object_Access;
   function getHostName (This : in out InitDb) return Unbounded_String;
   function addUsers (This : in out InitDb) return Boolean;
   function addDatabases (This : in out InitDb) return Boolean;
   function addTables (This : in out InitDb) return Boolean;
   function useTemporaryMainPath (This : in out InitDb) return Boolean;
   function useNormalMainPath (This : in out InitDb) return Boolean;
   procedure setHelper (This : in out InitDb; Value : Unbounded_String);

end org.allbinary.business.installer.InitDb_Package;


