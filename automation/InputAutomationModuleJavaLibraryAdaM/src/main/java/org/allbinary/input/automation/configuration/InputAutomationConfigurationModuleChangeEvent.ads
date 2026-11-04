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

limited with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;
package org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References is
   type InputAutomationConfigurationModuleChangeEvent_Access is access all org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package.InputAutomationConfigurationModuleChangeEvent'Class;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array is array (Natural range <>) of InputAutomationConfigurationModuleChangeEvent_Access;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array_Access is access all InputAutomationConfigurationModuleChangeEvent_Access_Array;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array is array (Natural range <>) of InputAutomationConfigurationModuleChangeEvent_Access_Array_Access;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array_Access is access all InputAutomationConfigurationModuleChangeEvent_Access_Array_Access_Array;
end org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References;

with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References;

package org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package is

   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;
   package Reference_Types is
   subtype InputAutomationModuleConfiguration_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access;
   use type InputAutomationModuleConfiguration_Access;
   subtype InputAutomationModuleConfiguration_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array;
   use type InputAutomationModuleConfiguration_Access_Array;
   subtype InputAutomationModuleConfiguration_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access;
   use type InputAutomationModuleConfiguration_Access_Array_Access;
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array;
   use type InputAutomationModuleConfiguration_Access_Array_Access_Array;
   subtype InputAutomationModuleConfiguration_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package_References.InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   use type InputAutomationModuleConfiguration_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


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

   type InputAutomationConfigurationModuleChangeEvent is new Java_Object with record
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
   end record;

   procedure Initialize (This : in out InputAutomationConfigurationModuleChangeEvent'Class; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class);
   function Create (inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class) return InputAutomationConfigurationModuleChangeEvent_Access;
   function getInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent) return InputAutomationModuleConfiguration_Access;
   procedure setInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration_Package.InputAutomationModuleConfiguration'Class);

end org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;


