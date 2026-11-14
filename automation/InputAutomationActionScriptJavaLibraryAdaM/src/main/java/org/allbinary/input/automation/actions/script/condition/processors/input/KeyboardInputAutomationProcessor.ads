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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References is
   type KeyboardInputAutomationProcessor_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package.KeyboardInputAutomationProcessor'Class;
   type KeyboardInputAutomationProcessor_Access_Array is array (Natural range <>) of KeyboardInputAutomationProcessor_Access;
   type KeyboardInputAutomationProcessor_Access_Array_Access is access all KeyboardInputAutomationProcessor_Access_Array;
   type KeyboardInputAutomationProcessor_Access_Array_Access_Array is array (Natural range <>) of KeyboardInputAutomationProcessor_Access_Array_Access;
   type KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access is access all KeyboardInputAutomationProcessor_Access_Array_Access_Array;
   type KeyboardInputAutomationProcessor_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardInputAutomationProcessor_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardInputAutomationProcessor_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardInputAutomationProcessor_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardInputAutomationProcessor_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardInputAutomationProcessor_Access_Array_Access is (if Value /= null and then Value.all in KeyboardInputAutomationProcessor_Access_Array_Object'Class then KeyboardInputAutomationProcessor_Access_Array_Object'Class (Value.all).Value else null);
   type KeyboardInputAutomationProcessor_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardInputAutomationProcessor_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardInputAutomationProcessor_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyboardInputAutomationProcessor_Access_Array_Access_Array_Object'Class then KeyboardInputAutomationProcessor_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package is

   package Reference_Types is
   subtype KeyboardActionScriptInputInterface_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access;
   use type KeyboardActionScriptInputInterface_Access;
   subtype KeyboardActionScriptInputInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array;
   use type KeyboardActionScriptInputInterface_Access_Array;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access;
   use type KeyboardActionScriptInputInterface_Access_Array_Access;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array;
   use type KeyboardActionScriptInputInterface_Access_Array_Access_Array;
   subtype KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputInterface_Package_References.KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access;
   use type KeyboardActionScriptInputInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype KeyboardInputAutomationProcessor_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.KeyboardInputAutomationProcessor_Access;
   function "=" (Left, Right : KeyboardInputAutomationProcessor_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References."=";
   subtype KeyboardInputAutomationProcessor_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.KeyboardInputAutomationProcessor_Access_Array;
   function "=" (Left, Right : KeyboardInputAutomationProcessor_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References."=";
   subtype KeyboardInputAutomationProcessor_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.KeyboardInputAutomationProcessor_Access_Array_Access;
   function "=" (Left, Right : KeyboardInputAutomationProcessor_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References."=";
   function Java_Box (Value : KeyboardInputAutomationProcessor_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.Java_Box;
   function Java_Unbox_KeyboardInputAutomationProcessor_Access_Array (Value : access Java_Object'Class) return KeyboardInputAutomationProcessor_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.Java_Unbox_KeyboardInputAutomationProcessor_Access_Array;
   subtype KeyboardInputAutomationProcessor_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.KeyboardInputAutomationProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardInputAutomationProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References."=";
   subtype KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References."=";
   function Java_Box (Value : KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.Java_Box;
   function Java_Unbox_KeyboardInputAutomationProcessor_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyboardInputAutomationProcessor_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package_References.Java_Unbox_KeyboardInputAutomationProcessor_Access_Array_Access_Array;

   type KeyboardInputAutomationProcessor is new Java_Object with null record;

   procedure Initialize (This : in out KeyboardInputAutomationProcessor'Class);
   function Create return KeyboardInputAutomationProcessor_Access;
   procedure process (keyActionScriptInputInterface_Param : access KeyboardActionScriptInputInterface_Package.KeyboardActionScriptInputInterface'Class);

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;


