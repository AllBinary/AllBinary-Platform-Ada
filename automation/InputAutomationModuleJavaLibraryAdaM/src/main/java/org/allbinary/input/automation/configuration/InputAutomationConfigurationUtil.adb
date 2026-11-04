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


with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;

package body org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package is

   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References."=";
   subtype InputAutomationConfigurationModuleChangeEvent_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References.InputAutomationConfigurationModuleChangeEvent_Access;
   function "=" (Left, Right : InputAutomationConfigurationModuleChangeEvent_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References."=";
   subtype InputAutomationConfigurationModuleChangeEvent_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References.InputAutomationConfigurationModuleChangeEvent_Access_Array;
   function "=" (Left, Right : InputAutomationConfigurationModuleChangeEvent_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References."=";
   subtype InputAutomationConfigurationModuleChangeEvent_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References.InputAutomationConfigurationModuleChangeEvent_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfigurationModuleChangeEvent_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References."=";
   subtype InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array is org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References.InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References."=";
   subtype InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array_Access is org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References.InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References."=";
   procedure Initialize_Fields (This : in out InputAutomationConfigurationUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationConfigurationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationConfigurationUtil_Access is
      This : constant InputAutomationConfigurationUtil_Access := new InputAutomationConfigurationUtil;
   begin
      InputAutomationConfigurationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getChangeEvent (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) return InputAutomationConfigurationModuleChangeEvent_Access is
      inputAutomationModuleInterface : constant InputAutomationModuleFactoryInterface_Access := InputAutomationModuleFactoryInterface_Access (inputAutomationModuleInterface_Param);
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
      inputAutomationConfigurationModuleChangeEvent : InputAutomationConfigurationModuleChangeEvent_Access;
   begin
        inputAutomationModuleConfiguration := InputAutomationModuleConfiguration_Package.Create (inputAutomationModuleInterface);
        inputAutomationConfigurationModuleChangeEvent := InputAutomationConfigurationModuleChangeEvent_Package.Create (inputAutomationModuleConfiguration);
        return inputAutomationConfigurationModuleChangeEvent;
   end getChangeEvent;

   procedure getChangeEvent (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) is
      Java_Result : constant InputAutomationConfigurationModuleChangeEvent_Access := getChangeEvent (inputAutomationModuleInterface_Param => inputAutomationModuleInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getChangeEvent;

end org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;


