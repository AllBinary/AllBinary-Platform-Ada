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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package; use org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;

package org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package is

   package InputAutomationModuleConfiguration_Package renames Standard.org.allbinary.input.automation.module.configuration.InputAutomationModuleConfiguration_Package;

   type InputAutomationConfigurationModuleChangeEvent is tagged;
   type InputAutomationConfigurationModuleChangeEvent_Access is access all InputAutomationConfigurationModuleChangeEvent'Class;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array is array (Natural range <>) of InputAutomationConfigurationModuleChangeEvent_Access;
   type InputAutomationConfigurationModuleChangeEvent_Access_Array_Access is access all InputAutomationConfigurationModuleChangeEvent_Access_Array;

   type InputAutomationConfigurationModuleChangeEvent is new Java_Object with record
      inputAutomationModuleConfiguration : InputAutomationModuleConfiguration_Access;
   end record;

   procedure Initialize (This : in out InputAutomationConfigurationModuleChangeEvent'Class; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration'Class);
   function Create (inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration'Class) return InputAutomationConfigurationModuleChangeEvent_Access;
   function getInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent) return InputAutomationModuleConfiguration_Access;
   procedure setInputAutomationModuleConfiguration (This : in out InputAutomationConfigurationModuleChangeEvent; inputAutomationModuleConfiguration_Param : access InputAutomationModuleConfiguration'Class);

end org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;


