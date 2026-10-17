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


package body taghelpers.StoreTagWorkFlowHelperFactory_Package is

   procedure Initialize_Fields (This : in out StoreTagWorkFlowHelperFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out StoreTagWorkFlowHelperFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return StoreTagWorkFlowHelperFactory_Access is
      This : constant StoreTagWorkFlowHelperFactory_Access := new StoreTagWorkFlowHelperFactory;
   begin
      StoreTagWorkFlowHelperFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception, LicensingException
   function getInstance (This : in out StoreTagWorkFlowHelperFactory; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) return Java_Object_Access is
      propertiesHashMap : constant HashMap_Access := HashMap_Access (propertiesHashMap_Param);
      pageContext : constant PageContext_Access := PageContext_Access (pageContext_Param);
   begin
        return HelperFactory_Package.getInstance (FACTORYNAME, CLASSNAME, propertiesHashMap, pageContext);
   end getInstance;

   procedure getInstance (This : in out StoreTagWorkFlowHelperFactory; propertiesHashMap_Param : access HashMap_Package.HashMap'Class; pageContext_Param : access PageContext_Package.PageContext'Class) is
      Java_Result : constant Java_Object_Access := StoreTagWorkFlowHelperFactory'Class (This).getInstance (propertiesHashMap_Param, pageContext_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   CLASSNAME := To_Unbounded_String ("taghelpers.StoreTagWorkFlowHelper");
   FACTORYNAME := To_Unbounded_String ("taghelpers.StoreTagWorkFlowHelperFactory");

end taghelpers.StoreTagWorkFlowHelperFactory_Package;


