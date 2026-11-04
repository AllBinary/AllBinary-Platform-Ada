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

limited with org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;
package org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References is
   type ShippingMethods_Access is access all org.allbinary.business.user.commerce.shipping.ShippingMethods_Package.ShippingMethods'Class;
   type ShippingMethods_Access_Array is array (Natural range <>) of ShippingMethods_Access;
   type ShippingMethods_Access_Array_Access is access all ShippingMethods_Access_Array;
   type ShippingMethods_Access_Array_Access_Array is array (Natural range <>) of ShippingMethods_Access_Array_Access;
   type ShippingMethods_Access_Array_Access_Array_Access is access all ShippingMethods_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References;

with org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
with org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodsInterface_Package;

package org.allbinary.business.user.commerce.shipping.ShippingMethods_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
   subtype ShippingInterface_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access;
   use type ShippingInterface_Access;
   subtype ShippingInterface_Access_Array is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array;
   use type ShippingInterface_Access_Array;
   subtype ShippingInterface_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access;
   use type ShippingInterface_Access_Array_Access;
   subtype ShippingInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access_Array;
   use type ShippingInterface_Access_Array_Access_Array;
   subtype ShippingInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package_References.ShippingInterface_Access_Array_Access_Array_Access;
   use type ShippingInterface_Access_Array_Access_Array_Access;
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
   subtype AbeClientInformationInterface_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access;
   use type AbeClientInformationInterface_Access;
   subtype AbeClientInformationInterface_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array;
   use type AbeClientInformationInterface_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access;
   subtype AbeClientInformationInterface_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array;
   use type AbeClientInformationInterface_Access_Array_Access_Array;
   subtype AbeClientInformationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References.AbeClientInformationInterface_Access_Array_Access_Array_Access;
   use type AbeClientInformationInterface_Access_Array_Access_Array_Access;
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


   subtype ShippingMethods_Access is org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References.ShippingMethods_Access;
   function "=" (Left, Right : ShippingMethods_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References."=";
   subtype ShippingMethods_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References.ShippingMethods_Access_Array;
   function "=" (Left, Right : ShippingMethods_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References."=";
   subtype ShippingMethods_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References.ShippingMethods_Access_Array_Access;
   function "=" (Left, Right : ShippingMethods_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References."=";
   subtype ShippingMethods_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References.ShippingMethods_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingMethods_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References."=";
   subtype ShippingMethods_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References.ShippingMethods_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingMethods_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethods_Package_References."=";

   type ShippingMethods is new Java_Object and ShippingMethodsInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      shippingVector : BasicArrayList_Access;
      defaultShippingMethodInterface : ShippingInterface_Access;
   end record;

   procedure Initialize (This : in out ShippingMethods'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return ShippingMethods_Access;
   function get (This : in out ShippingMethods) return BasicArrayList_Access;
   function getShippingInterface (This : in out ShippingMethods; name : Unbounded_String) return ShippingInterface_Access;
   procedure getShippingInterface (This : in out ShippingMethods; name : Unbounded_String);
   function getDefault (This : in out ShippingMethods) return ShippingInterface_Access;

end org.allbinary.business.user.commerce.shipping.ShippingMethods_Package;


