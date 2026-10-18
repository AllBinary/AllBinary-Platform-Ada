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


with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;

package body org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package is

   package StoreFrontAdvertisementsStatistics_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics_Package;
   package StoreFrontInventoryStatistics_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics_Package;
   package StoreFrontOrdersHistoryStatistics_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics_Package;
   package StoreFrontUsersStatistics_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics_Package;
   procedure Initialize_Fields (This : in out RealTimeStoreFrontStatistics'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RealTimeStoreFrontStatistics'Class; storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) is
      storeFrontInterface : constant StoreFrontInterface_Access := StoreFrontInterface_Access (storeFrontInterface_Param);
   begin
      Initialize_Fields (This);
        This.storeFrontAdvertisementsStatisticsInterface := StoreFrontAdvertisementsStatisticsInterface_Access (StoreFrontAdvertisementsStatistics_Package.Create (storeFrontInterface));
        This.storeFrontUsersStatisticsInterface := StoreFrontUsersStatisticsInterface_Access (StoreFrontUsersStatistics_Package.Create (storeFrontInterface));
        This.storeFrontInventoryStatisticsInterface := StoreFrontInventoryStatisticsInterface_Access (StoreFrontInventoryStatistics_Package.Create (storeFrontInterface));
        This.storeFrontOrderHistoryStatisticsInterface := StoreFrontOrdersHistoryStatisticsInterface_Access (StoreFrontOrdersHistoryStatistics_Package.Create (storeFrontInterface));
   end Initialize;

   function Create (storeFrontInterface_Param : access StoreFrontInterface_Package.StoreFrontInterface'Class) return RealTimeStoreFrontStatistics_Access is
      This : constant RealTimeStoreFrontStatistics_Access := new RealTimeStoreFrontStatistics;
   begin
      RealTimeStoreFrontStatistics_Package.Initialize (This.all, storeFrontInterface_Param);
      return This;
   end Create;

   function getAdvertisements (This : in out RealTimeStoreFrontStatistics) return StoreFrontAdvertisementsStatisticsInterface_Access is
   begin
        return This.storeFrontAdvertisementsStatisticsInterface;
   end getAdvertisements;

   function getUsers (This : in out RealTimeStoreFrontStatistics) return StoreFrontUsersStatisticsInterface_Access is
   begin
        return This.storeFrontUsersStatisticsInterface;
   end getUsers;

   function getInventory (This : in out RealTimeStoreFrontStatistics) return StoreFrontInventoryStatisticsInterface_Access is
   begin
        return This.storeFrontInventoryStatisticsInterface;
   end getInventory;

   function getOrders (This : in out RealTimeStoreFrontStatistics) return StoreFrontOrdersHistoryStatisticsInterface_Access is
   begin
        return This.storeFrontOrderHistoryStatisticsInterface;
   end getOrders;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;


