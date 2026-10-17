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


package body org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontInventoryStatisticsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STOREFRONT_INVENTORY_STATISTICS_NAME");
      This.NUMBEROFITEMS := To_Unbounded_String ("STOREFRONT_INVENTORY_STATISTICS_NUMBER_OF_ITEMS");
      This.TOTALVALUE := To_Unbounded_String ("STOREFRONT_INVENTORY_STATISTICS_TOTAL_VALUE");
   end Initialize_Fields;


   function getInstance return StoreFrontInventoryStatisticsData_Access is
   begin
        return StoreFrontInventoryStatisticsData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreFrontInventoryStatisticsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontInventoryStatisticsData_Access is
      This : constant StoreFrontInventoryStatisticsData_Access := new StoreFrontInventoryStatisticsData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant StoreFrontInventoryStatisticsData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StoreFrontInventoryStatisticsData_Package.Create;

end org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsData_Package;


