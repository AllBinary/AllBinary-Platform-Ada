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

package admin.taghelpers.BasketHelperFactory_Package is

   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type BasketHelperFactory is tagged;
   type BasketHelperFactory_Access is access all BasketHelperFactory'Class;
   type BasketHelperFactory_Access_Array is array (Natural range <>) of BasketHelperFactory_Access;
   type BasketHelperFactory_Access_Array_Access is access all BasketHelperFactory_Access_Array;

   type BasketHelperFactory is new TagHelperFactoryInterface with null record;
   CLASSNAME : Unbounded_String;
   FACTORYNAME : Unbounded_String;

   procedure Initialize (This : in out BasketHelperFactory'Class);
   function Create return BasketHelperFactory_Access;
   function getInstance (This : in out BasketHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access) return Java_Object_Access;
   procedure getInstance (This : in out BasketHelperFactory; hashMap : HashMap_Access; pageContext : PageContext_Access);

end admin.taghelpers.BasketHelperFactory_Package;


