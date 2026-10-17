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


package body org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package is

   procedure Initialize_Fields (This : in out InputAutomationModuleServiceConsumer'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationModuleServiceConsumer'Class; bundleContext_Param : access BundleContext'Class) is
      bundleContext : BundleContext_Access := BundleContext_Access (bundleContext_Param);
   begin
        InputAutomationServiceConsumer_Package.Initialize (This, InputAutomationModuleServiceInterface_Package.InputAutomationModuleServiceInterface'Tag.getName, bundleContext, InputAutomationModuleOSGIServiceVisitor_Package.Create);
   end Initialize;

   function Create (bundleContext_Param : access BundleContext'Class) return InputAutomationModuleServiceConsumer_Access is
      This : constant InputAutomationModuleServiceConsumer_Access := new InputAutomationModuleServiceConsumer;
   begin
      InputAutomationModuleServiceConsumer_Package.Initialize (This.all, bundleContext_Param);
      return This;
   end Create;

end org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceConsumer_Package;


