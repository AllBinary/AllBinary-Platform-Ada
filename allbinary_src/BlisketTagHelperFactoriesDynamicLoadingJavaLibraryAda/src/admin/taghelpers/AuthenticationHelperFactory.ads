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

limited with admin.taghelpers.AuthenticationHelperFactory_Package;
package admin.taghelpers.AuthenticationHelperFactory_Package_References is
   type AuthenticationHelperFactory_Access is access all admin.taghelpers.AuthenticationHelperFactory_Package.AuthenticationHelperFactory'Class;
   type AuthenticationHelperFactory_Access_Array is array (Natural range <>) of AuthenticationHelperFactory_Access;
   type AuthenticationHelperFactory_Access_Array_Access is access all AuthenticationHelperFactory_Access_Array;
   type AuthenticationHelperFactory_Access_Array_Access_Array is array (Natural range <>) of AuthenticationHelperFactory_Access_Array_Access;
   type AuthenticationHelperFactory_Access_Array_Access_Array_Access is access all AuthenticationHelperFactory_Access_Array_Access_Array;
end admin.taghelpers.AuthenticationHelperFactory_Package_References;

with admin.taghelpers.AuthenticationHelperFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;

package admin.taghelpers.AuthenticationHelperFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AuthenticationHelperFactory_Access is admin.taghelpers.AuthenticationHelperFactory_Package_References.AuthenticationHelperFactory_Access;
   function "=" (Left, Right : AuthenticationHelperFactory_Access) return Boolean renames admin.taghelpers.AuthenticationHelperFactory_Package_References."=";
   subtype AuthenticationHelperFactory_Access_Array is admin.taghelpers.AuthenticationHelperFactory_Package_References.AuthenticationHelperFactory_Access_Array;
   function "=" (Left, Right : AuthenticationHelperFactory_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelperFactory_Package_References."=";
   subtype AuthenticationHelperFactory_Access_Array_Access is admin.taghelpers.AuthenticationHelperFactory_Package_References.AuthenticationHelperFactory_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelperFactory_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelperFactory_Package_References."=";
   subtype AuthenticationHelperFactory_Access_Array_Access_Array is admin.taghelpers.AuthenticationHelperFactory_Package_References.AuthenticationHelperFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AuthenticationHelperFactory_Access_Array_Access_Array) return Boolean renames admin.taghelpers.AuthenticationHelperFactory_Package_References."=";
   subtype AuthenticationHelperFactory_Access_Array_Access_Array_Access is admin.taghelpers.AuthenticationHelperFactory_Package_References.AuthenticationHelperFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AuthenticationHelperFactory_Access_Array_Access_Array_Access) return Boolean renames admin.taghelpers.AuthenticationHelperFactory_Package_References."=";

   type AuthenticationHelperFactory is new Java_Object and TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out AuthenticationHelperFactory'Class);
   function Create return AuthenticationHelperFactory_Access;
   function getInstance (This : in out AuthenticationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out AuthenticationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class);
   function getInstance (This : in out AuthenticationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return Java_Object_Access;
   procedure getInstance (This : in out AuthenticationHelperFactory; hashMap_Param : access HashMap_Package.HashMap'Class; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end admin.taghelpers.AuthenticationHelperFactory_Package;


