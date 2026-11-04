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

limited with org.allbinary.input.automation.module.InputAutomationModuleData_Package;
package org.allbinary.input.automation.module.InputAutomationModuleData_Package_References is
   type InputAutomationModuleData_Access is access all org.allbinary.input.automation.module.InputAutomationModuleData_Package.InputAutomationModuleData'Class;
   type InputAutomationModuleData_Access_Array is array (Natural range <>) of InputAutomationModuleData_Access;
   type InputAutomationModuleData_Access_Array_Access is access all InputAutomationModuleData_Access_Array;
   type InputAutomationModuleData_Access_Array_Access_Array is array (Natural range <>) of InputAutomationModuleData_Access_Array_Access;
   type InputAutomationModuleData_Access_Array_Access_Array_Access is access all InputAutomationModuleData_Access_Array_Access_Array;
end org.allbinary.input.automation.module.InputAutomationModuleData_Package_References;

with org.allbinary.input.automation.module.InputAutomationModuleData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.module.InputAutomationModuleData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationModuleData_Access is org.allbinary.input.automation.module.InputAutomationModuleData_Package_References.InputAutomationModuleData_Access;
   function "=" (Left, Right : InputAutomationModuleData_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleData_Package_References."=";
   subtype InputAutomationModuleData_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleData_Package_References.InputAutomationModuleData_Access_Array;
   function "=" (Left, Right : InputAutomationModuleData_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleData_Package_References."=";
   subtype InputAutomationModuleData_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleData_Package_References.InputAutomationModuleData_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleData_Package_References."=";
   subtype InputAutomationModuleData_Access_Array_Access_Array is org.allbinary.input.automation.module.InputAutomationModuleData_Package_References.InputAutomationModuleData_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationModuleData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleData_Package_References."=";
   subtype InputAutomationModuleData_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.InputAutomationModuleData_Package_References.InputAutomationModuleData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationModuleData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.InputAutomationModuleData_Package_References."=";

   type InputAutomationModuleData is new Java_Object with null record;
   NAME : Unbounded_String;
   MODULE_NAME_END : Unbounded_String;

   procedure Initialize (This : in out InputAutomationModuleData'Class);
   function Create return InputAutomationModuleData_Access;

end org.allbinary.input.automation.module.InputAutomationModuleData_Package;


