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
limited with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References is
   type TransactionEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package.TransactionEntityInterface'Class;
   type TransactionEntityInterface_Access_Array is array (Natural range <>) of TransactionEntityInterface_Access;
   type TransactionEntityInterface_Access_Array_Access is access all TransactionEntityInterface_Access_Array;
   type TransactionEntityInterface_Access_Array_Access_Array is array (Natural range <>) of TransactionEntityInterface_Access_Array_Access;
   type TransactionEntityInterface_Access_Array_Access_Array_Access is access all TransactionEntityInterface_Access_Array_Access_Array;
   type TransactionEntityInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionEntityInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionEntityInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionEntityInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionEntityInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionEntityInterface_Access_Array_Access is (if Value /= null and then Value.all in TransactionEntityInterface_Access_Array_Object'Class then TransactionEntityInterface_Access_Array_Object'Class (Value.all).Value else null);
   type TransactionEntityInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : TransactionEntityInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : TransactionEntityInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new TransactionEntityInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_TransactionEntityInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return TransactionEntityInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in TransactionEntityInterface_Access_Array_Access_Array_Object'Class then TransactionEntityInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package Reference_Types is
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   use type PaymentTransactionInterface_Access;
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   use type PaymentTransactionInterface_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access;
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   use type PaymentTransactionInterface_Access_Array_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TransactionEntityInterface is interface and BasicDataTableInterface;
   subtype TransactionEntityInterface_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.TransactionEntityInterface_Access;
   function "=" (Left, Right : TransactionEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References."=";
   subtype TransactionEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.TransactionEntityInterface_Access_Array;
   function "=" (Left, Right : TransactionEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References."=";
   subtype TransactionEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.TransactionEntityInterface_Access_Array_Access;
   function "=" (Left, Right : TransactionEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References."=";
   function Java_Box (Value : TransactionEntityInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionEntityInterface_Access_Array (Value : access Java_Object'Class) return TransactionEntityInterface_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.Java_Unbox_TransactionEntityInterface_Access_Array;
   subtype TransactionEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.TransactionEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TransactionEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References."=";
   subtype TransactionEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.TransactionEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TransactionEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References."=";
   function Java_Box (Value : TransactionEntityInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.Java_Box;
   function Java_Unbox_TransactionEntityInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return TransactionEntityInterface_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package_References.Java_Unbox_TransactionEntityInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_TransactionEntityInterface (Value : TransactionEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure remove (This : in out TransactionEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String) is abstract;
   procedure add (This : in out TransactionEntityInterface; userName : Unbounded_String; orderNumber : Unbounded_String; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) is abstract;

end org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityInterface_Package;


