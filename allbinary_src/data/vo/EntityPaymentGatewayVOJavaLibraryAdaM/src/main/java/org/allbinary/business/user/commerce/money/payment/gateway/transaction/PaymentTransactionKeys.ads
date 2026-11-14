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
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References is
   type PaymentTransactionKeys_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package.PaymentTransactionKeys'Class;
   type PaymentTransactionKeys_Access_Array is array (Natural range <>) of PaymentTransactionKeys_Access;
   type PaymentTransactionKeys_Access_Array_Access is access all PaymentTransactionKeys_Access_Array;
   type PaymentTransactionKeys_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionKeys_Access_Array_Access;
   type PaymentTransactionKeys_Access_Array_Access_Array_Access is access all PaymentTransactionKeys_Access_Array_Access_Array;
   type PaymentTransactionKeys_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionKeys_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionKeys_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionKeys_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionKeys_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionKeys_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionKeys_Access_Array_Object'Class then PaymentTransactionKeys_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentTransactionKeys_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionKeys_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionKeys_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionKeys_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionKeys_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionKeys_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionKeys_Access_Array_Access_Array_Object'Class then PaymentTransactionKeys_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentTransactionKeys_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.PaymentTransactionKeys_Access;
   function "=" (Left, Right : PaymentTransactionKeys_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References."=";
   subtype PaymentTransactionKeys_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.PaymentTransactionKeys_Access_Array;
   function "=" (Left, Right : PaymentTransactionKeys_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References."=";
   subtype PaymentTransactionKeys_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.PaymentTransactionKeys_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionKeys_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References."=";
   function Java_Box (Value : PaymentTransactionKeys_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionKeys_Access_Array (Value : access Java_Object'Class) return PaymentTransactionKeys_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.Java_Unbox_PaymentTransactionKeys_Access_Array;
   subtype PaymentTransactionKeys_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.PaymentTransactionKeys_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionKeys_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References."=";
   subtype PaymentTransactionKeys_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.PaymentTransactionKeys_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionKeys_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References."=";
   function Java_Box (Value : PaymentTransactionKeys_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionKeys_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentTransactionKeys_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package_References.Java_Unbox_PaymentTransactionKeys_Access_Array_Access_Array;

   type PaymentTransactionKeys is new Java_Object with record
      key : Unbounded_String;
   end record;

   procedure Initialize (This : in out PaymentTransactionKeys'Class; value : Unbounded_String);
   function Create (value : Unbounded_String) return PaymentTransactionKeys_Access;
   function toString (This : in out PaymentTransactionKeys) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeys_Package;


