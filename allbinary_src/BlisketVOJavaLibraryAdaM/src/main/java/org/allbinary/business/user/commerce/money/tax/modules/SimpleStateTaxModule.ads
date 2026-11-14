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
limited with org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;
package org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References is
   type SimpleStateTaxModule_Access is access all org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package.SimpleStateTaxModule'Class;
   type SimpleStateTaxModule_Access_Array is array (Natural range <>) of SimpleStateTaxModule_Access;
   type SimpleStateTaxModule_Access_Array_Access is access all SimpleStateTaxModule_Access_Array;
   type SimpleStateTaxModule_Access_Array_Access_Array is array (Natural range <>) of SimpleStateTaxModule_Access_Array_Access;
   type SimpleStateTaxModule_Access_Array_Access_Array_Access is access all SimpleStateTaxModule_Access_Array_Access_Array;
   type SimpleStateTaxModule_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleStateTaxModule_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleStateTaxModule_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleStateTaxModule_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleStateTaxModule_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleStateTaxModule_Access_Array_Access is (if Value /= null and then Value.all in SimpleStateTaxModule_Access_Array_Object'Class then SimpleStateTaxModule_Access_Array_Object'Class (Value.all).Value else null);
   type SimpleStateTaxModule_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : SimpleStateTaxModule_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : SimpleStateTaxModule_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new SimpleStateTaxModule_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_SimpleStateTaxModule_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return SimpleStateTaxModule_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in SimpleStateTaxModule_Access_Array_Access_Array_Object'Class then SimpleStateTaxModule_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References;

with org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package; use org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface_Package;

package org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
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


   subtype SimpleStateTaxModule_Access is org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.SimpleStateTaxModule_Access;
   function "=" (Left, Right : SimpleStateTaxModule_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References."=";
   subtype SimpleStateTaxModule_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.SimpleStateTaxModule_Access_Array;
   function "=" (Left, Right : SimpleStateTaxModule_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References."=";
   subtype SimpleStateTaxModule_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.SimpleStateTaxModule_Access_Array_Access;
   function "=" (Left, Right : SimpleStateTaxModule_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References."=";
   function Java_Box (Value : SimpleStateTaxModule_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.Java_Box;
   function Java_Unbox_SimpleStateTaxModule_Access_Array (Value : access Java_Object'Class) return SimpleStateTaxModule_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.Java_Unbox_SimpleStateTaxModule_Access_Array;
   subtype SimpleStateTaxModule_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.SimpleStateTaxModule_Access_Array_Access_Array;
   function "=" (Left, Right : SimpleStateTaxModule_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References."=";
   subtype SimpleStateTaxModule_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.SimpleStateTaxModule_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SimpleStateTaxModule_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References."=";
   function Java_Box (Value : SimpleStateTaxModule_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.Java_Box;
   function Java_Unbox_SimpleStateTaxModule_Access_Array_Access_Array (Value : access Java_Object'Class) return SimpleStateTaxModule_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package_References.Java_Unbox_SimpleStateTaxModule_Access_Array_Access_Array;

   type SimpleStateTaxModule is new Java_Object and TaxModuleInterface with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      streetAddress : StreetAddress_Access;
      storeFrontInterface : StoreFrontInterface_Access;
      ALL_Id : Unbounded_String;
      STATETAXPATH : Unbounded_String;
      STATETAXFILE : Unbounded_String;
      document : Document_Access;
   end record;

   procedure Initialize (This : in out SimpleStateTaxModule'Class);
   function Create return SimpleStateTaxModule_Access;
   function getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Float;
   procedure getTaxRate (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return Boolean;
   procedure isValid (This : in out SimpleStateTaxModule; streetAddress_Param : access StreetAddress_Package.StreetAddress'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);

end org.allbinary.business.user.commerce.money.tax.modules.SimpleStateTaxModule_Package;


