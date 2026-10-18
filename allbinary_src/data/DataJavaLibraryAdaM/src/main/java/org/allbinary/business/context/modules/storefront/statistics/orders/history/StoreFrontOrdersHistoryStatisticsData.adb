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



package body org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontOrdersHistoryStatisticsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME");
      This.NUMBEROFORDERS := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS");
      This.SUBTOTAL := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL");
      This.SHIPPINGCOST := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST");
      This.TAXES := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES");
      This.TOTAL := To_Unbounded_String ("STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL");
   end Initialize_Fields;


   function getInstance return StoreFrontOrdersHistoryStatisticsData_Access is
   begin
        return StoreFrontOrdersHistoryStatisticsData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreFrontOrdersHistoryStatisticsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontOrdersHistoryStatisticsData_Access is
      This : constant StoreFrontOrdersHistoryStatisticsData_Access := new StoreFrontOrdersHistoryStatisticsData;
   begin
      StoreFrontOrdersHistoryStatisticsData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := StoreFrontOrdersHistoryStatisticsData_Package.Create;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsData_Package;


