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
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References is
   type PaymentTransactionInterfaceFactory_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package.PaymentTransactionInterfaceFactory'Class;
   type PaymentTransactionInterfaceFactory_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactory_Access;
   type PaymentTransactionInterfaceFactory_Access_Array_Access is access all PaymentTransactionInterfaceFactory_Access_Array;
   type PaymentTransactionInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactory_Access_Array_Access;
   type PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access is access all PaymentTransactionInterfaceFactory_Access_Array_Access_Array;
   type PaymentTransactionInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionInterfaceFactory_Access_Array_Object'Class then PaymentTransactionInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Object'Class then PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package is

   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype OrderHistory_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access;
   use type OrderHistory_Access;
   subtype OrderHistory_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array;
   use type OrderHistory_Access_Array;
   subtype OrderHistory_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access;
   use type OrderHistory_Access_Array_Access;
   subtype OrderHistory_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array;
   use type OrderHistory_Access_Array_Access_Array;
   subtype OrderHistory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References.OrderHistory_Access_Array_Access_Array_Access;
   use type OrderHistory_Access_Array_Access_Array_Access;
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
   subtype PaymentTransactionInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access;
   use type PaymentTransactionInterface_Access;
   subtype PaymentTransactionInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array;
   use type PaymentTransactionInterface_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access;
   subtype PaymentTransactionInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array;
   use type PaymentTransactionInterface_Access_Array_Access_Array;
   subtype PaymentTransactionInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References.PaymentTransactionInterface_Access_Array_Access_Array_Access;
   use type PaymentTransactionInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PaymentTransactionInterfaceFactory_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.PaymentTransactionInterfaceFactory_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactory_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References."=";
   subtype PaymentTransactionInterfaceFactory_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.PaymentTransactionInterfaceFactory_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterfaceFactory_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References."=";
   subtype PaymentTransactionInterfaceFactory_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.PaymentTransactionInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentTransactionInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array (Value : access Java_Object'Class) return PaymentTransactionInterfaceFactory_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array;
   subtype PaymentTransactionInterfaceFactory_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.PaymentTransactionInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References."=";
   subtype PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References."=";
   function Java_Box (Value : PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentTransactionInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactory_Package_References.Java_Unbox_PaymentTransactionInterfaceFactory_Access_Array_Access_Array;

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


