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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package;

package org.allbinary.business.user.commerce.shipping.ShippingMethods_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingInterface_Package renames org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ShippingMethods is tagged;
   type ShippingMethods_Access is access all ShippingMethods'Class;
   type ShippingMethods_Access_Array is array (Natural range <>) of ShippingMethods_Access;
   type ShippingMethods_Access_Array_Access is access all ShippingMethods_Access_Array;

   type ShippingMethods is new ShippingMethodsInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      shippingVector : BasicArrayList_Access;
      defaultShippingMethodInterface : ShippingInterface_Access;
   end record;

   procedure Initialize (This : in out ShippingMethods'Class; abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access);
   function Create (abeClientInformation : AbeClientInformationInterface_Access; storeFrontInterface : StoreFrontInterface_Access) return ShippingMethods_Access;
   function get (This : in out ShippingMethods) return BasicArrayList_Access;
   procedure get (This : in out ShippingMethods);
   function getShippingInterface (This : in out ShippingMethods; name : Unbounded_String) return ShippingInterface_Access;
   procedure getShippingInterface (This : in out ShippingMethods; name : Unbounded_String);
   function getDefault (This : in out ShippingMethods) return ShippingInterface_Access;
   procedure getDefault (This : in out ShippingMethods);

end org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;


