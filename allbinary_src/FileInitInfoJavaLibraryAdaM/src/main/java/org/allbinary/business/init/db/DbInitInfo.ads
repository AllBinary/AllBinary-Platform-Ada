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
limited with org.allbinary.business.init.db.DbInitInfo_Package;
package org.allbinary.business.init.db.DbInitInfo_Package_References is
   type DbInitInfo_Access is access all org.allbinary.business.init.db.DbInitInfo_Package.DbInitInfo'Class;
   type DbInitInfo_Access_Array is array (Natural range <>) of DbInitInfo_Access;
   type DbInitInfo_Access_Array_Access is access all DbInitInfo_Access_Array;
   type DbInitInfo_Access_Array_Access_Array is array (Natural range <>) of DbInitInfo_Access_Array_Access;
   type DbInitInfo_Access_Array_Access_Array_Access is access all DbInitInfo_Access_Array_Access_Array;
   type DbInitInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DbInitInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : DbInitInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DbInitInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DbInitInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DbInitInfo_Access_Array_Access is (if Value /= null and then Value.all in DbInitInfo_Access_Array_Object'Class then DbInitInfo_Access_Array_Object'Class (Value.all).Value else null);
   type DbInitInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DbInitInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DbInitInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DbInitInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DbInitInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DbInitInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DbInitInfo_Access_Array_Access_Array_Object'Class then DbInitInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.init.db.DbInitInfo_Package_References;

with org.allbinary.business.init.db.DbInitInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.http.HttpData_Package;
with org.allbinary.logic.communication.http.HttpData_Package_References;
limited with org.allbinary.logic.io.file.directory.Directory_Package;
with org.allbinary.logic.io.file.directory.Directory_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.business.init.db.DbConnectionInfo_Package; use org.allbinary.business.init.db.DbConnectionInfo_Package;

package org.allbinary.business.init.db.DbInitInfo_Package is

   package HttpData_Package renames Standard.org.allbinary.logic.communication.http.HttpData_Package;
   package Directory_Package renames Standard.org.allbinary.logic.io.file.directory.Directory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype HttpData_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access;
   use type HttpData_Access;
   subtype HttpData_Access_Array is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array;
   use type HttpData_Access_Array;
   subtype HttpData_Access_Array_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access;
   use type HttpData_Access_Array_Access;
   subtype HttpData_Access_Array_Access_Array is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access_Array;
   use type HttpData_Access_Array_Access_Array;
   subtype HttpData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.HttpData_Package_References.HttpData_Access_Array_Access_Array_Access;
   use type HttpData_Access_Array_Access_Array_Access;
   subtype Directory_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access;
   use type Directory_Access;
   subtype Directory_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array;
   use type Directory_Access_Array;
   subtype Directory_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access;
   use type Directory_Access_Array_Access;
   subtype Directory_Access_Array_Access_Array is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array;
   use type Directory_Access_Array_Access_Array;
   subtype Directory_Access_Array_Access_Array_Access is org.allbinary.logic.io.file.directory.Directory_Package_References.Directory_Access_Array_Access_Array_Access;
   use type Directory_Access_Array_Access_Array_Access;
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


   subtype DbInitInfo_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access;
   function "=" (Left, Right : DbInitInfo_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array;
   function "=" (Left, Right : DbInitInfo_Access_Array) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   function Java_Box (Value : DbInitInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.DbInitInfo_Package_References.Java_Box;
   function Java_Unbox_DbInitInfo_Access_Array (Value : access Java_Object'Class) return DbInitInfo_Access_Array_Access renames org.allbinary.business.init.db.DbInitInfo_Package_References.Java_Unbox_DbInitInfo_Access_Array;
   subtype DbInitInfo_Access_Array_Access_Array is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access_Array;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   subtype DbInitInfo_Access_Array_Access_Array_Access is org.allbinary.business.init.db.DbInitInfo_Package_References.DbInitInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DbInitInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.init.db.DbInitInfo_Package_References."=";
   function Java_Box (Value : DbInitInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.init.db.DbInitInfo_Package_References.Java_Box;
   function Java_Unbox_DbInitInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return DbInitInfo_Access_Array_Access_Array_Access renames org.allbinary.business.init.db.DbInitInfo_Package_References.Java_Unbox_DbInitInfo_Access_Array_Access_Array;

   type DbInitInfo is new DbConnectionInfo with record
      commonStrings : CommonStrings_Access;
      directory : Directory_Access;
      httpData : HttpData_Access;
      GET_URL : Unbounded_String;
      PACKAGE_Id : Unbounded_String;
      initFileName : Unbounded_String;
      hasRead : Boolean;
   end record;

   procedure Initialize (This : in out DbInitInfo'Class; initFileName : Unbounded_String; read : Boolean);
   function Create (initFileName : Unbounded_String; read : Boolean) return DbInitInfo_Access;
   function getUrl (This : in out DbInitInfo) return Unbounded_String;
   procedure write (This : in out DbInitInfo);
   procedure load (This : in out DbInitInfo);
   procedure setHasRead (This : in out DbInitInfo; value : Boolean);
   procedure updateIfNeeded (This : in out DbInitInfo);
   function getName (This : in out DbInitInfo) return Unbounded_String;
   function getUserName (This : in out DbInitInfo) return Unbounded_String;
   function getPassword (This : in out DbInitInfo) return Unbounded_String;
   function getSchema (This : in out DbInitInfo) return Unbounded_String;
   function getServer (This : in out DbInitInfo) return Unbounded_String;
   function getPort (This : in out DbInitInfo) return Unbounded_String;

end org.allbinary.business.init.db.DbInitInfo_Package;


