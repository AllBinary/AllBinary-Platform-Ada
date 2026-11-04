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


with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;

package body org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package is

   subtype InputAutomationModuleConfiguration_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleConfiguration_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References."=";
   procedure Initialize_Fields (This : in out InputAutomationConfigurationModuleChangeEvent'Class) is
   begin
      null;
      This.inputAutomationModuleConfiguration := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationConfigurationModuleChangeEvent'Class; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : constant InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
      Initialize_Fields (This);
        InputAutomationConfigurationModuleChangeEvent'Class (This).setInputAutomationModuleConfiguration (inputAutomationModuleConfiguration);
   end Initialize;

   function Create (inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) return InputAutomationConfigurationModuleChangeEvent_Access is
      This : constant InputAutomationConfigurationModuleChangeEvent_Access := new InputAutomationConfigurationModuleChangeEvent;
   begin
      InputAutomationConfigurationModuleChangeEvent_Package.Initialize (This.all, inputAutomationModuleConfiguration_Param);
      return This;
   end Create;

   function getInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent) return InputAutomationModuleConfiguration_Access is
   begin
        return This.inputAutomationModuleConfiguration;
   end getInputAutomationModuleConfiguration;

   procedure setInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) is
      inputAutomationModuleConfiguration : constant InputAutomationModuleConfiguration_Access := InputAutomationModuleConfiguration_Access (inputAutomationModuleConfiguration_Param);
   begin
        This.inputAutomationModuleConfiguration := inputAutomationModuleConfiguration;
   end setInputAutomationModuleConfiguration;

end org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;


