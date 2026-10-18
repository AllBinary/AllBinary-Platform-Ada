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
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package; use org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package; use org.allbinary.input.automation.configuration.InputAutomationConfigurationModuleChangeEvent_Package;

package org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;

   type InputAutomationConfigurationUtil is tagged;
   type InputAutomationConfigurationUtil_Access is access all InputAutomationConfigurationUtil'Class;
   type InputAutomationConfigurationUtil_Access_Array is array (Natural range <>) of InputAutomationConfigurationUtil_Access;
   type InputAutomationConfigurationUtil_Access_Array_Access is access all InputAutomationConfigurationUtil_Access_Array;
   type InputAutomationConfigurationUtil_Access_Array_Access_Array is array (Natural range <>) of InputAutomationConfigurationUtil_Access_Array_Access;
   type InputAutomationConfigurationUtil_Access_Array_Access_Array_Access is access all InputAutomationConfigurationUtil_Access_Array_Access_Array;

   type InputAutomationConfigurationUtil is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationConfigurationUtil'Class);
   function Create return InputAutomationConfigurationUtil_Access;
   function getChangeEvent (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class) return InputAutomationConfigurationModuleChangeEvent_Access;
   procedure getChangeEvent (inputAutomationModuleInterface_Param : access InputAutomationModuleFactoryInterface_Package.InputAutomationModuleFactoryInterface'Class);

end org.allbinary.input.automation.configuration.InputAutomationConfigurationUtil_Package;


