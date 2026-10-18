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
with org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package; use org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package is

   package StoreFrontInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontInterface_Package;
   package StoreFrontAdvertisementsStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
   package StoreFrontInventoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
   package StoreFrontOrdersHistoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
   package StoreFrontUsersStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

   type RealTimeStoreFrontStatistics is tagged;
   type RealTimeStoreFrontStatistics_Access is access all RealTimeStoreFrontStatistics'Class;
   type RealTimeStoreFrontStatistics_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatistics_Access;
   type RealTimeStoreFrontStatistics_Access_Array_Access is access all RealTimeStoreFrontStatistics_Access_Array;
   type RealTimeStoreFrontStatistics_Access_Array_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatistics_Access_Array_Access;
   type RealTimeStoreFrontStatistics_Access_Array_Access_Array_Access is access all RealTimeStoreFrontStatistics_Access_Array_Access_Array;

   type RealTimeStoreFrontStatistics is new Java_Object and StoreFrontStatisticsInterface with record
      storeFrontAdvertisementsStatisticsInterface : StoreFrontAdvertisementsStatisticsInterface_Access;
      storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface_Access;
      storeFrontInventoryStatisticsInterface : StoreFrontInventoryStatisticsInterface_Access;
      storeFrontOrderHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface_Access;
   end record;

   procedure Initialize (This : in out RealTimeStoreFrontStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class);
   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return RealTimeStoreFrontStatistics_Access;
   function getAdvertisements (This : in out RealTimeStoreFrontStatistics) return StoreFrontAdvertisementsStatisticsInterface_Access;
   function getUsers (This : in out RealTimeStoreFrontStatistics) return StoreFrontUsersStatisticsInterface_Access;
   function getInventory (This : in out RealTimeStoreFrontStatistics) return StoreFrontInventoryStatisticsInterface_Access;
   function getOrders (This : in out RealTimeStoreFrontStatistics) return StoreFrontOrdersHistoryStatisticsInterface_Access;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;


