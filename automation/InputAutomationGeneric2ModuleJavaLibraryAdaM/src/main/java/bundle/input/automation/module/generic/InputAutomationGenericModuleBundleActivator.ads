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
with org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package; use org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;
with org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package; use org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;

package bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package is

   package InputAutomationGenericModuleServiceFactory_Package renames org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;
   package InputAutomationModuleBundleActivator_Package renames org.allbinary.input.automation.module.osgi.InputAutomationModuleBundleActivator_Package;

   type InputAutomationGenericModuleBundleActivator is tagged;
   type InputAutomationGenericModuleBundleActivator_Access is access all InputAutomationGenericModuleBundleActivator'Class;
   type InputAutomationGenericModuleBundleActivator_Access_Array is array (Natural range <>) of InputAutomationGenericModuleBundleActivator_Access;
   type InputAutomationGenericModuleBundleActivator_Access_Array_Access is access all InputAutomationGenericModuleBundleActivator_Access_Array;

   type InputAutomationGenericModuleBundleActivator is new InputAutomationModuleBundleActivator with null record;

   procedure Initialize (This : in out InputAutomationGenericModuleBundleActivator'Class);
   function Create return InputAutomationGenericModuleBundleActivator_Access;
   procedure init (This : in out InputAutomationGenericModuleBundleActivator);

end bundle.input.automation.module.generic_Id.InputAutomationGenericModuleBundleActivator_Package;


