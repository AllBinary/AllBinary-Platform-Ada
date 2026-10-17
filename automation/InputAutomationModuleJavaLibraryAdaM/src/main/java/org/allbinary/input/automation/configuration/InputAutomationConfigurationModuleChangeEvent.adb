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


package body org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package is

   procedure Initialize_Fields (This : in out InputAutomationConfigurationModuleChangeEvent'Class) is
   begin
      null;
      This.inputAutomationModuleConfiguration := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationConfigurationModuleChangeEvent'Class; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access) is
   begin
      Initialize_Fields (This);
        This.setInputAutomationModuleConfiguration (inputAutomationModuleConfiguration);
   end Initialize;

   function Create (inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access) return InputAutomationConfigurationModuleChangeEvent_Access is
      This : constant InputAutomationConfigurationModuleChangeEvent_Access := new InputAutomationConfigurationModuleChangeEvent;
   begin
      InputAutomationConfigurationModuleChangeEvent_Package.Initialize (This.all, inputAutomationModuleConfiguration);
      return This;
   end Create;

   function getInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent) return InputAutomationModuleConfiguration_Access is
   begin
        return This.inputAutomationModuleConfiguration;
   end getInputAutomationModuleConfiguration;

   procedure setInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent; inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access) is
   begin
        This.inputAutomationModuleConfiguration := inputAutomationModuleConfiguration;
   end setInputAutomationModuleConfiguration;

end org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;


