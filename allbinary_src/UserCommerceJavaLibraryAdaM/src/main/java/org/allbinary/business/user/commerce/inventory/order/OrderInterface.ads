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
limited with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
package org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References is
   type OrderInterface_Access is access all org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package.OrderInterface'Class;
   type OrderInterface_Access_Array is array (Natural range <>) of OrderInterface_Access;
   type OrderInterface_Access_Array_Access is access all OrderInterface_Access_Array;
   type OrderInterface_Access_Array_Access_Array is array (Natural range <>) of OrderInterface_Access_Array_Access;
   type OrderInterface_Access_Array_Access_Array_Access is access all OrderInterface_Access_Array_Access_Array;
   type OrderInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderInterface_Access_Array_Access is (if Value /= null and then Value.all in OrderInterface_Access_Array_Object'Class then OrderInterface_Access_Array_Object'Class (Value.all).Value else null);
   type OrderInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderInterface_Access_Array_Access_Array_Object'Class then OrderInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;

with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References;

package org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package is

   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package Reference_Types is
   subtype BasketInterface_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access;
   use type BasketInterface_Access;
   subtype BasketInterface_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array;
   use type BasketInterface_Access_Array;
   subtype BasketInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access;
   use type BasketInterface_Access_Array_Access;
   subtype BasketInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array;
   use type BasketInterface_Access_Array_Access_Array;
   subtype BasketInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package_References.BasketInterface_Access_Array_Access_Array_Access;
   use type BasketInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OrderInterface is interface;
   subtype OrderInterface_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access;
   function "=" (Left, Right : OrderInterface_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References."=";
   subtype OrderInterface_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array;
   function "=" (Left, Right : OrderInterface_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References."=";
   subtype OrderInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access;
   function "=" (Left, Right : OrderInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References."=";
   function Java_Box (Value : OrderInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.Java_Box;
   function Java_Unbox_OrderInterface_Access_Array (Value : access Java_Object'Class) return OrderInterface_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.Java_Unbox_OrderInterface_Access_Array;
   subtype OrderInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OrderInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References."=";
   subtype OrderInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References."=";
   function Java_Box (Value : OrderInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.Java_Box;
   function Java_Unbox_OrderInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderInterface_Access_Array_Access_Array_Access renames org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.Java_Unbox_OrderInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_OrderInterface (Value : OrderInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setShippingMethod (This : in out OrderInterface; shippingType : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setSpecial (This : in out OrderInterface; special : Unbounded_String) is abstract;
   procedure setStoreName (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setUserComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setUserCancelComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setStoreComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   procedure setStoreCancelComments (This : in out OrderInterface; value : Unbounded_String) is abstract;
   function getBasket (This : in out OrderInterface) return BasketInterface_Access is abstract;
   function getShippingMethod (This : in out OrderInterface) return Unbounded_String is abstract;
   function getPaymentMethod (This : in out OrderInterface) return Unbounded_String is abstract;
   function getSpecial (This : in out OrderInterface) return Unbounded_String is abstract;
   function getId (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreName (This : in out OrderInterface) return Unbounded_String is abstract;
   function getUserComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getUserCancelComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreComments (This : in out OrderInterface) return Unbounded_String is abstract;
   function getStoreCancelComments (This : in out OrderInterface) return Unbounded_String is abstract;

end org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;


