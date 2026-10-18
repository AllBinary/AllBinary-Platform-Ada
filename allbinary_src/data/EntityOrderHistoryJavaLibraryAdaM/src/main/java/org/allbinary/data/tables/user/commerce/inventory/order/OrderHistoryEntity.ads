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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.Order_Package; use org.allbinary.business.user.commerce.inventory.order.Order_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
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

   type OrderHistoryEntity is tagged;
   type OrderHistoryEntity_Access is access all OrderHistoryEntity'Class;
   type OrderHistoryEntity_Access_Array is array (Natural range <>) of OrderHistoryEntity_Access;
   type OrderHistoryEntity_Access_Array_Access is access all OrderHistoryEntity_Access_Array;
   type OrderHistoryEntity_Access_Array_Access_Array is array (Natural range <>) of OrderHistoryEntity_Access_Array_Access;
   type OrderHistoryEntity_Access_Array_Access_Array_Access is access all OrderHistoryEntity_Access_Array_Access_Array;

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


