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
--  with java.util.ListIterator_Package; use java.util.ListIterator_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.init.db.HistoryDbInitInfo_Package; use org.allbinary.business.init.db.HistoryDbInitInfo_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.business.user.address.ShippingAddressData_Package; use org.allbinary.business.user.address.ShippingAddressData_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
with org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package; use org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
with org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package; use org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
with org.allbinary.business.user.commerce.inventory.item.Item_Package; use org.allbinary.business.user.commerce.inventory.item.Item_Package;
with org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package; use org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
with org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
with org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package; use org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
with org.allbinary.data.generator.OrderItemIdGenerator_Package; use org.allbinary.data.generator.OrderItemIdGenerator_Package;
with org.allbinary.data.tables.TableDataFactory_Package; use org.allbinary.data.tables.TableDataFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
with org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlBean_Package; use org.allbinary.logic.communication.sql.AbSqlBean_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityInterface_Package;

package org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package HistoryDbInitInfo_Package renames Standard.org.allbinary.business.init.db.HistoryDbInitInfo_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package ShippingAddressData_Package renames Standard.org.allbinary.business.user.address.ShippingAddressData_Package;
   package BasketInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketInterface_Package;
   package BasketReview_Package renames Standard.org.allbinary.business.user.commerce.inventory.basket.BasketReview_Package;
   package BasicItemData_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.BasicItemData_Package;
   package Item_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.Item_Package;
   package ItemInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.item.ItemInterface_Package;
   package OrderData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderData_Package;
   package OrderHistoryData_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryData_Package;
   package OrderInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderInterface_Package;
   package ShippingMethodData_Package renames Standard.org.allbinary.business.user.commerce.shipping.ShippingMethodData_Package;
   package OrderItemIdGenerator_Package renames Standard.org.allbinary.data.generator.OrderItemIdGenerator_Package;
   package TableDataFactory_Package renames Standard.org.allbinary.data.tables.TableDataFactory_Package;
   package InventoryEntity_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity_Package;
   package InventoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlBean_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlBean_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;

   type OrderItemsEntity is tagged;
   type OrderItemsEntity_Access is access all OrderItemsEntity'Class;
   type OrderItemsEntity_Access_Array is array (Natural range <>) of OrderItemsEntity_Access;
   type OrderItemsEntity_Access_Array_Access is access all OrderItemsEntity_Access_Array;

   type OrderItemsEntity is new AbSqlBean and OrderItemsEntityInterface with record
      logUtil : LogUtil_Access;
      basicItemData : BasicItemData_Access;
      tableName : Unbounded_String;
   end record;

   procedure Initialize (This : in out OrderItemsEntity'Class);
   function Create return OrderItemsEntity_Access;
   procedure insert (This : in out OrderItemsEntity; userName : Unbounded_String; order_Param : access OrderInterface'Class);
   procedure setStatus (This : in out OrderItemsEntity; orderId : Unbounded_String; groupId : Unbounded_String; status : Unbounded_String);
   function isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String) return Boolean;
   procedure isEverythingShipped (This : in out OrderItemsEntity; orderId : Unbounded_String);
   function getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String) return BasketReview_Access;
   procedure getBasketReview (This : in out OrderItemsEntity; orderId : Unbounded_String);
   function createTableStatement (This : in out OrderItemsEntity) return Unbounded_String;
   function createTable (This : in out OrderItemsEntity) return Unbounded_String;
   function dropTable (This : in out OrderItemsEntity) return Unbounded_String;

end org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity_Package;


