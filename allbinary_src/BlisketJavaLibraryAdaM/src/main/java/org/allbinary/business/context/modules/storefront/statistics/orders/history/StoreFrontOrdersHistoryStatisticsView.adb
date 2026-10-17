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


package body org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package is

   procedure Initialize_Fields (This : in out StoreFrontOrdersHistoryStatisticsView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontOrdersHistoryStatisticsView'Class; storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface_Access) is
   begin
      Initialize_Fields (This);
        This.storeFrontOrdersHistoryStatisticsInterface := storeFrontOrdersHistoryStatisticsInterface;
   end Initialize;

   function Create (storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface_Access) return StoreFrontOrdersHistoryStatisticsView_Access is
      This : constant StoreFrontOrdersHistoryStatisticsView_Access := new StoreFrontOrdersHistoryStatisticsView;
   begin
      StoreFrontOrdersHistoryStatisticsView_Package.Initialize (This.all, storeFrontOrdersHistoryStatisticsInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreFrontOrdersHistoryStatisticsView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.storeFrontOrdersHistoryStatisticsInterface.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, StoreFrontOrdersHistoryStatisticsData_Package.getInstance.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreFrontOrdersHistoryStatisticsView; document : Document_Access) is
      Java_Result : constant Node_Access := StoreFrontOrdersHistoryStatisticsView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView_Package;


