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


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package; use org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsData_Package;

package body org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   procedure Initialize_Fields (This : in out StoreFrontUsersStatisticsView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreFrontUsersStatisticsView'Class; storeFrontUsersStatisticsInterface_Param : access StoreFrontUsersStatisticsInterface_Package.StoreFrontUsersStatisticsInterface'Class) is
      storeFrontUsersStatisticsInterface : constant StoreFrontUsersStatisticsInterface_Access := StoreFrontUsersStatisticsInterface_Access (storeFrontUsersStatisticsInterface_Param);
   begin
      Initialize_Fields (This);
        This.storeFrontUsersStatisticsInterface := storeFrontUsersStatisticsInterface;
   end Initialize;

   function Create (storeFrontUsersStatisticsInterface_Param : access StoreFrontUsersStatisticsInterface_Package.StoreFrontUsersStatisticsInterface'Class) return StoreFrontUsersStatisticsView_Access is
      This : constant StoreFrontUsersStatisticsView_Access := new StoreFrontUsersStatisticsView;
   begin
      StoreFrontUsersStatisticsView_Package.Initialize (This.all, storeFrontUsersStatisticsInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out StoreFrontUsersStatisticsView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        hashMap := This.storeFrontUsersStatisticsInterface.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, StoreFrontUsersStatisticsData_Package.getInstance.NAME, hashMap);
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out StoreFrontUsersStatisticsView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := StoreFrontUsersStatisticsView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView_Package;


