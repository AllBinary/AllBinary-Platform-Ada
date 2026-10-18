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
with org.allbinary.business.user.commerce.money.Money_Package; use org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;

   type StoreFrontOrdersHistoryStatistics is tagged;
   type StoreFrontOrdersHistoryStatistics_Access is access all StoreFrontOrdersHistoryStatistics'Class;
   type StoreFrontOrdersHistoryStatistics_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatistics_Access;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access is access all StoreFrontOrdersHistoryStatistics_Access_Array;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatistics_Access_Array_Access;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array_Access is access all StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array;

   type StoreFrontOrdersHistoryStatistics is new Java_Object and StoreFrontOrdersHistoryStatisticsInterface with record
      numberOfOrdersLong : Long_Long_Integer;
      subTotalMoney : Money_Access;
      shippingCostMoney : Money_Access;
      taxesMoney : Money_Access;
      totalMoney : Money_Access;
   end record;

   procedure Initialize (This : in out StoreFrontOrdersHistoryStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return StoreFrontOrdersHistoryStatistics_Access;
   function getNumberOfOrders (This : in out StoreFrontOrdersHistoryStatistics) return Long_Long_Integer;
   function getSubTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   function getShippingCost (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   function getTaxes (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   function getTotal (This : in out StoreFrontOrdersHistoryStatistics) return Money_Access;
   function toHashMap (This : in out StoreFrontOrdersHistoryStatistics) return HashMap_Access;
   function toVector (This : in out StoreFrontOrdersHistoryStatistics) return BasicArrayList_Access;
   function getKey (This : in out StoreFrontOrdersHistoryStatistics) return Java_Object_Access;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;


