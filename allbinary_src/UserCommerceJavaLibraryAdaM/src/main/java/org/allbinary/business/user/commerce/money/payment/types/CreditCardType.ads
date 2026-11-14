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
limited with org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package;
package org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References is
   type CreditCardType_Access is access all org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package.CreditCardType'Class;
   type CreditCardType_Access_Array is array (Natural range <>) of CreditCardType_Access;
   type CreditCardType_Access_Array_Access is access all CreditCardType_Access_Array;
   type CreditCardType_Access_Array_Access_Array is array (Natural range <>) of CreditCardType_Access_Array_Access;
   type CreditCardType_Access_Array_Access_Array_Access is access all CreditCardType_Access_Array_Access_Array;
   type CreditCardType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreditCardType_Access_Array_Access;
   end record;
   function Java_Box (Value : CreditCardType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreditCardType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreditCardType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreditCardType_Access_Array_Access is (if Value /= null and then Value.all in CreditCardType_Access_Array_Object'Class then CreditCardType_Access_Array_Object'Class (Value.all).Value else null);
   type CreditCardType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CreditCardType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CreditCardType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CreditCardType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CreditCardType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CreditCardType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CreditCardType_Access_Array_Access_Array_Object'Class then CreditCardType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CreditCardType_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access;
   function "=" (Left, Right : CreditCardType_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References."=";
   subtype CreditCardType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array;
   function "=" (Left, Right : CreditCardType_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References."=";
   subtype CreditCardType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access;
   function "=" (Left, Right : CreditCardType_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References."=";
   function Java_Box (Value : CreditCardType_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.Java_Box;
   function Java_Unbox_CreditCardType_Access_Array (Value : access Java_Object'Class) return CreditCardType_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.Java_Unbox_CreditCardType_Access_Array;
   subtype CreditCardType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access_Array;
   function "=" (Left, Right : CreditCardType_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References."=";
   subtype CreditCardType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.CreditCardType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CreditCardType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References."=";
   function Java_Box (Value : CreditCardType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.Java_Box;
   function Java_Unbox_CreditCardType_Access_Array_Access_Array (Value : access Java_Object'Class) return CreditCardType_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package_References.Java_Unbox_CreditCardType_Access_Array_Access_Array;

   type CreditCardType is new Java_Object with record
      name : Unbounded_String;
   end record;
   MAXLEN : constant Integer := 19;

   procedure Initialize (This : in out CreditCardType'Class; cardType : Unbounded_String);
   function Create (cardType : Unbounded_String) return CreditCardType_Access;
   function toString (This : in out CreditCardType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.CreditCardType_Package;


