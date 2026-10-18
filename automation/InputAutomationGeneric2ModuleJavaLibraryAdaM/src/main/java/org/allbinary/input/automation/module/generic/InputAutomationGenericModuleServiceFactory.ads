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
with org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package; use org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package is

   package InputAutomationModuleServiceFactory_Package renames Standard.org.allbinary.input.automation.module.osgi.InputAutomationModuleServiceFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type InputAutomationGenericModuleServiceFactory is tagged;
   type InputAutomationGenericModuleServiceFactory_Access is access all InputAutomationGenericModuleServiceFactory'Class;
   type InputAutomationGenericModuleServiceFactory_Access_Array is array (Natural range <>) of InputAutomationGenericModuleServiceFactory_Access;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access is access all InputAutomationGenericModuleServiceFactory_Access_Array;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationGenericModuleServiceFactory_Access_Array_Access;
   type InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array_Access is access all InputAutomationGenericModuleServiceFactory_Access_Array_Access_Array;

   type InputAutomationGenericModuleServiceFactory is new InputAutomationModuleServiceFactory with record
      logUtil : LogUtil_Access;
   end record;
   inputAutomationGenericModuleServiceFactory_Var : InputAutomationGenericModuleServiceFactory_Access;

   procedure Initialize (This : in out InputAutomationGenericModuleServiceFactory'Class);
   function Create return InputAutomationGenericModuleServiceFactory_Access;
   function getInstance return InputAutomationGenericModuleServiceFactory_Access;

end org.allbinary.input.automation.module.generic_Id.InputAutomationGenericModuleServiceFactory_Package;


