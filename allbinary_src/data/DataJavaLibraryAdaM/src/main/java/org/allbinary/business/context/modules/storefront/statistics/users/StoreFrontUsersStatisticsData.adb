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


package body org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package is

   procedure Initialize_Fields (This : in out StoreFrontUsersStatisticsData'Class) is
   begin
      null;
      This.NAME := To_Unbounded_String ("STOREFRONT_USERS_STATISTICS_NAME");
      This.NUMBEROFUSERS := To_Unbounded_String ("STOREFRONT_USERS_STATISTICS_NUMBER_OF_USERS");
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontUsersStatisticsData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreFrontUsersStatisticsData_Access is
      This : constant StoreFrontUsersStatisticsData_Access := new StoreFrontUsersStatisticsData;
   begin
      StoreFrontUsersStatisticsData_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return StoreFrontUsersStatisticsData_Access is
   begin
        return StoreFrontUsersStatisticsData_Package.instance;
   end getInstance;

begin
   null;
   instance := StoreFrontUsersStatisticsData_Package.Create;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;


