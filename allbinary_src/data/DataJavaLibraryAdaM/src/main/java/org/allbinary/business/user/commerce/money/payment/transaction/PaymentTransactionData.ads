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

limited with org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package;
package org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References is
   type PaymentTransactionData_Access is access all org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package.PaymentTransactionData'Class;
   type PaymentTransactionData_Access_Array is array (Natural range <>) of PaymentTransactionData_Access;
   type PaymentTransactionData_Access_Array_Access is access all PaymentTransactionData_Access_Array;
   type PaymentTransactionData_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionData_Access_Array_Access;
   type PaymentTransactionData_Access_Array_Access_Array_Access is access all PaymentTransactionData_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References;

with org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype PaymentTransactionData_Access is org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References.PaymentTransactionData_Access;
   function "=" (Left, Right : PaymentTransactionData_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References."=";
   subtype PaymentTransactionData_Access_Array is org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References.PaymentTransactionData_Access_Array;
   function "=" (Left, Right : PaymentTransactionData_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References."=";
   subtype PaymentTransactionData_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References.PaymentTransactionData_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionData_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References."=";
   subtype PaymentTransactionData_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References.PaymentTransactionData_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionData_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References."=";
   subtype PaymentTransactionData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References.PaymentTransactionData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package_References."=";

   type PaymentTransactionData is new Java_Object with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out PaymentTransactionData'Class);
   function Create return PaymentTransactionData_Access;

end org.allbinary.business.user.commerce.money.payment.transaction.PaymentTransactionData_Package;


