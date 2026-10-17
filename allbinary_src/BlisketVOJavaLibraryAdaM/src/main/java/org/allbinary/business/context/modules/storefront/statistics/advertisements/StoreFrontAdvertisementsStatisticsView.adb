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


package body org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package is

   procedure Initialize_Fields (This : in out StoreFrontAdvertisementsStatisticsView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontAdvertisementsStatisticsView'Class; storeFrontAdvertisementsStatisticsInterface_Param : access StoreFrontAdvertisementsStatisticsInterface_Package.StoreFrontAdvertisementsStatisticsInterface'Class) is
      storeFrontAdvertisementsStatisticsInterface : constant StoreFrontAdvertisementsStatisticsInterface_Access := StoreFrontAdvertisementsStatisticsInterface_Access (storeFrontAdvertisementsStatisticsInterface_Param);
   begin
      Initialize_Fields (This);
        This.storeFrontAdvertisementsStatisticsInterface := storeFrontAdvertisementsStatisticsInterface;
   end Initialize;

   function Create (storeFrontAdvertisementsStatisticsInterface_Param : access StoreFrontAdvertisementsStatisticsInterface_Package.StoreFrontAdvertisementsStatisticsInterface'Class) return StoreFrontAdvertisementsStatisticsView_Access is
      This : constant StoreFrontAdvertisementsStatisticsView_Access := new StoreFrontAdvertisementsStatisticsView;
   begin
      StoreFrontAdvertisementsStatisticsView_Package.Initialize (This.all, storeFrontAdvertisementsStatisticsInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreFrontAdvertisementsStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.storeFrontAdvertisementsStatisticsInterface.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, StoreFrontAdvertisementsStatisticsData_Package.getInstance.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreFrontAdvertisementsStatisticsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StoreFrontAdvertisementsStatisticsView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView_Package;


