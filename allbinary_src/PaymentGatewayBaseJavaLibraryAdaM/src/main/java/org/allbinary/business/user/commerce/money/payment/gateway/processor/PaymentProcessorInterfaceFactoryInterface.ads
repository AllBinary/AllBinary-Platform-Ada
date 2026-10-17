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
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package is

   package PaymentTransactionInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package TransformInfoInterface_Package renames Standard.org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

   type PaymentProcessorInterfaceFactoryInterface is interface;
   type PaymentProcessorInterfaceFactoryInterface_Access is access all PaymentProcessorInterfaceFactoryInterface'Class;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactoryInterface_Access;
   type PaymentProcessorInterfaceFactoryInterface_Access_Array_Access is access all PaymentProcessorInterfaceFactoryInterface_Access_Array;
   function getInstance (This : in out PaymentProcessorInterfaceFactoryInterface; transformInfoInterface_Param : access TransformInfoInterface_Package.TransformInfoInterface'Class; paymentTransactionInterface_Param : access PaymentTransactionInterface_Package.PaymentTransactionInterface'Class) return PaymentProcessorInterface_Access is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactoryInterface_Package;


