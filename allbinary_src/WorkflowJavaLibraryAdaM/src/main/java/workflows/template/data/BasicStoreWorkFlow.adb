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


package body workflows.template.data.BasicStoreWorkFlow_Package is

   procedure Initialize_Fields (This : in out BasicStoreWorkFlow'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicStoreWorkFlow'Class; propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) is
   begin
        BasicWorkFlow_Package.Initialize (This, propertiesHashMap, pageContext);
   end Initialize;

   function Create (propertiesHashMap : HashMap_Access; pageContext : PageContext_Access) return BasicStoreWorkFlow_Access is
      This : constant BasicStoreWorkFlow_Access := new BasicStoreWorkFlow;
   begin
      Initialize (This.all, propertiesHashMap, pageContext);
      return This;
   end Create;

   --  throws Exception
   function getStoreName (This : in out BasicStoreWorkFlow) return Unbounded_String is
   begin
        return Unbounded_String (This.getPropertiesHashMap.get (StoreFrontData_Package.getInstance.NAME));
   end getStoreName;

   procedure getStoreName (This : in out BasicStoreWorkFlow) is
      Java_Result : constant Unbounded_String := BasicStoreWorkFlow'Class (This).getStoreName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getStoreName;

end workflows.template.data.BasicStoreWorkFlow_Package;


