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

limited with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;
package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References is
   type OrderItemsEntity_Access is access all org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package.OrderItemsEntity'Class;
   type OrderItemsEntity_Access_Array is array (Natural range <>) of OrderItemsEntity_Access;
   type OrderItemsEntity_Access_Array_Access is access all OrderItemsEntity_Access_Array;
   type OrderItemsEntity_Access_Array_Access_Array is array (Natural range <>) of OrderItemsEntity_Access_Array_Access;
   type OrderItemsEntity_Access_Array_Access_Array_Access is access all OrderItemsEntity_Access_Array_Access_Array;
end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References;

with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.ListIterator_Package; use java.util.ListIterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package_References;
limited with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References;
limited with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
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
   subtype BasicItemData_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access;
   use type BasicItemData_Access;
   subtype BasicItemData_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array;
   use type BasicItemData_Access_Array;
   subtype BasicItemData_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access;
   use type BasicItemData_Access_Array_Access;
   subtype BasicItemData_Access_Array_Access_Array is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array;
   use type BasicItemData_Access_Array_Access_Array;
   subtype BasicItemData_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package_References.BasicItemData_Access_Array_Access_Array_Access;
   use type BasicItemData_Access_Array_Access_Array_Access;
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


   subtype OrderItemsEntity_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access;
   function "=" (Left, Right : OrderItemsEntity_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References."=";
   subtype OrderItemsEntity_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array;
   function "=" (Left, Right : OrderItemsEntity_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References."=";
   subtype OrderItemsEntity_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntity_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References."=";
   subtype OrderItemsEntity_Access_Array_Access_Array is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access_Array;
   function "=" (Left, Right : OrderItemsEntity_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References."=";
   subtype OrderItemsEntity_Access_Array_Access_Array_Access is org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References.OrderItemsEntity_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OrderItemsEntity_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package_References."=";

   type OrderItemsEntity is new AbSqlBean and OrderItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemsEntity'Class);
   function Create return OrderItemsEntity_Access;
   procedure insert (This : in out OrderItemsEntity; userName : Unbounded_String; order_Param : access OrderInterface_Package.OrderInterface'Class);
   procedure setStatus (This : in out OrderItemsEntity; orderId : Unbounded_String; groupId : Unbounded_String; status : Unbounded_String);
   function isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String) return Boolean;
   procedure isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String);
   function getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String) return BasketReview_Access;
   procedure getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String);
   function createTableStatement (This : in out OrderItemsEntity) return Unbounded_String;
   function createTable (This : in out OrderItemsEntity) return Unbounded_String;
   function dropTable (This : in out OrderItemsEntity) return Unbounded_String;
   procedure insert (This : in out OrderItemsEntity; values_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;


