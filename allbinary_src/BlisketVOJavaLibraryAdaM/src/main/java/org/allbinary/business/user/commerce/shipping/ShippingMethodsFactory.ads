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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package; use org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;

package org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;

   type ShippingMethodsFactory is tagged;
   type ShippingMethodsFactory_Access is access all ShippingMethodsFactory'Class;
   type ShippingMethodsFactory_Access_Array is array (Natural range <>) of ShippingMethodsFactory_Access;
   type ShippingMethodsFactory_Access_Array_Access is access all ShippingMethodsFactory_Access_Array;
   type ShippingMethodsFactory_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodsFactory_Access_Array_Access;
   type ShippingMethodsFactory_Access_Array_Access_Array_Access is access all ShippingMethodsFactory_Access_Array_Access_Array;

   type ShippingMethodsFactory is new Java_Object with record
      defaultShippingMethodInterface : ShippingInterface_Access;
      document : Document_Access;
      shippingVector : BasicArrayList_Access;
   end record;
   SHIPPINGMETHODSFILEPATHSTRING : Unbounded_String;
   SHIPPINGMETHODSFILENAME : Unbounded_String;

   procedure Initialize (This : in out ShippingMethodsFactory'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return ShippingMethodsFactory_Access;
   function getInstance (This : in out ShippingMethodsFactory) return BasicArrayList_Access;
   function getDefaultInstance (This : in out ShippingMethodsFactory) return ShippingInterface_Access;

end org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package;


