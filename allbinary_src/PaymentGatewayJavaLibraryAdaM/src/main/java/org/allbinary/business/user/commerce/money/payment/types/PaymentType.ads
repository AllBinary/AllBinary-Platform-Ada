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

limited with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
package org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References is
   type PaymentType_Access is access all org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package.PaymentType'Class;
   type PaymentType_Access_Array is array (Natural range <>) of PaymentType_Access;
   type PaymentType_Access_Array_Access is access all PaymentType_Access_Array;
   type PaymentType_Access_Array_Access_Array is array (Natural range <>) of PaymentType_Access_Array_Access;
   type PaymentType_Access_Array_Access_Array_Access is access all PaymentType_Access_Array_Access_Array;
end org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References;

with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;

package org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentProcessorInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;
   package PaymentTransactionInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
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
   subtype PaymentProcessorInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access;
   use type PaymentProcessorInterfaceFactoryInterface_Access;
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array;
   use type PaymentProcessorInterfaceFactoryInterface_Access_Array;
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access;
   use type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access;
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package_References.PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PaymentTransactionInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access;
   use type PaymentTransactionInterfaceFactoryInterface_Access;
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array;
   use type PaymentTransactionInterfaceFactoryInterface_Access_Array;
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access;
   use type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access;
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype BasicPaymentType_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access;
   use type BasicPaymentType_Access;
   subtype BasicPaymentType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array;
   use type BasicPaymentType_Access_Array;
   subtype BasicPaymentType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access;
   subtype BasicPaymentType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array;
   use type BasicPaymentType_Access_Array_Access_Array;
   subtype BasicPaymentType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References.BasicPaymentType_Access_Array_Access_Array_Access;
   use type BasicPaymentType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentType_Access is org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References.PaymentType_Access;
   function "=" (Left, Right : PaymentType_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References."=";
   subtype PaymentType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References.PaymentType_Access_Array;
   function "=" (Left, Right : PaymentType_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References."=";
   subtype PaymentType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References.PaymentType_Access_Array_Access;
   function "=" (Left, Right : PaymentType_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References."=";
   subtype PaymentType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References.PaymentType_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentType_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References."=";
   subtype PaymentType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References.PaymentType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package_References."=";

   type PaymentType is new Java_Object with record
      basicPaymentType : BasicPaymentType_Access;
      paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access;
      paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentType'Class; basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function Create (basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentType_Access;
   procedure Initialize (This : in out PaymentType'Class; basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class; paymentTransactionInterfaceFactoryInterface_Param : access PaymentTransactionInterfaceFactoryInterface_Package.PaymentTransactionInterfaceFactoryInterface'Class; paymentProcessorInterfaceFactoryInterface_Param : access PaymentProcessorInterfaceFactoryInterface_Package.PaymentProcessorInterfaceFactoryInterface'Class);
   function Create (basicPaymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class; paymentTransactionInterfaceFactoryInterface_Param : access PaymentTransactionInterfaceFactoryInterface_Package.PaymentTransactionInterfaceFactoryInterface'Class; paymentProcessorInterfaceFactoryInterface_Param : access PaymentProcessorInterfaceFactoryInterface_Package.PaymentProcessorInterfaceFactoryInterface'Class) return PaymentType_Access;
   function getPaymentTransactionInterfaceFactoryInterface (This : in out PaymentType) return PaymentTransactionInterfaceFactoryInterface_Access;
   function getPaymentProcessorInterfaceFactoryInterface (This : in out PaymentType) return PaymentProcessorInterfaceFactoryInterface_Access;
   function toVector (This : in out PaymentType) return BasicArrayList_Access;
   function toHashMap (This : in out PaymentType) return HashMap_Access;
   function getBasicPaymentType (This : in out PaymentType) return BasicPaymentType_Access;

end org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;


