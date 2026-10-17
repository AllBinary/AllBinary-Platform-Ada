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
with admin.taghelpers.TagHelperFactoryInterface_Package; use admin.taghelpers.TagHelperFactoryInterface_Package;

package admin.taghelpers.PermissionItemsRequestHelperFactory_Package is

   package LicensingException_Package renames org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type PermissionItemsRequestHelperFactory is tagged;
   type PermissionItemsRequestHelperFactory_Access is access all PermissionItemsRequestHelperFactory'Class;
   type PermissionItemsRequestHelperFactory_Access_Array is array (Natural range <>) of PermissionItemsRequestHelperFactory_Access;
   type PermissionItemsRequestHelperFactory_Access_Array_Access is access all PermissionItemsRequestHelperFactory_Access_Array;

   type PermissionItemsRequestHelperFactory is new TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out PermissionItemsRequestHelperFactory'Class);
   function Create return PermissionItemsRequestHelperFactory_Access;
   function getInstance (This : in out PermissionItemsRequestHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access;
   procedure getInstance (This : in out PermissionItemsRequestHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access);

end admin.taghelpers.PermissionItemsRequestHelperFactory_Package;


