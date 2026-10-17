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


package body org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontAdvertisementsStatisticsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STOREFRONT_ADVERTISEMENTS_STATISTICS_NAME");
   end Initialize_Fields;


   function getInstance return StoreFrontAdvertisementsStatisticsData_Access is
   begin
        return StoreFrontAdvertisementsStatisticsData_Package.instance;
   end getInstance;

   procedure Initialize (This : in out StoreFrontAdvertisementsStatisticsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontAdvertisementsStatisticsData_Access is
      This : constant StoreFrontAdvertisementsStatisticsData_Access := new StoreFrontAdvertisementsStatisticsData;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant StoreFrontAdvertisementsStatisticsData_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := StoreFrontAdvertisementsStatisticsData_Package.Create;

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsData_Package;


