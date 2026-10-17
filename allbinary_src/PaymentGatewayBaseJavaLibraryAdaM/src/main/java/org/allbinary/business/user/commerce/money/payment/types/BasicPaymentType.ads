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
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.io.path.AbPathData_Package; use org.allbinary.logic.io.path.AbPathData_Package;
with org.allbinary.logic.string_Id.regex.replace.Replace_Package; use org.allbinary.logic.string_Id.regex.replace.Replace_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package PaymentGatewayData_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData_Package;
   package PaymentGatewayInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
   package PaymentGatewayDomNodeFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package AbPathData_Package renames Standard.org.allbinary.logic.io.path.AbPathData_Package;
   package Replace_Package renames Standard.org.allbinary.logic.string_Id.regex.replace.Replace_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type BasicPaymentType is tagged;
   type BasicPaymentType_Access is access all BasicPaymentType'Class;
   type BasicPaymentType_Access_Array is array (Natural range <>) of BasicPaymentType_Access;
   type BasicPaymentType_Access_Array_Access is access all BasicPaymentType_Access_Array;

   type BasicPaymentType is new Java_Object with record
      name : Unbounded_String;
      value : Unbounded_String;
      paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface_Access;
      paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String);
   function Create (paymentMethod : Unbounded_String) return BasicPaymentType_Access;
   procedure init (This : in out BasicPaymentType; paymentMethod : Unbounded_String);
   function getName (This : in out BasicPaymentType) return Unbounded_String;
   procedure getName (This : in out BasicPaymentType);
   function getValue (This : in out BasicPaymentType) return Unbounded_String;
   procedure getValue (This : in out BasicPaymentType);
   function getPaymentGatewayInterfaceFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayInterfaceFactoryInterface_Access;
   procedure getPaymentGatewayInterfaceFactoryInterface (This : in out BasicPaymentType);
   function getPaymentGatewayDomNodeFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayDomNodeFactoryInterface_Access;
   procedure getPaymentGatewayDomNodeFactoryInterface (This : in out BasicPaymentType);
   function getKey (This : in out BasicPaymentType) return Java_Object_Access;
   procedure getKey (This : in out BasicPaymentType);
   function toVector (This : in out BasicPaymentType) return BasicArrayList_Access;
   procedure toVector (This : in out BasicPaymentType);
   function toHashMap (This : in out BasicPaymentType) return HashMap_Access;
   procedure toHashMap (This : in out BasicPaymentType);
   function toString (This : in out BasicPaymentType) return Unbounded_String;
   procedure toString (This : in out BasicPaymentType);

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;


