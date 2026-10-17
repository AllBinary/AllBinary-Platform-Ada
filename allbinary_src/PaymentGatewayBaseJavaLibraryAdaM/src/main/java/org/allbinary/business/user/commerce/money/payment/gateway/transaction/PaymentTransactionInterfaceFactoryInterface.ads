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
with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package; use org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package is

   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package TenderType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;

   type PaymentTransactionInterfaceFactoryInterface is interface;
   type PaymentTransactionInterfaceFactoryInterface_Access is access all PaymentTransactionInterfaceFactoryInterface'Class;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactoryInterface_Access;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access is access all PaymentTransactionInterfaceFactoryInterface_Access_Array;
   function getInstance (This : in out PaymentTransactionInterfaceFactoryInterface; orderHistory_Param : access OrderHistory'Class) return PaymentTransactionInterface_Access is abstract;
   function getSaleTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   function getCreditTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   function getAuthorizationTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   function getCaptureDelayedTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   function getVoidTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   function getInquiryTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType'Class) return PaymentTransactionInterface_Access is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;


