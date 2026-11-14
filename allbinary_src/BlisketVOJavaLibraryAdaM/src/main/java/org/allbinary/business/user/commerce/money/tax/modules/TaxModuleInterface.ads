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
limited with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;
package org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References is
   type TaxModuleInterface_Access is access all org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package.TaxModuleInterface'Class;
   type TaxModuleInterface_Access_Array is array (Natural range <>) of TaxModuleInterface_Access;
   type TaxModuleInterface_Access_Array_Access is access all TaxModuleInterface_Access_Array;
   type TaxModuleInterface_Access_Array_Access_Array is array (Natural range <>) of TaxModuleInterface_Access_Array_Access;
   type TaxModuleInterface_Access_Array_Access_Array_Access is access all TaxModuleInterface_Access_Array_Access_Array;
   type TaxModuleInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TaxModuleInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TaxModuleInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TaxModuleInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TaxModuleInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TaxModuleInterface_Access_Array_Access is (if Value /= null and then Value.all in TaxModuleInterface_Access_Array_Object'Class then TaxModuleInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TaxModuleInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TaxModuleInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TaxModuleInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TaxModuleInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TaxModuleInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TaxModuleInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TaxModuleInterface_Access_Array_Access_Array_Object'Class then TaxModuleInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References;

with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;

package org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Reference_Types is
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
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TaxModuleInterface is interface;
   subtype TaxModuleInterface_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access;
   function "=" (Left, Right : TaxModuleInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References."=";
   subtype TaxModuleInterface_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array;
   function "=" (Left, Right : TaxModuleInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References."=";
   subtype TaxModuleInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access;
   function "=" (Left, Right : TaxModuleInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References."=";
   function Java_Box (Value : TaxModuleInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.Java_Box;
   function Java_Unbox_TaxModuleInterface_Access_Array (Value : access Java_Object'Class) return TaxModuleInterface_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.Java_Unbox_TaxModuleInterface_Access_Array;
   subtype TaxModuleInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TaxModuleInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References."=";
   subtype TaxModuleInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.TaxModuleInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TaxModuleInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References."=";
   function Java_Box (Value : TaxModuleInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.Java_Box;
   function Java_Unbox_TaxModuleInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TaxModuleInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package_References.Java_Unbox_TaxModuleInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TaxModuleInterface (Value : TaxModuleInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getTaxRate (This : in out TaxModuleInterface; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Float is abstract;
   procedure getTaxRate (This : in out TaxModuleInterface; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is abstract;
   function isValid (This : in out TaxModuleInterface; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Boolean is abstract;
   procedure isValid (This : in out TaxModuleInterface; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is abstract;

end org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;


