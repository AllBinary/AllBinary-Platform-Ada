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
limited with org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;
package org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References is
   type OrderProcessorUtil_Access is access all org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package.OrderProcessorUtil'Class;
   type OrderProcessorUtil_Access_Array is array (Natural range <>) of OrderProcessorUtil_Access;
   type OrderProcessorUtil_Access_Array_Access is access all OrderProcessorUtil_Access_Array;
   type OrderProcessorUtil_Access_Array_Access_Array is array (Natural range <>) of OrderProcessorUtil_Access_Array_Access;
   type OrderProcessorUtil_Access_Array_Access_Array_Access is access all OrderProcessorUtil_Access_Array_Access_Array;
   type OrderProcessorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderProcessorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderProcessorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderProcessorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderProcessorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderProcessorUtil_Access_Array_Access is (if Value /= null and then Value.all in OrderProcessorUtil_Access_Array_Object'Class then OrderProcessorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type OrderProcessorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderProcessorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderProcessorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderProcessorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderProcessorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderProcessorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderProcessorUtil_Access_Array_Access_Array_Object'Class then OrderProcessorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References;

with org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package_References;

package org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package is

   package Reference_Types is
   subtype Order_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access;
   use type Order_Access;
   subtype Order_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array;
   use type Order_Access_Array;
   subtype Order_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access;
   use type Order_Access_Array_Access;
   subtype Order_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array;
   use type Order_Access_Array_Access_Array;
   subtype Order_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.Order_Package_References.Order_Access_Array_Access_Array_Access;
   use type Order_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype OrderProcessorUtil_Access is org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.OrderProcessorUtil_Access;
   function "=" (Left, Right : OrderProcessorUtil_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References."=";
   subtype OrderProcessorUtil_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.OrderProcessorUtil_Access_Array;
   function "=" (Left, Right : OrderProcessorUtil_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References."=";
   subtype OrderProcessorUtil_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.OrderProcessorUtil_Access_Array_Access;
   function "=" (Left, Right : OrderProcessorUtil_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References."=";
   function Java_Box (Value : OrderProcessorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.Java_Box;
   function Java_Unbox_OrderProcessorUtil_Access_Array (Value : access Java_Object'Class) return OrderProcessorUtil_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.Java_Unbox_OrderProcessorUtil_Access_Array;
   subtype OrderProcessorUtil_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.OrderProcessorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : OrderProcessorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References."=";
   subtype OrderProcessorUtil_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.OrderProcessorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderProcessorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References."=";
   function Java_Box (Value : OrderProcessorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.Java_Box;
   function Java_Unbox_OrderProcessorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderProcessorUtil_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package_References.Java_Unbox_OrderProcessorUtil_Access_Array_Access_Array;

   type OrderProcessorUtil is new Java_Object with record
      ORDER_PROCESSED : Unbounded_String;
   end record;
   instance : OrderProcessorUtil_Access;

   procedure Initialize (This : in out OrderProcessorUtil'Class);
   function Create return OrderProcessorUtil_Access;
   function getInstance return OrderProcessorUtil_Access;
   function process (This : in out OrderProcessorUtil; userName : Unbounded_String; order_Param : access Order_Package.Order'Class) return Unbounded_String;
   procedure process (This : in out OrderProcessorUtil; userName : Unbounded_String; order_Param : access Order_Package.Order'Class);

end org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil_Package;


