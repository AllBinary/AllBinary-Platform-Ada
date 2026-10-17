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
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.jsp.PageContext_Package; use javax.servlet.jsp.PageContext_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;
with admin.taghelpers.HelperFactory_Package; use admin.taghelpers.HelperFactory_Package;

package admin.taghelpers.AuthenticationRequestHelperFactory_Package is

   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type AuthenticationRequestHelperFactory is tagged;
   type AuthenticationRequestHelperFactory_Access is access all AuthenticationRequestHelperFactory'Class;
   type AuthenticationRequestHelperFactory_Access_Array is array (Natural range <>) of AuthenticationRequestHelperFactory_Access;
   type AuthenticationRequestHelperFactory_Access_Array_Access is access all AuthenticationRequestHelperFactory_Access_Array;

   type AuthenticationRequestHelperFactory is new TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out AuthenticationRequestHelperFactory'Class);
   function Create return AuthenticationRequestHelperFactory_Access;
   function getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);
   function getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; httpServletRequest_Param : access HttpServletRequest'Class) return Java_Object_Access;
   procedure getInstance (This : in out AuthenticationRequestHelperFactory; hashMap_Param : access HashMap'Class; httpServletRequest_Param : access HttpServletRequest'Class);

end admin.taghelpers.AuthenticationRequestHelperFactory_Package;


