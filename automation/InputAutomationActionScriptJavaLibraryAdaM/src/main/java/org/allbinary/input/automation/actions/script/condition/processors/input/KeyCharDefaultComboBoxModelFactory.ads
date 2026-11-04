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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References is
   type KeyCharDefaultComboBoxModelFactory_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package.KeyCharDefaultComboBoxModelFactory'Class;
   type KeyCharDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of KeyCharDefaultComboBoxModelFactory_Access;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access is access all KeyCharDefaultComboBoxModelFactory_Access_Array;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array is array (Natural range <>) of KeyCharDefaultComboBoxModelFactory_Access_Array_Access;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is access all KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References;
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

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package is

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


   subtype KeyCharDefaultComboBoxModelFactory_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array_Access;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";

   type KeyCharDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out KeyCharDefaultComboBoxModelFactory'Class);
   function Create return KeyCharDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;


