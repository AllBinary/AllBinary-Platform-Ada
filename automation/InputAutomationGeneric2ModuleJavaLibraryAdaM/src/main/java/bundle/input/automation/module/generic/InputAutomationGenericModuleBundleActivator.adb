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


package body bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package is

   procedure Initialize_Fields (This : in out InputAutomationGenericModuleBundleActivator'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationGenericModuleBundleActivator'Class) is
   begin
      InputAutomationModuleBundleActivator_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationGenericModuleBundleActivator_Access is
      This : constant InputAutomationGenericModuleBundleActivator_Access := new InputAutomationGenericModuleBundleActivator;
   begin
      InputAutomationGenericModuleBundleActivator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out InputAutomationGenericModuleBundleActivator) is
      inputAutomationGenericModuleServiceFactory : InputAutomationGenericModuleServiceFactory_Access;
   begin
        inputAutomationGenericModuleServiceFactory := InputAutomationGenericModuleServiceFactory_Package.getInstance;
        InputAutomationGenericModuleBundleActivator'Class (This).setInputAutomationModuleInterface (inputAutomationGenericModuleServiceFactory.getInputAutomationModuleInterfaceArray);
        InputAutomationGenericModuleBundleActivator'Class (This).setServiceFactory (inputAutomationGenericModuleServiceFactory);
   end init;

end bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package;


