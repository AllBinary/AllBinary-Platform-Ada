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
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;
package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References is
   type PaymentTransactionInterfaceFactoryInterface_Access is access all org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package.PaymentTransactionInterfaceFactoryInterface'Class;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactoryInterface_Access;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access is access all PaymentTransactionInterfaceFactoryInterface_Access_Array;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PaymentTransactionInterfaceFactoryInterface_Access_Array_Access;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array;
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionInterfaceFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionInterfaceFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionInterfaceFactoryInterface_Access_Array_Object'Class then PaymentTransactionInterfaceFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class then PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References;

with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References;
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
limited with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;
with org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package;
with org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface_Package_References;

package org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package is

   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package TenderType_Package renames Standard.org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;
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
   subtype TenderType_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access;
   use type TenderType_Access;
   subtype TenderType_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array;
   use type TenderType_Access_Array;
   subtype TenderType_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access;
   use type TenderType_Access_Array_Access;
   subtype TenderType_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array;
   use type TenderType_Access_Array_Access_Array;
   subtype TenderType_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.types.TenderType_Package_References.TenderType_Access_Array_Access_Array_Access;
   use type TenderType_Access_Array_Access_Array_Access;
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


   type PaymentTransactionInterfaceFactoryInterface is interface;
   subtype PaymentTransactionInterfaceFactoryInterface_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References."=";
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References."=";
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array (Value : access Java_Object'Class) return PaymentTransactionInterfaceFactoryInterface_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array;
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References."=";
   subtype PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References."=";
   function Java_Box (Value : PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package_References.Java_Unbox_PaymentTransactionInterfaceFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PaymentTransactionInterfaceFactoryInterface (Value : PaymentTransactionInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PaymentTransactionInterfaceFactoryInterface; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getInstance (This : in out PaymentTransactionInterfaceFactoryInterface; orderHistory_Param : access OrderHistory_Package.OrderHistory'Class) is abstract;
   function getSaleTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getSaleTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;
   function getCreditTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getCreditTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;
   function getAuthorizationTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getAuthorizationTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;
   function getCaptureDelayedTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getCaptureDelayedTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;
   function getVoidTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getVoidTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;
   function getInquiryTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) return PaymentTransactionInterface_Access is abstract;
   procedure getInquiryTransaction (This : in out PaymentTransactionInterfaceFactoryInterface; tenderType_Param : access TenderType_Package.TenderType'Class) is abstract;

end org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterfaceFactoryInterface_Package;


