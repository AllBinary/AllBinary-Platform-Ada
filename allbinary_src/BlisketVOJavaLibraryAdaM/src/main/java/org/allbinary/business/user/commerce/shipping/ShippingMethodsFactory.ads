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
limited with org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package;
package org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References is
   type ShippingMethodsFactory_Access is access all org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package.ShippingMethodsFactory'Class;
   type ShippingMethodsFactory_Access_Array is array (Natural range <>) of ShippingMethodsFactory_Access;
   type ShippingMethodsFactory_Access_Array_Access is access all ShippingMethodsFactory_Access_Array;
   type ShippingMethodsFactory_Access_Array_Access_Array is array (Natural range <>) of ShippingMethodsFactory_Access_Array_Access;
   type ShippingMethodsFactory_Access_Array_Access_Array_Access is access all ShippingMethodsFactory_Access_Array_Access_Array;
   type ShippingMethodsFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingMethodsFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingMethodsFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingMethodsFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingMethodsFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingMethodsFactory_Access_Array_Access is (if Value /= null and then Value.all in ShippingMethodsFactory_Access_Array_Object'Class then ShippingMethodsFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ShippingMethodsFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShippingMethodsFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShippingMethodsFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShippingMethodsFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShippingMethodsFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShippingMethodsFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShippingMethodsFactory_Access_Array_Access_Array_Object'Class then ShippingMethodsFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References;

with org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References;
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
limited with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;

package org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package ShippingInterface_Package renames Standard.org.allbinary.business.user.commerce.shipping.modules.ShippingInterface_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   use type Document_Access;
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   use type Document_Access_Array;
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   use type Document_Access_Array_Access;
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   use type Document_Access_Array_Access_Array;
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   use type Document_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShippingMethodsFactory_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.ShippingMethodsFactory_Access;
   function "=" (Left, Right : ShippingMethodsFactory_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References."=";
   subtype ShippingMethodsFactory_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.ShippingMethodsFactory_Access_Array;
   function "=" (Left, Right : ShippingMethodsFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References."=";
   subtype ShippingMethodsFactory_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.ShippingMethodsFactory_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References."=";
   function Java_Box (Value : ShippingMethodsFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.Java_Box;
   function Java_Unbox_ShippingMethodsFactory_Access_Array (Value : access Java_Object'Class) return ShippingMethodsFactory_Access_Array_Access renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.Java_Unbox_ShippingMethodsFactory_Access_Array;
   subtype ShippingMethodsFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.ShippingMethodsFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShippingMethodsFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References."=";
   subtype ShippingMethodsFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.ShippingMethodsFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShippingMethodsFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References."=";
   function Java_Box (Value : ShippingMethodsFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.Java_Box;
   function Java_Unbox_ShippingMethodsFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ShippingMethodsFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.shipping.ShippingMethodsFactory_Package_References.Java_Unbox_ShippingMethodsFactory_Access_Array_Access_Array;

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


