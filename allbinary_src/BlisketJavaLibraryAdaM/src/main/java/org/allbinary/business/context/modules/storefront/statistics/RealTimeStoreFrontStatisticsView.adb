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
with org.allbinary.business.user.role.UserRole_Package; use org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.business.user.role.UserRole_Package_References;
with org.allbinary.business.user.role.UserRoleFactory_Package; use org.allbinary.business.user.role.UserRoleFactory_Package;
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsData_Package;
with org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package;

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
   subtype UserRole_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access;
   function "=" (Left, Right : UserRole_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access_Array is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype UserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.UserRole_Package_References.UserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.UserRole_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype StoreFrontStatisticsInterface_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access;
   function "=" (Left, Right : StoreFrontStatisticsInterface_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References."=";
   subtype StoreFrontStatisticsInterface_Access_Array is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array;
   function "=" (Left, Right : StoreFrontStatisticsInterface_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References."=";
   subtype StoreFrontStatisticsInterface_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access;
   function "=" (Left, Right : StoreFrontStatisticsInterface_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References."=";
   subtype StoreFrontStatisticsInterface_Access_Array_Access_Array is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : StoreFrontStatisticsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References."=";
   subtype StoreFrontStatisticsInterface_Access_Array_Access_Array_Access is org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References.StoreFrontStatisticsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StoreFrontStatisticsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.context.modules.storefront.statistics.StoreFrontStatisticsInterface_Package_References."=";
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
        storeFrontAdvertisementsStatisticsInterface := StoreFrontAdvertisementsStatisticsInterface_Access (This.storeFrontStatisticsInterface.getAdvertisements);
        storeFrontAdvertisementsStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontAdvertisementsStatisticsView_Package.Create (storeFrontAdvertisementsStatisticsInterface));
        node.appendChild (storeFrontAdvertisementsStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontInventoryStatisticsInterface := StoreFrontInventoryStatisticsInterface_Access (This.storeFrontStatisticsInterface.getInventory);
        storeFrontInventoryStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontInventoryStatisticsView_Package.Create (storeFrontInventoryStatisticsInterface));
        node.appendChild (storeFrontInventoryStatisticsDomNodeInterface.toXmlNode (document));
        storeFrontOrdersHistoryStatisticsInterface := StoreFrontOrdersHistoryStatisticsInterface_Access (This.storeFrontStatisticsInterface.getOrders);
        storeFrontOrdersHistoryStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontOrdersHistoryStatisticsView_Package.Create (storeFrontOrdersHistoryStatisticsInterface));
        node.appendChild (storeFrontOrdersHistoryStatisticsDomNodeInterface.toXmlNode (document));
        if (This.userRole) = (UserRoleFactory_Package.getInstance.ADMINISTRATOR) then
            storeFrontUsersStatisticsInterface := StoreFrontUsersStatisticsInterface_Access (This.storeFrontStatisticsInterface.getUsers);
            storeFrontUsersStatisticsDomNodeInterface := DomNodeInterface_Access (StoreFrontUsersStatisticsView_Package.Create (storeFrontUsersStatisticsInterface));
            node.appendChild (storeFrontUsersStatisticsDomNodeInterface.toXmlNode (document));
        end if;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out RealTimeStoreFrontStatisticsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := RealTimeStoreFrontStatisticsView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.RealTimeStoreFrontStatisticsView_Package;


