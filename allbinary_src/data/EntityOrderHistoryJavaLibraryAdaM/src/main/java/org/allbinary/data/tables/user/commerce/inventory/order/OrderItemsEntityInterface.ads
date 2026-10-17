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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package BasicDataTableInterface_Package renames Standard.org.allbinary.data.tables.BasicDataTableInterface_Package;

   type OrderItemsEntityInterface is interface and BasicDataTableInterface;
   type OrderItemsEntityInterface_Access is access all OrderItemsEntityInterface'Class;
   type OrderItemsEntityInterface_Access_Array is array (Natural range <>) of OrderItemsEntityInterface_Access;
   type OrderItemsEntityInterface_Access_Array_Access is access all OrderItemsEntityInterface_Access_Array;
   procedure setStatus (This : in out OrderItemsEntityInterface; orderId : Unbounded_String; groupId : Unbounded_String; status : Unbounded_String) is abstract;
   function isEverythingShipped (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) return Boolean is abstract;
   function getBasketReview (This : in out OrderItemsEntityInterface; orderId : Unbounded_String) return BasketReview_Access is abstract;
   procedure insert (This : in out OrderItemsEntityInterface; userName : Unbounded_String; order_Param : access OrderInterface'Class) is abstract;
   procedure insert (This : in out OrderItemsEntityInterface; values_Param : access BasicArrayList'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;


