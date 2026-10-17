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


package body org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package is

   procedure Initialize_Fields (This : in out StoreFrontUsersStatisticsView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontUsersStatisticsView'Class; storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface_Access) is
   begin
      Initialize_Fields (This);
        This.storeFrontUsersStatisticsInterface := storeFrontUsersStatisticsInterface;
   end Initialize;

   function Create (storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface_Access) return StoreFrontUsersStatisticsView_Access is
      This : constant StoreFrontUsersStatisticsView_Access := new StoreFrontUsersStatisticsView;
   begin
      StoreFrontUsersStatisticsView_Package.Initialize (This.all, storeFrontUsersStatisticsInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreFrontUsersStatisticsView; document : Document_Access) return Node_Access is
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.storeFrontUsersStatisticsInterface.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, StoreFrontUsersStatisticsData_Package.getInstance.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreFrontUsersStatisticsView; document : Document_Access) is
      Java_Result : constant Node_Access := StoreFrontUsersStatisticsView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;


