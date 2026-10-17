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


package body org.allbinary.business.context.modules.storefront.statistics.orders.StoreFrontOrdersStatisticsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontOrdersStatisticsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STOREFRONT_ORDERS_STATISTICS_NAME");
   end Initialize_Fields;


   function getInstance return StoreFrontOrdersStatisticsData_Access is
   begin
        return StoreFrontOrdersStatisticsData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreFrontOrdersStatisticsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontOrdersStatisticsData_Access is
      This : constant StoreFrontOrdersStatisticsData_Access := new StoreFrontOrdersStatisticsData;
   begin
      StoreFrontOrdersStatisticsData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := StoreFrontOrdersStatisticsData_Package.Create;

end org.allbinary.business.context.modules.storefront.statistics.orders.StoreFrontOrdersStatisticsData_Package;


