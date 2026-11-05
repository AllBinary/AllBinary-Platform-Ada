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

limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References is
   type OrderHistoryEntityInterface_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package.OrderHistoryEntityInterface'Class;
   type OrderHistoryEntityInterface_Access_Array is array (Natural range <>) of OrderHistoryEntityInterface_Access;
   type OrderHistoryEntityInterface_Access_Array_Access is access all OrderHistoryEntityInterface_Access_Array;
   type OrderHistoryEntityInterface_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryEntityInterface_Access_Array_Access;
   type OrderHistoryEntityInterface_Access_Array_Access_Array_Access is access all OrderHistoryEntityInterface_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package_References;
with org.allbinary.data.tables.BasicDataTableInterface_Package; use org.allbinary.data.tables.BasicDataTableInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Order_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
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
   subtype StoreFrontInterface_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access;
   use type StoreFrontInterface_Access;
   subtype StoreFrontInterface_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array;
   use type StoreFrontInterface_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access;
   subtype StoreFrontInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array;
   use type StoreFrontInterface_Access_Array_Access_Array;
   subtype StoreFrontInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package_References.StoreFrontInterface_Access_Array_Access_Array_Access;
   use type StoreFrontInterface_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   type OrderHistoryEntityInterface is interface and BasicDataTableInterface;
   subtype OrderHistoryEntityInterface_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References.OrderHistoryEntityInterface_Access;
   function "=" (Left, Right : OrderHistoryEntityInterface_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References."=";
   subtype OrderHistoryEntityInterface_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References.OrderHistoryEntityInterface_Access_Array;
   function "=" (Left, Right : OrderHistoryEntityInterface_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References."=";
   subtype OrderHistoryEntityInterface_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References.OrderHistoryEntityInterface_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntityInterface_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References."=";
   subtype OrderHistoryEntityInterface_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References.OrderHistoryEntityInterface_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryEntityInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References."=";
   subtype OrderHistoryEntityInterface_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References.OrderHistoryEntityInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntityInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package_References."=";
   function Java_Object_Access_From_OrderHistoryEntityInterface (Value : OrderHistoryEntityInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure insert (This : in out OrderHistoryEntityInterface; userName : Unbounded_String; order_Param : access Order_Package.Order'Class) is abstract;
   procedure setStatus (This : in out OrderHistoryEntityInterface; orderId : Unbounded_String; status : Unbounded_String) is abstract;
   procedure setPaymentMethod (This : in out OrderHistoryEntityInterface; orderId : Unbounded_String; status : Unbounded_String) is abstract;
   function getStoreOrders (This : in out OrderHistoryEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access is abstract;
   procedure getStoreOrders (This : in out OrderHistoryEntityInterface; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is abstract;
   function getOrders (This : in out OrderHistoryEntityInterface; userName : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure getOrders (This : in out OrderHistoryEntityInterface; userName : Unbounded_String) is abstract;
   function getOrders (This : in out OrderHistoryEntityInterface; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access is abstract;
   procedure getOrders (This : in out OrderHistoryEntityInterface; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) is abstract;
   function getOrder (This : in out OrderHistoryEntityInterface; id : Unbounded_String) return OrderHistory_Access is abstract;
   procedure getOrder (This : in out OrderHistoryEntityInterface; id : Unbounded_String) is abstract;
   procedure update (This : in out OrderHistoryEntityInterface; whereHashMap_Param : access HashMap_Package.HashMap'Class; orderHashMap_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;


