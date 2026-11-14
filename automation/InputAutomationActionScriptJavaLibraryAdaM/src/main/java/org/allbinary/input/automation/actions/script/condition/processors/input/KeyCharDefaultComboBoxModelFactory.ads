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

with AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References is
   type KeyCharDefaultComboBoxModelFactory_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package.KeyCharDefaultComboBoxModelFactory'Class;
   type KeyCharDefaultComboBoxModelFactory_Access_Array is array (Natural range <>) of KeyCharDefaultComboBoxModelFactory_Access;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access is access all KeyCharDefaultComboBoxModelFactory_Access_Array;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array is array (Natural range <>) of KeyCharDefaultComboBoxModelFactory_Access_Array_Access;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is access all KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array;
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyCharDefaultComboBoxModelFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyCharDefaultComboBoxModelFactory_Access_Array_Access is (if Value /= null and then Value.all in KeyCharDefaultComboBoxModelFactory_Access_Array_Object'Class then KeyCharDefaultComboBoxModelFactory_Access_Array_Object'Class (Value.all).Value else null);
   type KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Object'Class then KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
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
   function Java_Box (Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.Java_Box;
   function Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array (Value : access Java_Object'Class) return KeyCharDefaultComboBoxModelFactory_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array;
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   subtype KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References."=";
   function Java_Box (Value : KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.Java_Box;
   function Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package_References.Java_Unbox_KeyCharDefaultComboBoxModelFactory_Access_Array_Access_Array;

   type KeyCharDefaultComboBoxModelFactory is new Java_Object with null record;

   procedure Initialize (This : in out KeyCharDefaultComboBoxModelFactory'Class);
   function Create return KeyCharDefaultComboBoxModelFactory_Access;
   function getInstance return DefaultComboBoxModel_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyCharDefaultComboBoxModelFactory_Package;


