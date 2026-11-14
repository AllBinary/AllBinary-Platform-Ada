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
limited with org.allbinary.business.init.db.DbConnectionInfo_Package;
package org.allbinary.business.init.db.DbConnectionInfo_Package_References is
   type DbConnectionInfo_Access is access all org.allbinary.business.init.db.DbConnectionInfo_Package.DbConnectionInfo'Class;
   type DbConnectionInfo_Access_Array is array (Natural range <>) of DbConnectionInfo_Access;
   type DbConnectionInfo_Access_Array_Access is access all DbConnectionInfo_Access_Array;
   type DbConnectionInfo_Access_Array_Access_Array is array (Natural range <>) of DbConnectionInfo_Access_Array_Access;
   type DbConnectionInfo_Access_Array_Access_Array_Access is access all DbConnectionInfo_Access_Array_Access_Array;
   type DbConnectionInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DbConnectionInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : DbConnectionInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DbConnectionInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DbConnectionInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DbConnectionInfo_Access_Array_Access is (if Value /= null and then Value.all in DbConnectionInfo_Access_Array_Object'Class then DbConnectionInfo_Access_Array_Object'Class (Value.all).Value else null);
   type DbConnectionInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DbConnectionInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DbConnectionInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DbConnectionInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DbConnectionInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DbConnectionInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DbConnectionInfo_Access_Array_Access_Array_Object'Class then DbConnectionInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.db.DbConnectionInfo_Package_References;

with org.allbinary.business.init.db.DbConnectionInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package; use org.allbinary.business.init.db.DatabaseConnectionInfoInterface_Package;

package org.allbinary.business.init.db.DbConnectionInfo_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DbConnectionInfo_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access;
   function "=" (Left, Right : DbConnectionInfo_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   function Java_Box (Value : DbConnectionInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.DbConnectionInfo_Package_References.Java_Box;
   function Java_Unbox_DbConnectionInfo_Access_Array (Value : access Java_Object'Class) return DbConnectionInfo_Access_Array_Access renames org.allbinary.business.init.db.DbConnectionInfo_Package_References.Java_Unbox_DbConnectionInfo_Access_Array;
   subtype DbConnectionInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   subtype DbConnectionInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbConnectionInfo_Package_References.DbConnectionInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbConnectionInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbConnectionInfo_Package_References."=";
   function Java_Box (Value : DbConnectionInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.DbConnectionInfo_Package_References.Java_Box;
   function Java_Unbox_DbConnectionInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return DbConnectionInfo_Access_Array_Access_Array_Access renames org.allbinary.business.init.db.DbConnectionInfo_Package_References.Java_Unbox_DbConnectionInfo_Access_Array_Access_Array;

   type DbConnectionInfo is new Java_Object and DatabaseConnectionInfoInterface with record
      jdbcDriver : Unbounded_String;
      name : Unbounded_String;
      userName : Unbounded_String;
      password : Unbounded_String;
      schema : Unbounded_String;
      server : Unbounded_String;
      port : Unbounded_String;
      url : Unbounded_String;
      host : Unbounded_String;
      SCHEMA_SEP : Unbounded_String;
      USER_NAME_KEY : Unbounded_String;
      PASSWORD_KEY : Unbounded_String;
   end record;

   procedure Initialize (This : in out DbConnectionInfo'Class);
   function Create return DbConnectionInfo_Access;
   procedure updateUrl (This : in out DbConnectionInfo);
   function getUrl (This : in out DbConnectionInfo) return Unbounded_String;
   function getJdbcDriver (This : in out DbConnectionInfo) return Unbounded_String;
   function getName (This : in out DbConnectionInfo) return Unbounded_String;
   function getUserName (This : in out DbConnectionInfo) return Unbounded_String;
   function getPassword (This : in out DbConnectionInfo) return Unbounded_String;
   procedure updateHost (This : in out DbConnectionInfo);
   function getHost (This : in out DbConnectionInfo) return Unbounded_String;
   function getSchema (This : in out DbConnectionInfo) return Unbounded_String;
   function getServer (This : in out DbConnectionInfo) return Unbounded_String;
   function getPort (This : in out DbConnectionInfo) return Unbounded_String;
   procedure setJdbcDriver (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setName (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setUserName (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setPassword (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setSchema (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setServer (This : in out DbConnectionInfo; value : Unbounded_String);
   procedure setPort (This : in out DbConnectionInfo; value : Unbounded_String);
   function getUserNameKey (This : in out DbConnectionInfo) return Unbounded_String;
   function getPasswordKey (This : in out DbConnectionInfo) return Unbounded_String;

end org.allbinary.business.init.db.DbConnectionInfo_Package;


