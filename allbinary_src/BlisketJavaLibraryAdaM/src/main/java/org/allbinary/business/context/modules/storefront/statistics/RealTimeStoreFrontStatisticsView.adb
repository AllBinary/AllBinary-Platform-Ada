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


with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package;

package body org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package is

   package StoreFrontAdvertisementsStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface_Package;
   package StoreFrontAdvertisementsStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;
   package StoreFrontInventoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface_Package;
   package StoreFrontInventoryStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView_Package;
   package StoreFrontOrdersHistoryStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface_Package;
   package StoreFrontOrdersHistoryStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;
   package StoreFrontUsersStatisticsInterface_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface_Package;
   package StoreFrontUsersStatisticsView_Package renames Standard.org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;
   package UserRoleFactory_Package renames Standard.org.allbinary.business.user.role.UserRoleFactory_Package;
   procedure Initialize_Fields (This : in out RealTimeStoreFrontStatisticsView'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RealTimeStoreFrontStatisticsView'Class; storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class) is
      storeFrontStatisticsInterface : constant StoreFrontStatisticsInterface_Access := StoreFrontStatisticsInterface_Access (storeFrontStatisticsInterface_Param);
      userRole : constant UserRole_Access := UserRole_Access (userRole_Param);
   begin
      Initialize_Fields (This);
        This.storeFrontStatisticsInterface := storeFrontStatisticsInterface;
        This.userRole := userRole;
   end Initialize;

   function Create (storeFrontStatisticsInterface_Param : access StoreFrontStatisticsInterface_Package.StoreFrontStatisticsInterface'Class; userRole_Param : access UserRole_Package.UserRole'Class) return RealTimeStoreFrontStatisticsView_Access is
      This : constant RealTimeStoreFrontStatisticsView_Access := new RealTimeStoreFrontStatisticsView;
   begin
      RealTimeStoreFrontStatisticsView_Package.Initialize (This.all, storeFrontStatisticsInterface_Param, userRole_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      storeFrontAdvertisementsStatisticsInterface : StoreFrontAdvertisementsStatisticsInterface_Access;
      storeFrontAdvertisementsStatisticsDomNodeInterface : DomNodeInterface_Access;
      storeFrontInventoryStatisticsInterface : StoreFrontInventoryStatisticsInterface_Access;
      storeFrontInventoryStatisticsDomNodeInterface : DomNodeInterface_Access;
      storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface_Access;
      storeFrontOrdersHistoryStatisticsDomNodeInterface : DomNodeInterface_Access;
      storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface_Access;
      storeFrontUsersStatisticsDomNodeInterface : DomNodeInterface_Access;
   begin
        node := document.createElement (StoreFrontStatisticsData_Package.getInstance.NAME);
        storeFrontAdvertisementsStatisticsInterface := This.storeFrontStatisticsInterface.getAdvertisements;
        storeFrontAdvertisementsStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontAdvertisementsStatisticsView_Package.Create (storeFrontAdvertisementsStatisticsInterface));
        node.appendChild (storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontInventoryStatisticsInterface := This.storeFrontStatisticsInterface.getInventory;
        storeFrontInventoryStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontInventoryStatisticsView_Package.Create (storeFrontInventoryStatisticsInterface));
        node.appendChild (storeFrontInventoryStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontOrdersHistoryStatisticsInterface := This.storeFrontStatisticsInterface.getOrders;
        storeFrontOrdersHistoryStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontOrdersHistoryStatisticsView_Package.Create (storeFrontOrdersHistoryStatisticsInterface));
        node.appendChild (storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode (document));
        if (This.userRole) = (UserRoleFactory_Package.getInstance.ADMINISTRATOR) then
            storeFrontUsersStatisticsInterface := This.storeFrontStatisticsInterface.getUsers;
            storeFrontUsersStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontUsersStatisticsView_Package.Create (storeFrontUsersStatisticsInterface));
            node.appendChild (storeFrontUsersStatisticsDomNodeInterface.toXmlNode (document));
        end if;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := RealTimeStoreFrontStatisticsView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


