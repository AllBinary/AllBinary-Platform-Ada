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


package body org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package is

   procedure Initialize_Fields (This : in out RealTimeStoreFrontStatisticsView'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out RealTimeStoreFrontStatisticsView'Class; storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access; userRole : UserRole_Access) is
   begin
      Initialize_Fields (This);
        This.storeFrontStatisticsInterface := storeFrontStatisticsInterface;
        This.userRole := userRole;
   end Initialize;

   function Create (storeFrontStatisticsInterface : StoreFrontStatisticsInterface_Access; userRole : UserRole_Access) return RealTimeStoreFrontStatisticsView_Access is
      This : constant RealTimeStoreFrontStatisticsView_Access := new RealTimeStoreFrontStatisticsView;
   begin
      Initialize (This.all, storeFrontStatisticsInterface, userRole);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document : Document_Access) return Node_Access is
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
        storeFrontAdvertisementsStatisticsDomNodeInterface := StoreFrontAdvertisementsStatisticsView_Package.Create (storeFrontAdvertisementsStatisticsInterface);
        node.appendChild (storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontInventoryStatisticsInterface := This.storeFrontStatisticsInterface.getInventory;
        storeFrontInventoryStatisticsDomNodeInterface := StoreFrontInventoryStatisticsView_Package.Create (storeFrontInventoryStatisticsInterface);
        node.appendChild (storeFrontInventoryStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontOrdersHistoryStatisticsInterface := This.storeFrontStatisticsInterface.getOrders;
        storeFrontOrdersHistoryStatisticsDomNodeInterface := StoreFrontOrdersHistoryStatisticsView_Package.Create (storeFrontOrdersHistoryStatisticsInterface);
        node.appendChild (storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode (document));
        if (This.userRole) = (UserRoleFactory_Package.getInstance.ADMINISTRATOR) then
            storeFrontUsersStatisticsInterface := This.storeFrontStatisticsInterface.getUsers;
            storeFrontUsersStatisticsDomNodeInterface := StoreFrontUsersStatisticsView_Package.Create (storeFrontUsersStatisticsInterface);
            node.appendChild (storeFrontUsersStatisticsDomNodeInterface.toXmlNode (document));
        end if;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document : Document_Access) is
      Java_Result : constant Node_Access := RealTimeStoreFrontStatisticsView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


