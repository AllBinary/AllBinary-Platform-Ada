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
limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References is
   type OrderHistoryEntity_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package.OrderHistoryEntity'Class;
   type OrderHistoryEntity_Access_Array is array (Natural range <>) of OrderHistoryEntity_Access;
   type OrderHistoryEntity_Access_Array_Access is access all OrderHistoryEntity_Access_Array;
   type OrderHistoryEntity_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryEntity_Access_Array_Access;
   type OrderHistoryEntity_Access_Array_Access_Array_Access is access all OrderHistoryEntity_Access_Array_Access_Array;
   type OrderHistoryEntity_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryEntity_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryEntity_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryEntity_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryEntity_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryEntity_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryEntity_Access_Array_Object'Class then OrderHistoryEntity_Access_Array_Object'Class (Value.all).Value else null);
   type OrderHistoryEntity_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : OrderHistoryEntity_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : OrderHistoryEntity_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new OrderHistoryEntity_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_OrderHistoryEntity_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return OrderHistoryEntity_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in OrderHistoryEntity_Access_Array_Access_Array_Object'Class then OrderHistoryEntity_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Order_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.Order_Package;
   package OrderHistory_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype OrderHistoryEntity_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access;
   function "=" (Left, Right : OrderHistoryEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References."=";
   subtype OrderHistoryEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array;
   function "=" (Left, Right : OrderHistoryEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References."=";
   subtype OrderHistoryEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References."=";
   function Java_Box (Value : OrderHistoryEntity_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryEntity_Access_Array (Value : access Java_Object'Class) return OrderHistoryEntity_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.Java_Unbox_OrderHistoryEntity_Access_Array;
   subtype OrderHistoryEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access_Array;
   function "=" (Left, Right : OrderHistoryEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References."=";
   subtype OrderHistoryEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.OrderHistoryEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderHistoryEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References."=";
   function Java_Box (Value : OrderHistoryEntity_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.Java_Box;
   function Java_Unbox_OrderHistoryEntity_Access_Array_Access_Array (Value : access Java_Object'Class) return OrderHistoryEntity_Access_Array_Access_Array_Access renames org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package_References.Java_Unbox_OrderHistoryEntity_Access_Array_Access_Array;

   type OrderHistoryEntity is new AbSqlBean and OrderHistoryEntityInterface with record
      logUtil : LogUtil_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderHistoryEntity'Class);
   function Create return OrderHistoryEntity_Access;
   procedure insert (This : in out OrderHistoryEntity; userName : Unbounded_String; order_Param : access Order_Package.Order'Class);
   procedure insert (This : in out OrderHistoryEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure setStatus (This : in out OrderHistoryEntity; orderId : Unbounded_String; status : Unbounded_String);
   procedure setPaymentMethod (This : in out OrderHistoryEntity; orderId : Unbounded_String; paymentMethod : Unbounded_String);
   function getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return BasicArrayList_Access;
   procedure getStoreOrders (This : in out OrderHistoryEntity; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function getOrders (This : in out OrderHistoryEntity; userName : Unbounded_String) return BasicArrayList_Access;
   procedure getOrders (This : in out OrderHistoryEntity; userName : Unbounded_String);
   function getOrders (This : in out OrderHistoryEntity; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access;
   procedure getOrders (This : in out OrderHistoryEntity; status : Unbounded_String; fromDate : Unbounded_String; toDate : Unbounded_String);
   function getOrders (This : in out OrderHistoryEntity; fromDate : Unbounded_String; toDate : Unbounded_String) return BasicArrayList_Access;
   procedure getOrders (This : in out OrderHistoryEntity; fromDate : Unbounded_String; toDate : Unbounded_String);
   function getOrder (This : in out OrderHistoryEntity; id : Unbounded_String) return OrderHistory_Access;
   procedure getOrder (This : in out OrderHistoryEntity; id : Unbounded_String);
   function createTableStatement (This : in out OrderHistoryEntity) return Unbounded_String;
   function createTable (This : in out OrderHistoryEntity) return Unbounded_String;
   function dropTable (This : in out OrderHistoryEntity) return Unbounded_String;
   procedure update (This : in out OrderHistoryEntity; whereHashMap_Param : access HashMap_Package.HashMap'Class; orderHashMap_Param : access HashMap_Package.HashMap'Class);

end org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity_Package;


