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
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References is
   type PaymentGatewayInterfaceFactory_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package.PaymentGatewayInterfaceFactory'Class;
   type PaymentGatewayInterfaceFactory_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactory_Access;
   type PaymentGatewayInterfaceFactory_Access_Array_Access is access all PaymentGatewayInterfaceFactory_Access_Array;
   type PaymentGatewayInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentGatewayInterfaceFactory_Access_Array_Access;
   type PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access is access all PaymentGatewayInterfaceFactory_Access_Array_Access_Array;
   type PaymentGatewayInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayInterfaceFactory_Access_Array_Object'Class then PaymentGatewayInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Object'Class then PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References;
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
limited with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
with org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package; use org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactoryInterface_Package;
limited with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicPaymentType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PaymentGatewayInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access;
   use type PaymentGatewayInterface_Access;
   subtype PaymentGatewayInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array;
   use type PaymentGatewayInterface_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access;
   subtype PaymentGatewayInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array;
   use type PaymentGatewayInterface_Access_Array_Access_Array;
   subtype PaymentGatewayInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface_Package_References.PaymentGatewayInterface_Access_Array_Access_Array_Access;
   use type PaymentGatewayInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentGatewayInterfaceFactory_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.PaymentGatewayInterfaceFactory_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References."=";
   subtype PaymentGatewayInterfaceFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.PaymentGatewayInterfaceFactory_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterfaceFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References."=";
   subtype PaymentGatewayInterfaceFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.PaymentGatewayInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentGatewayInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array (Value : access Java_Object'Class) return PaymentGatewayInterfaceFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array;
   subtype PaymentGatewayInterfaceFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.PaymentGatewayInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentGatewayInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References."=";
   subtype PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentGatewayInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory_Package_References.Java_Unbox_PaymentGatewayInterfaceFactory_Access_Array_Access_Array;

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


