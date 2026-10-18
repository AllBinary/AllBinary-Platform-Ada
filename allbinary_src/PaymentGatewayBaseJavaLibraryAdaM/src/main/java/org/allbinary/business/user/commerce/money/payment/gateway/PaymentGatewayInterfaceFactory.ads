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
with java.util.HashMap_Package; use java.util.HashMap_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package; use org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PaymentGatewayInterfaceFactory is tagged;
   type PaymentGatewayInterfaceFactory_Access is access all PaymentGatewayInterfaceFactory'Class;
   type PaymentGatewayInterfaceFactory_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactory_Access;
   type PaymentGatewayInterfaceFactory_Access_Array_Access is access all PaymentGatewayInterfaceFactory_Access_Array;
   type PaymentGatewayInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactory_Access_Array_Access;
   type PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access is access all PaymentGatewayInterfaceFactory_Access_Array_Access_Array;

   type PaymentGatewayInterfaceFactory is new Java_Object and PaymentGatewayInterfaceFactoryInterface with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PaymentGatewayInterfaceFactory'Class);
   function Create return PaymentGatewayInterfaceFactory_Access;
   function getInstance (This : in out PaymentGatewayInterfaceFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return PaymentGatewayInterface_Access;
   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; httpServletRequest_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function getInstance (This : in out PaymentGatewayInterfaceFactory; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class) return PaymentGatewayInterface_Access;
   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; paymentType_Param : access BasicPaymentType_Package.BasicPaymentType'Class);
   function getInstance (This : in out PaymentGatewayInterfaceFactory; hashMap_Param : access HashMap_Package.HashMap'Class) return PaymentGatewayInterface_Access;
   procedure getInstance (This : in out PaymentGatewayInterfaceFactory; hashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;


