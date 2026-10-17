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
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package;

package org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package is

   package StoreFrontAdvertisementsStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
   package StoreFrontAdvertisementsStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;
   package StoreFrontInventoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
   package StoreFrontInventoryStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package;
   package StoreFrontOrdersHistoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
   package StoreFrontOrdersHistoryStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;
   package StoreFrontUsersStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
   package StoreFrontUsersStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;
   package UserRole_Package renames Standard.org.allbinary.business.user.role.UserRole_Package;
   package UserRoleFactory_Package renames Standard.org.allbinary.business.user.role.UserRoleFactory_Package;
   package DomNodeInterface_Package renames Standard.org.allbinary.data.tree.dom.DomNodeInterface_Package;
   package Document_Package renames Standard.org.w3c.dom.Document_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type RealTimeStoreFrontStatisticsView is tagged;
   type RealTimeStoreFrontStatisticsView_Access is access all RealTimeStoreFrontStatisticsView'Class;
   type RealTimeStoreFrontStatisticsView_Access_Array is array (Natural range <>) of RealTimeStoreFrontStatisticsView_Access;
   type RealTimeStoreFrontStatisticsView_Access_Array_Access is access all RealTimeStoreFrontStatisticsView_Access_Array;

   type RealTimeStoreFrontStatisticsView is new DomNodeInterface with record
      storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access;
      userRole : UserRole_Access;
   end record;

   procedure Initialize (This : in out RealTimeStoreFrontStatisticsView'Class; storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access; userRole : UserRole_Access);
   function Create (storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access; userRole : UserRole_Access) return RealTimeStoreFrontStatisticsView_Access;
   function toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document : Document_Access) return Node_Access;
   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document : Document_Access);

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


