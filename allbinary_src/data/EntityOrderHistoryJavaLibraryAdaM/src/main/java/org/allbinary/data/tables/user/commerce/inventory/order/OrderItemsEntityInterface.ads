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

limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References is
   type OrderItemsEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package.OrderItemsEntityInterface'Class;
   type OrderItemsEntityInterface_Access_Array is array (Natural range <>) of OrderItemsEntityInterface_Access;
   type OrderItemsEntityInterface_Access_Array_Access is access all OrderItemsEntityInterface_Access_Array;
   type OrderItemsEntityInterface_Access_Array_Access_Array is array (Natural range <>) of OrderItemsEntityInterface_Access_Array_Access;
   type OrderItemsEntityInterface_Access_Array_Access_Array_Access is access all OrderItemsEntityInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype BasketReview_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access;
   use type BasketReview_Access;
   subtype BasketReview_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array;
   use type BasketReview_Access_Array;
   subtype BasketReview_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access;
   use type BasketReview_Access_Array_Access;
   subtype BasketReview_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array;
   use type BasketReview_Access_Array_Access_Array;
   subtype BasketReview_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References.BasketReview_Access_Array_Access_Array_Access;
   use type BasketReview_Access_Array_Access_Array_Access;
   subtype OrderInterface_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access;
   use type OrderInterface_Access;
   subtype OrderInterface_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array;
   use type OrderInterface_Access_Array;
   subtype OrderInterface_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access;
   use type OrderInterface_Access_Array_Access;
   subtype OrderInterface_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array;
   use type OrderInterface_Access_Array_Access_Array;
   subtype OrderInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References.OrderInterface_Access_Array_Access_Array_Access;
   use type OrderInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type OrderItemsEntityInterface is interface and BasicDataTableInterface;
   subtype OrderItemsEntityInterface_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References.OrderItemsEntityInterface_Access;
   function "=" (Left, Right : OrderItemsEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References."=";
   subtype OrderItemsEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References.OrderItemsEntityInterface_Access_Array;
   function "=" (Left, Right : OrderItemsEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References."=";
   subtype OrderItemsEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References.OrderItemsEntityInterface_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References."=";
   subtype OrderItemsEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References.OrderItemsEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OrderItemsEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References."=";
   subtype OrderItemsEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References.OrderItemsEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package_References."=";
   function Java_Object_Access_From_OrderItemsEntityInterface (Value : OrderItemsEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure setStatus (This : in out OrderItemsEntityInterface; orderId : Unbounded_String; groupId : Unbounded_String; status : Unbounded_String) is abstract;
   function isEverythingShipped (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) return Boolean is abstract;
   procedure isEverythingShipped (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) is abstract;
   function getBasketReview (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) return BasketReview_Access is abstract;
   procedure getBasketReview (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) is abstract;
   procedure insert (This : in out OrderItemsEntityInterface; userName : Unbounded_String; order_Param : access OrderInterface_Package.OrderInterface'Class) is abstract;
   procedure insert (This : in out OrderItemsEntityInterface; values_Param : access BasicArrayList_Package.BasicArrayList'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;


