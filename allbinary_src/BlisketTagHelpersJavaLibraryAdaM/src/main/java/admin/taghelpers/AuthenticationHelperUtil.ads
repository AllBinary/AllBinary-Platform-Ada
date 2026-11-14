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
limited with admin.taghelpers.AuthenticationHelperUtil_Package;
package admin.taghelpers.AuthenticationHelperUtil_Package_References is
   type AuthenticationHelperUtil_Access is access all admin.taghelpers.AuthenticationHelperUtil_Package.AuthenticationHelperUtil'Class;
   type AuthenticationHelperUtil_Access_Array is array (Natural range <>) of AuthenticationHelperUtil_Access;
   type AuthenticationHelperUtil_Access_Array_Access is access all AuthenticationHelperUtil_Access_Array;
   type AuthenticationHelperUtil_Access_Array_Access_Array is array (Natural range <>) of AuthenticationHelperUtil_Access_Array_Access;
   type AuthenticationHelperUtil_Access_Array_Access_Array_Access is access all AuthenticationHelperUtil_Access_Array_Access_Array;
   type AuthenticationHelperUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationHelperUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationHelperUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationHelperUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationHelperUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationHelperUtil_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationHelperUtil_Access_Array_Object'Class then AuthenticationHelperUtil_Access_Array_Object'Class (Value.all).Value else null);
   type AuthenticationHelperUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AuthenticationHelperUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AuthenticationHelperUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AuthenticationHelperUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AuthenticationHelperUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AuthenticationHelperUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AuthenticationHelperUtil_Access_Array_Access_Array_Object'Class then AuthenticationHelperUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end admin.taghelpers.AuthenticationHelperUtil_Package_References;

with admin.taghelpers.AuthenticationHelperUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with admin.taghelpers.AuthenticationHelper_Package;
with admin.taghelpers.AuthenticationHelper_Package_References;

package admin.taghelpers.AuthenticationHelperUtil_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype AuthenticationHelper_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access;
   use type AuthenticationHelper_Access;
   subtype AuthenticationHelper_Access_Array is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array;
   use type AuthenticationHelper_Access_Array;
   subtype AuthenticationHelper_Access_Array_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access;
   use type AuthenticationHelper_Access_Array_Access;
   subtype AuthenticationHelper_Access_Array_Access_Array is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access_Array;
   use type AuthenticationHelper_Access_Array_Access_Array;
   subtype AuthenticationHelper_Access_Array_Access_Array_Access is admin.taghelpers.AuthenticationHelper_Package_References.AuthenticationHelper_Access_Array_Access_Array_Access;
   use type AuthenticationHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AuthenticationHelperUtil_Access is admin.taghelpers.AuthenticationHelperUtil_Package_References.AuthenticationHelperUtil_Access;
   function "=" (Left, Right : AuthenticationHelperUtil_Access) return Boolean renames admin.taghelpers.AuthenticationHelperUtil_Package_References."=";
   subtype AuthenticationHelperUtil_Access_Array is admin.taghelpers.AuthenticationHelperUtil_Package_References.AuthenticationHelperUtil_Access_Array;
   function "=" (Left, Right : AuthenticationHelperUtil_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelperUtil_Package_References."=";
   subtype AuthenticationHelperUtil_Access_Array_Access is admin.taghelpers.AuthenticationHelperUtil_Package_References.AuthenticationHelperUtil_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelperUtil_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelperUtil_Package_References."=";
   function Java_Box (Value : AuthenticationHelperUtil_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationHelperUtil_Package_References.Java_Box;
   function Java_Unbox_AuthenticationHelperUtil_Access_Array (Value : access Java_Object'Class) return AuthenticationHelperUtil_Access_Array_Access renames admin.taghelpers.AuthenticationHelperUtil_Package_References.Java_Unbox_AuthenticationHelperUtil_Access_Array;
   subtype AuthenticationHelperUtil_Access_Array_Access_Array is admin.taghelpers.AuthenticationHelperUtil_Package_References.AuthenticationHelperUtil_Access_Array_Access_Array;
   function "=" (Left, Right : AuthenticationHelperUtil_Access_Array_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelperUtil_Package_References."=";
   subtype AuthenticationHelperUtil_Access_Array_Access_Array_Access is admin.taghelpers.AuthenticationHelperUtil_Package_References.AuthenticationHelperUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelperUtil_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelperUtil_Package_References."=";
   function Java_Box (Value : AuthenticationHelperUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames admin.taghelpers.AuthenticationHelperUtil_Package_References.Java_Box;
   function Java_Unbox_AuthenticationHelperUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return AuthenticationHelperUtil_Access_Array_Access_Array_Access renames admin.taghelpers.AuthenticationHelperUtil_Package_References.Java_Unbox_AuthenticationHelperUtil_Access_Array_Access_Array;

   type AuthenticationHelperUtil is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AuthenticationHelperUtil_Access;

   procedure Initialize (This : in out AuthenticationHelperUtil'Class);
   function Create return AuthenticationHelperUtil_Access;
   function getInstance return AuthenticationHelperUtil_Access;
   function isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String) return Boolean;
   procedure isAuthorized (This : in out AuthenticationHelperUtil; authenticationHelper_Param : access AuthenticationHelper_Package.AuthenticationHelper'Class; filePath : Unbounded_String);

end admin.taghelpers.AuthenticationHelperUtil_Package;


