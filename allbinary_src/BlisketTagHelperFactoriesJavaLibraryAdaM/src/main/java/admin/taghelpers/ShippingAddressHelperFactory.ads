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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.LicensingException_Package; use org.allbinary.logic.system.security.licensing.LicensingException_Package;
with admin.taghelpers.TagHelperFactory_Package; use admin.taghelpers.TagHelperFactory_Package;
with admin.taghelpers.ShippingAddressHelper_Package; use admin.taghelpers.ShippingAddressHelper_Package;

package admin.taghelpers.ShippingAddressHelperFactory_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package LicensingException_Package renames Standard.org.allbinary.logic.system.security.licensing.LicensingException_Package;

   type ShippingAddressHelperFactory is tagged;
   type ShippingAddressHelperFactory_Access is access all ShippingAddressHelperFactory'Class;
   type ShippingAddressHelperFactory_Access_Array is array (Natural range <>) of ShippingAddressHelperFactory_Access;
   type ShippingAddressHelperFactory_Access_Array_Access is access all ShippingAddressHelperFactory_Access_Array;

   type ShippingAddressHelperFactory is new TagHelperFactory with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out ShippingAddressHelperFactory'Class);
   function Create return ShippingAddressHelperFactory_Access;
   function getInstance (This : in out ShippingAddressHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class) return Java_Object_Access;
   procedure getInstance (This : in out ShippingAddressHelperFactory; hashMap_Param : access HashMap'Class; pageContext_Param : access PageContext'Class);

end admin.taghelpers.ShippingAddressHelperFactory_Package;


