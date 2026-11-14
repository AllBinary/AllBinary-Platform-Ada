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
limited with org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package;
package org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References is
   type CreditCardTypeFactory_Access is access all org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package.CreditCardTypeFactory'Class;
   type CreditCardTypeFactory_Access_Array is array (Natural range <>) of CreditCardTypeFactory_Access;
   type CreditCardTypeFactory_Access_Array_Access is access all CreditCardTypeFactory_Access_Array;
   type CreditCardTypeFactory_Access_Array_Access_Array is array (Natural range <>) of CreditCardTypeFactory_Access_Array_Access;
   type CreditCardTypeFactory_Access_Array_Access_Array_Access is access all CreditCardTypeFactory_Access_Array_Access_Array;
   type CreditCardTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreditCardTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CreditCardTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreditCardTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreditCardTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreditCardTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in CreditCardTypeFactory_Access_Array_Object'Class then CreditCardTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CreditCardTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreditCardTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CreditCardTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreditCardTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreditCardTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreditCardTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CreditCardTypeFactory_Access_Array_Access_Array_Object'Class then CreditCardTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package;
with org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package is

   package Reference_Types is
   subtype CreditCardType_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access;
   use type CreditCardType_Access;
   subtype CreditCardType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array;
   use type CreditCardType_Access_Array;
   subtype CreditCardType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access;
   use type CreditCardType_Access_Array_Access;
   subtype CreditCardType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access_Array;
   use type CreditCardType_Access_Array_Access_Array;
   subtype CreditCardType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access_Array_Access;
   use type CreditCardType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CreditCardTypeFactory_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.CreditCardTypeFactory_Access;
   function "=" (Left, Right : CreditCardTypeFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References."=";
   subtype CreditCardTypeFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.CreditCardTypeFactory_Access_Array;
   function "=" (Left, Right : CreditCardTypeFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References."=";
   subtype CreditCardTypeFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.CreditCardTypeFactory_Access_Array_Access;
   function "=" (Left, Right : CreditCardTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References."=";
   function Java_Box (Value : CreditCardTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.Java_Box;
   function Java_Unbox_CreditCardTypeFactory_Access_Array (Value : access Java_Object'Class) return CreditCardTypeFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.Java_Unbox_CreditCardTypeFactory_Access_Array;
   subtype CreditCardTypeFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.CreditCardTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CreditCardTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References."=";
   subtype CreditCardTypeFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.CreditCardTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CreditCardTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References."=";
   function Java_Box (Value : CreditCardTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.Java_Box;
   function Java_Unbox_CreditCardTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CreditCardTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package_References.Java_Unbox_CreditCardTypeFactory_Access_Array_Access_Array;

   type CreditCardTypeFactory is new Java_Object with record
      VISA : CreditCardType_Access;
      MASTERCARD : CreditCardType_Access;
      DISCOVER : CreditCardType_Access;
      AMERICANEXPRESS : CreditCardType_Access;
   end record;
   instance : CreditCardTypeFactory_Access;

   procedure Initialize (This : in out CreditCardTypeFactory'Class);
   function Create return CreditCardTypeFactory_Access;
   function getInstance return CreditCardTypeFactory_Access;

end org.allbinary.business.user.commerce.money.payment.types.CreditCardTypeFactory_Package;


