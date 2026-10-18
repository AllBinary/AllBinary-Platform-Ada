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


with org.allbinary.business.context.modules.storefront.StoreFrontData_Package; use org.allbinary.business.context.modules.storefront.StoreFrontData_Package;

package body workflows.template.data.BasicStoreWorkFlow_Package is

   package StoreFrontData_Package renames Standard.org.allbinary.business.context.modules.storefront.StoreFrontData_Package;
   procedure Initialize_Fields (This : in out BasicStoreWorkFlow'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicStoreWorkFlow'Class; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        BasicWorkFlow_Package.Initialize (This, propertiesHashMap, pageContext);
   end Initialize;

   function Create (propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return BasicStoreWorkFlow_Access is
      This : constant BasicStoreWorkFlow_Access := new BasicStoreWorkFlow;
   begin
      BasicStoreWorkFlow_Package.Initialize (This.all, propertiesHashMap_Param, pageContext_Param);
      return This;
   end Create;

   --  throws Exception
   function getStoreName (This : in out BasicStoreWorkFlow) return Unbounded_String is
   begin
        return Java_Unbox (BasicStoreWorkFlow'Class (This).getPropertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
   end getStoreName;

end workflows.template.data.BasicStoreWorkFlow_Package;


