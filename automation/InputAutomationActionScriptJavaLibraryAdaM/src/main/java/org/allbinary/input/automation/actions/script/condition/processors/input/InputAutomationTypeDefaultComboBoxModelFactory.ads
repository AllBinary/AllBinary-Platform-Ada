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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References is
   type InputAutomationTypeDefaultComboBoxModelFactory_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package.InputAutomationTypeDefaultComboBoxModelFactory'Class;
   type InputAutomationTypeDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of InputAutomationTypeDefaultComboBoxModelFactory_Access;
   type InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access is access all InputAutomationTypeDefaultComboBoxModelFactory_Access_Array;
   type InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array is array (Natural range <>) of InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access;
   type InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is access all InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package is

   package Reference_Types is
   subtype DefaultComboBoxModel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access;
   use type DefaultComboBoxModel_Access;
   subtype DefaultComboBoxModel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array;
   use type DefaultComboBoxModel_Access_Array;
   subtype DefaultComboBoxModel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access;
   use type DefaultComboBoxModel_Access_Array_Access;
   subtype DefaultComboBoxModel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access_Array;
   use type DefaultComboBoxModel_Access_Array_Access_Array;
   subtype DefaultComboBoxModel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References.DefaultComboBoxModel_Access_Array_Access_Array_Access;
   use type DefaultComboBoxModel_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype InputAutomationTypeDefaultComboBoxModelFactory_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References.InputAutomationTypeDefaultComboBoxModelFactory_Access;
   function "=" (Left, Right : InputAutomationTypeDefaultComboBoxModelFactory_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References."=";
   subtype InputAutomationTypeDefaultComboBoxModelFactory_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References.InputAutomationTypeDefaultComboBoxModelFactory_Access_Array;
   function "=" (Left, Right : InputAutomationTypeDefaultComboBoxModelFactory_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References."=";
   subtype InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References.InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access;
   function "=" (Left, Right : InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References."=";
   subtype InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References.InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array;
   function "=" (Left, Right : InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References."=";
   subtype InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References.InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputAutomationTypeDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package_References."=";

   type InputAutomationTypeDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out InputAutomationTypeDefaultComboBoxModelFactory'Class);
   function Create return InputAutomationTypeDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.InputAutomationTypeDefaultComboBoxModelFactory_Package;


