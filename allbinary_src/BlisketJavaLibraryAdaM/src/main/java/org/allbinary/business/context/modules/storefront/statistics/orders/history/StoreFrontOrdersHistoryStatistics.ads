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

limited with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;
package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References is
   type StoreFrontOrdersHistoryStatistics_Access is access all org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package.StoreFrontOrdersHistoryStatistics'Class;
   type StoreFrontOrdersHistoryStatistics_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatistics_Access;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access is access all StoreFrontOrdersHistoryStatistics_Access_Array;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array is array (Natural range <>) of StoreFrontOrdersHistoryStatistics_Access_Array_Access;
   type StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array_Access is access all StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array;
end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References;

with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References;
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
limited with org.allbinary.business.user.commerce.money.Money_Package;
with org.allbinary.business.user.commerce.money.Money_Package_References;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package Money_Package renames Standard.org.allbinary.business.user.commerce.money.Money_Package;
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
   subtype Money_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access;
   use type Money_Access;
   subtype Money_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array;
   use type Money_Access_Array;
   subtype Money_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access;
   use type Money_Access_Array_Access;
   subtype Money_Access_Array_Access_Array is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array;
   use type Money_Access_Array_Access_Array;
   subtype Money_Access_Array_Access_Array_Access is org.allbinary.business.user.commerce.money.Money_Package_References.Money_Access_Array_Access_Array_Access;
   use type Money_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StoreFrontOrdersHistoryStatistics_Access is org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References.StoreFrontOrdersHistoryStatistics_Access;
   function "=" (Left, Right : StoreFrontOrdersHistoryStatistics_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References."=";
   subtype StoreFrontOrdersHistoryStatistics_Access_Array is org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References.StoreFrontOrdersHistoryStatistics_Access_Array;
   function "=" (Left, Right : StoreFrontOrdersHistoryStatistics_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References."=";
   subtype StoreFrontOrdersHistoryStatistics_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References.StoreFrontOrdersHistoryStatistics_Access_Array_Access;
   function "=" (Left, Right : StoreFrontOrdersHistoryStatistics_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References."=";
   subtype StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References.StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References."=";
   subtype StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References.StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontOrdersHistoryStatistics_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package_References."=";

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


