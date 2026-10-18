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
with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package; use bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;

package bundle.input.automation.module.InputAutomationModuleService_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;

   type InputAutomationModuleService is tagged;
   type InputAutomationModuleService_Access is access all InputAutomationModuleService'Class;
   type InputAutomationModuleService_Access_Array is array (Natural range <>) of InputAutomationModuleService_Access;
   type InputAutomationModuleService_Access_Array_Access is access all InputAutomationModuleService_Access_Array;
   type InputAutomationModuleService_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleService_Access_Array_Access;
   type InputAutomationModuleService_Access_Array_Access_Array_Access is access all InputAutomationModuleService_Access_Array_Access_Array;

   type InputAutomationModuleService is new Java_Object and InputAutomationModuleServiceInterface with record
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleService'Class; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);
   function Create (inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) return InputAutomationModuleService_Access;
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);

end bundle.input.automation.module.InputAutomationModuleService_Package;


