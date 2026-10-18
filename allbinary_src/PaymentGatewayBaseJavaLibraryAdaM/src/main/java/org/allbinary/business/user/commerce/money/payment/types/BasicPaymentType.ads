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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;

package org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package PaymentGatewayInterfaceFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
   package PaymentGatewayDomNodeFactoryInterface_Package renames Standard.org.allbinary.business.user.commerce.money.payment.gateway.modules.gateway.PaymentGatewayDomNodeFactoryInterface_Package;

   type BasicPaymentType is tagged;
   type BasicPaymentType_Access is access all BasicPaymentType'Class;
   type BasicPaymentType_Access_Array is array (Natural range <>) of BasicPaymentType_Access;
   type BasicPaymentType_Access_Array_Access is access all BasicPaymentType_Access_Array;
   type BasicPaymentType_Access_Array_Access_Array is array (Natural range <>) of BasicPaymentType_Access_Array_Access;
   type BasicPaymentType_Access_Array_Access_Array_Access is access all BasicPaymentType_Access_Array_Access_Array;

   type BasicPaymentType is new Java_Object with record
      name : Unbounded_String;
      value : Unbounded_String;
      paymentGatewayInterfaceFactoryInterface : PaymentGatewayInterfaceFactoryInterface_Access;
      paymentGatewayDomNodeFactoryInterface : PaymentGatewayDomNodeFactoryInterface_Access;
   end record;

   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String);
   function Create (paymentMethod : Unbounded_String) return BasicPaymentType_Access;
   procedure Initialize (This : in out BasicPaymentType'Class; paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class);
   function Create (paymentMethod : Unbounded_String; paymentGatewayInterfaceFactoryInterface_Param : access PaymentGatewayInterfaceFactoryInterface_Package.PaymentGatewayInterfaceFactoryInterface'Class; paymentGatewayDomNodeFactoryInterface_Param : access PaymentGatewayDomNodeFactoryInterface_Package.PaymentGatewayDomNodeFactoryInterface'Class) return BasicPaymentType_Access;
   procedure init (This : in out BasicPaymentType; paymentMethod : Unbounded_String);
   function getName (This : in out BasicPaymentType) return Unbounded_String;
   function getValue (This : in out BasicPaymentType) return Unbounded_String;
   function getPaymentGatewayInterfaceFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayInterfaceFactoryInterface_Access;
   function getPaymentGatewayDomNodeFactoryInterface (This : in out BasicPaymentType) return PaymentGatewayDomNodeFactoryInterface_Access;
   function getKey (This : in out BasicPaymentType) return Java_Object_Access;
   function toVector (This : in out BasicPaymentType) return BasicArrayList_Access;
   function toHashMap (This : in out BasicPaymentType) return HashMap_Access;
   function toString (This : in out BasicPaymentType) return Unbounded_String;

end org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;


