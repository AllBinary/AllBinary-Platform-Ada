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

limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References is
   type KeyNameDefaultComboBoxModelFactory_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package.KeyNameDefaultComboBoxModelFactory'Class;
   type KeyNameDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of KeyNameDefaultComboBoxModelFactory_Access;
   type KeyNameDefaultComboBoxModelFactory_Access_Array_Access is access all KeyNameDefaultComboBoxModelFactory_Access_Array;
   type KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array is array (Natural range <>) of KeyNameDefaultComboBoxModelFactory_Access_Array_Access;
   type KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is access all KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array;
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.event.KeyEvent_Package; use java.awt.event.KeyEvent_Package;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.DefaultComboBoxModel_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package is

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


   subtype KeyNameDefaultComboBoxModelFactory_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References.KeyNameDefaultComboBoxModelFactory_Access;
   function "=" (Left, Right : KeyNameDefaultComboBoxModelFactory_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyNameDefaultComboBoxModelFactory_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References.KeyNameDefaultComboBoxModelFactory_Access_Array;
   function "=" (Left, Right : KeyNameDefaultComboBoxModelFactory_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyNameDefaultComboBoxModelFactory_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References.KeyNameDefaultComboBoxModelFactory_Access_Array_Access;
   function "=" (Left, Right : KeyNameDefaultComboBoxModelFactory_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References.KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References.KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyNameDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package_References."=";

   type KeyNameDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out KeyNameDefaultComboBoxModelFactory'Class);
   function Create return KeyNameDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyNameDefaultComboBoxModelFactory_Package;


