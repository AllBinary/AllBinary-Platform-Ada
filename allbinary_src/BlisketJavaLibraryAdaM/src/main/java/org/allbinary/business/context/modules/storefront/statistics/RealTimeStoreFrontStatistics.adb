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


package body org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package is

   procedure Initialize_Fields (This : in out RealTimeStoreFrontStatistics'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RealTimeStoreFrontStatistics'Class; storeFrontInterface : StoreFrontInterface_Access) is
   begin
      Initialize_Fields (This);
        This.storeFrontAdvertisementsStatisticsInterface := StoreFrontAdvertisementsStatisticsInterface_Access (StoreFrontAdvertisementsStatistics_Package.Create (storeFrontInterface));
        This.storeFrontUsersStatisticsInterface := StoreFrontUsersStatisticsInterface_Access (StoreFrontUsersStatistics_Package.Create (storeFrontInterface));
        This.storeFrontInventoryStatisticsInterface := StoreFrontInventoryStatisticsInterface_Access (StoreFrontInventoryStatistics_Package.Create (storeFrontInterface));
        This.storeFrontOrderHistoryStatisticsInterface := StoreFrontOrdersHistoryStatisticsInterface_Access (StoreFrontOrdersHistoryStatistics_Package.Create (storeFrontInterface));
   end Initialize;

   function Create (storeFrontInterface : StoreFrontInterface_Access) return RealTimeStoreFrontStatistics_Access is
      This : constant RealTimeStoreFrontStatistics_Access := new RealTimeStoreFrontStatistics;
   begin
      Initialize (This.all, storeFrontInterface);
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

   procedure getAdvertisements (This : in out RealTimeStoreFrontStatistics) is
      Java_Result : constant StoreFrontAdvertisementsStatisticsInterface_Access := RealTimeStoreFrontStatistics'Class (This).getAdvertisements;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAdvertisements;

   procedure getUsers (This : in out RealTimeStoreFrontStatistics) is
      Java_Result : constant StoreFrontUsersStatisticsInterface_Access := RealTimeStoreFrontStatistics'Class (This).getUsers;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getUsers;

   procedure getInventory (This : in out RealTimeStoreFrontStatistics) is
      Java_Result : constant StoreFrontInventoryStatisticsInterface_Access := RealTimeStoreFrontStatistics'Class (This).getInventory;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInventory;

   procedure getOrders (This : in out RealTimeStoreFrontStatistics) is
      Java_Result : constant StoreFrontOrdersHistoryStatisticsInterface_Access := RealTimeStoreFrontStatistics'Class (This).getOrders;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOrders;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatistics_Package;


