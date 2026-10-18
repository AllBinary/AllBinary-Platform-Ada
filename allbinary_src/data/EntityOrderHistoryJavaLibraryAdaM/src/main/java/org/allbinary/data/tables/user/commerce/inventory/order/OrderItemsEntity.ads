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
--  with java.util.ListIterator_Package; use java.util.ListIterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package is

   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;

   type OrderItemsEntity is tagged;
   type OrderItemsEntity_Access is access all OrderItemsEntity'Class;
   type OrderItemsEntity_Access_Array is array (Natural range <>) of OrderItemsEntity_Access;
   type OrderItemsEntity_Access_Array_Access is access all OrderItemsEntity_Access_Array;
   type OrderItemsEntity_Access_Array_Access_Array is array (Natural range <>) of OrderItemsEntity_Access_Array_Access;
   type OrderItemsEntity_Access_Array_Access_Array_Access is access all OrderItemsEntity_Access_Array_Access_Array;

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

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;


