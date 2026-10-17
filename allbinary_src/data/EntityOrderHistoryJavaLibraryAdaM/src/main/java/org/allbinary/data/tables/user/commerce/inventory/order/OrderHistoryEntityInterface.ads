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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Order_Package renames org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderHistory_Package renames org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package BasicDataTableInterface_Package renames org.allbinary.data.tables.BasicDataTableInterface_Package;

   type OrderHistoryEntityInterface is interface and BasicDataTableInterface;
   type OrderHistoryEntityInterface_Access is access all OrderHistoryEntityInterface'Class;
   type OrderHistoryEntityInterface_Access_Array is array (Natural range <>) of OrderHistoryEntityInterface_Access;
   type OrderHistoryEntityInterface_Access_Array_Access is access all OrderHistoryEntityInterface_Access_Array;
   procedure insert (This : in out OrderHistoryEntityInterface; userName : Unbounded_String; order : Order_Access) is abstract;
   procedure setStatus (This : in out OrderHistoryEntityInterface; orderId : Unbounded_String; status : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out OrderHistoryEntityInterface; orderId : Unbounded_String; status : Unbounded_String) is abstract;
   function getStoreOrders (This : in out OrderHistoryEntityInterface; storeFrontInterface : StoreFrontInterface_Access) return BasicArrayList_Access is abstract;
   function getOrders (This : in out OrderHistoryEntityInterface; userName : Unbounded_String) return BasicArrayList_Access is abstract;
   function getOrders (This : in out OrderHistoryEntityInterface; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access is abstract;
   function getOrder (This : in out OrderHistoryEntityInterface; id : Unbounded_String) return OrderHistory_Access is abstract;
   procedure update (This : in out OrderHistoryEntityInterface; whereHashMap : HashMap_Access; orderHashMap : HashMap_Access) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;


