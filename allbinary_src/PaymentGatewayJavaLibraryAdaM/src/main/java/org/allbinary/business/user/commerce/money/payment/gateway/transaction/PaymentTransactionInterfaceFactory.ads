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
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package is

   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package PaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
   package PaymentTypeUtil_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type PaymentTransactionInterfaceFactory is tagged;
   type PaymentTransactionInterfaceFactory_Access is access all PaymentTransactionInterfaceFactory'Class;
   type PaymentTransactionInterfaceFactory_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactory_Access;
   type PaymentTransactionInterfaceFactory_Access_Array_Access is access all PaymentTransactionInterfaceFactory_Access_Array;

   type PaymentTransactionInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PaymentTransactionInterfaceFactory_Access;

   procedure Initialize (This : in out PaymentTransactionInterfaceFactory'Class);
   function Create return PaymentTransactionInterfaceFactory_Access;
   function getInstance return PaymentTransactionInterfaceFactory_Access;
   function getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview_Param : access OrderHistory_Package.OrderHistory'Class) return PaymentTransactionInterface_Access;
   procedure getInstance (This : in out PaymentTransactionInterfaceFactory; orderReview_Param : access OrderHistory_Package.OrderHistory'Class);

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;


