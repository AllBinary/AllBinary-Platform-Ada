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
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

package org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package is

   package StoreFrontAdvertisementsStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
   package StoreFrontInventoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
   package StoreFrontOrdersHistoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
   package StoreFrontUsersStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;

   type StoreFrontStatisticsInterface is interface;
   type StoreFrontStatisticsInterface_Access is access all StoreFrontStatisticsInterface'Class;
   type StoreFrontStatisticsInterface_Access_Array is array (Natural range <>) of StoreFrontStatisticsInterface_Access;
   type StoreFrontStatisticsInterface_Access_Array_Access is access all StoreFrontStatisticsInterface_Access_Array;
   type StoreFrontStatisticsInterface_Access_Array_Access_Array is array (Natural range <>) of StoreFrontStatisticsInterface_Access_Array_Access;
   type StoreFrontStatisticsInterface_Access_Array_Access_Array_Access is access all StoreFrontStatisticsInterface_Access_Array_Access_Array;
   function getAdvertisements (This : in out StoreFrontStatisticsInterface) return StoreFrontAdvertisementsStatisticsInterface_Access is abstract;
   function getUsers (This : in out StoreFrontStatisticsInterface) return StoreFrontUsersStatisticsInterface_Access is abstract;
   function getInventory (This : in out StoreFrontStatisticsInterface) return StoreFrontInventoryStatisticsInterface_Access is abstract;
   function getOrders (This : in out StoreFrontStatisticsInterface) return StoreFrontOrdersHistoryStatisticsInterface_Access is abstract;

end org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;


