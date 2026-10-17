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
with org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package; use org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
with org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package; use org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package OrderHistoryInterface_Package renames Standard.org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
   package OrderHistoryEntityFactory_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory_Package;
   package OrderHistoryEntityInterface_Package renames Standard.org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;

   type StoreFrontOrdersHistoryStatistics is tagged;
   type StoreFrontOrdersHistoryStatistics_Access is access all StoreFrontOrdersHistoryStatistics'Class;
   type StoreFrontOrdersHistoryStatistics_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatistics_Access;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access is access all StoreFrontOrdersHistoryStatistics_Access_Array;

   type StoreFrontOrdersHistoryStatistics is new StoreFrontOrdersHistoryStatisticsInterface with record
      numberOfOrdersLong : Long_Long_Integer;
      subTotalMoney : Money_Access;
      shippingCostMoney : Money_Access;
      taxesMoney : Money_Access;
      totalMoney : Money_Access;
   end record;

   procedure Initialize (This : in out StoreFrontOrdersHistoryStatistics'Class; storeFrontInterface : StoreFrontInterface_Access);
   function Create (storeFrontInterface : StoreFrontInterface_Access) return StoreFrontOrdersHistoryStatistics_Access;
   function getNumberOfOrders (This : in out StoreFrontOrdersHistoryStatistics) return Long_Long_Integer;
   procedure getNumberOfOrders (This : in out StoreFrontOrdersHistoryStatistics);
   function getSubTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   procedure getSubTotal (This : in out StoreFrontOrdersHistoryStatistics);
   function getShippingCost (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   procedure getShippingCost (This : in out StoreFrontOrdersHistoryStatistics);
   function getTaxes (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   procedure getTaxes (This : in out StoreFrontOrdersHistoryStatistics);
   function getTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   procedure getTotal (This : in out StoreFrontOrdersHistoryStatistics);
   function toHashMap (This : in out StoreFrontOrdersHistoryStatistics) return HashMap_Access;
   procedure toHashMap (This : in out StoreFrontOrdersHistoryStatistics);
   function toVector (This : in out StoreFrontOrdersHistoryStatistics) return BasicArrayList_Access;
   procedure toVector (This : in out StoreFrontOrdersHistoryStatistics);
   function getKey (This : in out StoreFrontOrdersHistoryStatistics) return Java_Object_Access;
   procedure getKey (This : in out StoreFrontOrdersHistoryStatistics);

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;


