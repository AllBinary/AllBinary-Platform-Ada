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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;

package org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentProcessorInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;
   package PaymentTransactionInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type PaymentType is tagged;
   type PaymentType_Access is access all PaymentType'Class;
   type PaymentType_Access_Array is array (Natural range <>) of PaymentType_Access;
   type PaymentType_Access_Array_Access is access all PaymentType_Access_Array;

   type PaymentType is new Java_Object with record
      basicPaymentType : BasicPaymentType_Access;
      paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access;
      paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out PaymentType'Class; basicPaymentType : BasicPaymentType_Access);
   function Create (basicPaymentType : BasicPaymentType_Access) return PaymentType_Access;
   procedure Initialize (This : in out PaymentType'Class; basicPaymentType : BasicPaymentType_Access; paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access; paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access);
   function Create (basicPaymentType : BasicPaymentType_Access; paymentTransactionInterfaceFactoryInterface : PaymentTransactionInterfaceFactoryInterface_Access; paymentProcessorInterfaceFactoryInterface : PaymentProcessorInterfaceFactoryInterface_Access) return PaymentType_Access;
   function getPaymentTransactionInterfaceFactoryInterface (This : in out PaymentType) return PaymentTransactionInterfaceFactoryInterface_Access;
   function getPaymentProcessorInterfaceFactoryInterface (This : in out PaymentType) return PaymentProcessorInterfaceFactoryInterface_Access;
   function toVector (This : in out PaymentType) return BasicArrayList_Access;
   function toHashMap (This : in out PaymentType) return HashMap_Access;
   function getBasicPaymentType (This : in out PaymentType) return BasicPaymentType_Access;

end org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;


