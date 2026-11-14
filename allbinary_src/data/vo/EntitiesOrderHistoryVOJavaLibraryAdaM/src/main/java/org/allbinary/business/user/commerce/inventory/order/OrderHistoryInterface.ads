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
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
package org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References is
   type OrderHistoryInterface_Access is access all org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package.OrderHistoryInterface'Class;
   type OrderHistoryInterface_Access_Array is array (Natural range <>) of OrderHistoryInterface_Access;
   type OrderHistoryInterface_Access_Array_Access is access all OrderHistoryInterface_Access_Array;
   type OrderHistoryInterface_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryInterface_Access_Array_Access;
   type OrderHistoryInterface_Access_Array_Access_Array_Access is access all OrderHistoryInterface_Access_Array_Access_Array;
   type OrderHistoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryInterface_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryInterface_Access_Array_Object'Class then OrderHistoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryInterface_Access_Array_Access_Array_Object'Class then OrderHistoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References;

with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.address.StreetAddress_Package;
with org.allbinary.business.user.address.StreetAddress_Package_References;
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
limited with org.allbinary.business.user.commerce.money.payment.Payment_Package;
with org.allbinary.business.user.commerce.money.payment.Payment_Package_References;

package org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package is

   package StreetAddress_Package renames Standard.org.allbinary.business.user.address.StreetAddress_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package Payment_Package renames Standard.org.allbinary.business.user.commerce.money.payment.Payment_Package;
   package Reference_Types is
   subtype StreetAddress_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access;
   use type StreetAddress_Access;
   subtype StreetAddress_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array;
   use type StreetAddress_Access_Array;
   subtype StreetAddress_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access;
   use type StreetAddress_Access_Array_Access;
   subtype StreetAddress_Access_Array_Access_Array is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array;
   use type StreetAddress_Access_Array_Access_Array;
   subtype StreetAddress_Access_Array_Access_Array_Access is org.allbinary.business.user.address.StreetAddress_Package_References.StreetAddress_Access_Array_Access_Array_Access;
   use type StreetAddress_Access_Array_Access_Array_Access;
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   subtype Payment_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access;
   use type Payment_Access;
   subtype Payment_Access_Array is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array;
   use type Payment_Access_Array;
   subtype Payment_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access;
   use type Payment_Access_Array_Access;
   subtype Payment_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access_Array;
   use type Payment_Access_Array_Access_Array;
   subtype Payment_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.payment.Payment_Package_References.Payment_Access_Array_Access_Array_Access;
   use type Payment_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OrderHistoryInterface is interface;
   subtype OrderHistoryInterface_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.OrderHistoryInterface_Access;
   function "=" (Left, Right : OrderHistoryInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References."=";
   subtype OrderHistoryInterface_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.OrderHistoryInterface_Access_Array;
   function "=" (Left, Right : OrderHistoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References."=";
   subtype OrderHistoryInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.OrderHistoryInterface_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References."=";
   function Java_Box (Value : OrderHistoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryInterface_Access_Array (Value : access Java_Object'Class) return OrderHistoryInterface_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.Java_Unbox_OrderHistoryInterface_Access_Array;
   subtype OrderHistoryInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.OrderHistoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References."=";
   subtype OrderHistoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.OrderHistoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References."=";
   function Java_Box (Value : OrderHistoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package_References.Java_Unbox_OrderHistoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_OrderHistoryInterface (Value : OrderHistoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setUserName (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setDefaultShippingAddress (This : in out OrderHistoryInterface; shippingAddress_Param : access StreetAddress_Package.StreetAddress'Class) is abstract;
   procedure setBillingAddress (This : in out OrderHistoryInterface; billingAddress_Param : access StreetAddress_Package.StreetAddress'Class) is abstract;
   procedure setPaymentInfo (This : in out OrderHistoryInterface; payment_Param : access Payment_Package.Payment'Class) is abstract;
   procedure setShipDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setOrderDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setTransDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setCancelDate (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setStatus (This : in out OrderHistoryInterface; value : Unbounded_String) is abstract;
   procedure setSubTotal (This : in out OrderHistoryInterface; value_Param : access Money_Package.Money'Class) is abstract;
   procedure setShippingCost (This : in out OrderHistoryInterface; value_Param : access Money_Package.Money'Class) is abstract;
   procedure setTaxes (This : in out OrderHistoryInterface; value_Param : access Money_Package.Money'Class) is abstract;
   procedure setTotal (This : in out OrderHistoryInterface; value_Param : access Money_Package.Money'Class) is abstract;
   function getUserName (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getShippingAddress (This : in out OrderHistoryInterface) return StreetAddress_Access is abstract;
   function getBillingAddress (This : in out OrderHistoryInterface) return StreetAddress_Access is abstract;
   function getPaymentInfo (This : in out OrderHistoryInterface) return Payment_Access is abstract;
   function getShipDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getOrderDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getTransDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getCancelDate (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getStatus (This : in out OrderHistoryInterface) return Unbounded_String is abstract;
   function getSubTotal (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getShippingCost (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getTaxes (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getTotal (This : in out OrderHistoryInterface) return Money_Access is abstract;
   function getPaymentMethod (This : in out OrderHistoryInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;


