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
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package; use org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package; use org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringValidationUtil_Package; use org.allbinary.logic.string_Id.StringValidationUtil_Package;
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package is

   package PaymentTransactionInterface_Package renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
   package PaymentTransactionInterfaceRequestFactory_Package renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceRequestFactory_Package;
   package PaymentType_Package renames org.allbinary.business.user.commerce.money.payment.types.PaymentType_Package;
   package PaymentTypeUtil_Package renames org.allbinary.business.user.commerce.money.payment.types.PaymentTypeUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringValidationUtil_Package renames org.allbinary.logic.string_Id.StringValidationUtil_Package;
   package TransformInfoInterface_Package renames org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type PaymentProcessorInterfaceFactory is tagged;
   type PaymentProcessorInterfaceFactory_Access is access all PaymentProcessorInterfaceFactory'Class;
   type PaymentProcessorInterfaceFactory_Access_Array is array (Natural range <>) of PaymentProcessorInterfaceFactory_Access;
   type PaymentProcessorInterfaceFactory_Access_Array_Access is access all PaymentProcessorInterfaceFactory_Access_Array;

   type PaymentProcessorInterfaceFactory is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : PaymentProcessorInterfaceFactory_Access;

   procedure Initialize (This : in out PaymentProcessorInterfaceFactory'Class);
   function Create return PaymentProcessorInterfaceFactory_Access;
   function getInstance return PaymentProcessorInterfaceFactory_Access;
   procedure getInstance;
   function getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface : TransformInfoInterface_Access) return PaymentProcessorInterface_Access;
   procedure getInstance (This : in out PaymentProcessorInterfaceFactory; transformInfoInterface : TransformInfoInterface_Access);

end org.allbinary.business.user.commerce.money.payment.gateway.processor.PaymentProcessorInterfaceFactory_Package;


