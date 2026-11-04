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

limited with bundle.input.automation.module.InputAutomationModuleService_Package;
package bundle.input.automation.module.InputAutomationModuleService_Package_References is
   type InputAutomationModuleService_Access is access all bundle.input.automation.module.InputAutomationModuleService_Package.InputAutomationModuleService'Class;
   type InputAutomationModuleService_Access_Array is array (Natural range <>) of InputAutomationModuleService_Access;
   type InputAutomationModuleService_Access_Array_Access is access all InputAutomationModuleService_Access_Array;
   type InputAutomationModuleService_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleService_Access_Array_Access;
   type InputAutomationModuleService_Access_Array_Access_Array_Access is access all InputAutomationModuleService_Access_Array_Access_Array;
end bundle.input.automation.module.InputAutomationModuleService_Package_References;

with bundle.input.automation.module.InputAutomationModuleService_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
with org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References;
with bundle.input.automation.module.InputAutomationModuleServiceInterface_Package; use bundle.input.automation.module.InputAutomationModuleServiceInterface_Package;

package bundle.input.automation.module.InputAutomationModuleService_Package is

   package InputAutomationModuleFactoryInterface_Package renames Standard.org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package;
   package Reference_Types is
   subtype InputAutomationModuleFactoryInterface_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access;
   use type InputAutomationModuleFactoryInterface_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array;
   subtype InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleFactoryInterface_Package_References.InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   use type InputAutomationModuleFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleService_Access is bundle.input.automation.module.InputAutomationModuleService_Package_References.InputAutomationModuleService_Access;
   function "=" (Left, Right : InputAutomationModuleService_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleService_Package_References."=";
   subtype InputAutomationModuleService_Access_Array is bundle.input.automation.module.InputAutomationModuleService_Package_References.InputAutomationModuleService_Access_Array;
   function "=" (Left, Right : InputAutomationModuleService_Access_Array) return Boolean renames bundle.input.automation.module.InputAutomationModuleService_Package_References."=";
   subtype InputAutomationModuleService_Access_Array_Access is bundle.input.automation.module.InputAutomationModuleService_Package_References.InputAutomationModuleService_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleService_Access_Array_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleService_Package_References."=";
   subtype InputAutomationModuleService_Access_Array_Access_Array is bundle.input.automation.module.InputAutomationModuleService_Package_References.InputAutomationModuleService_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleService_Access_Array_Access_Array) return Boolean renames bundle.input.automation.module.InputAutomationModuleService_Package_References."=";
   subtype InputAutomationModuleService_Access_Array_Access_Array_Access is bundle.input.automation.module.InputAutomationModuleService_Package_References.InputAutomationModuleService_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleService_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.module.InputAutomationModuleService_Package_References."=";

   type InputAutomationModuleService is new Java_Object and InputAutomationModuleServiceInterface with record
      inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access;
   end record;

   procedure Initialize (This : in out InputAutomationModuleService'Class; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);
   function Create (inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access) return InputAutomationModuleService_Access;
   function getInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService) return InputAutomationModuleFactoryInterface_Access_Array_Access;
   procedure setInputAutomationModuleInterfaceArray (This : in out InputAutomationModuleService; inputAutomationModuleInterfaceArray : InputAutomationModuleFactoryInterface_Access_Array_Access);

end bundle.input.automation.module.InputAutomationModuleService_Package;


