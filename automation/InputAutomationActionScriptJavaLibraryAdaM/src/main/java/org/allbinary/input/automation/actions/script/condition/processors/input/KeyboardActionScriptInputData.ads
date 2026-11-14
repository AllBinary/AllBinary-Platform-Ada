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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References is
   type KeyboardActionScriptInputData_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package.KeyboardActionScriptInputData'Class;
   type KeyboardActionScriptInputData_Access_Array is array (Natural range <>) of KeyboardActionScriptInputData_Access;
   type KeyboardActionScriptInputData_Access_Array_Access is access all KeyboardActionScriptInputData_Access_Array;
   type KeyboardActionScriptInputData_Access_Array_Access_Array is array (Natural range <>) of KeyboardActionScriptInputData_Access_Array_Access;
   type KeyboardActionScriptInputData_Access_Array_Access_Array_Access is access all KeyboardActionScriptInputData_Access_Array_Access_Array;
   type KeyboardActionScriptInputData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardActionScriptInputData_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardActionScriptInputData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardActionScriptInputData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardActionScriptInputData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardActionScriptInputData_Access_Array_Access is (if Value /= null and then Value.all in KeyboardActionScriptInputData_Access_Array_Object'Class then KeyboardActionScriptInputData_Access_Array_Object'Class (Value.all).Value else null);
   type KeyboardActionScriptInputData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : KeyboardActionScriptInputData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : KeyboardActionScriptInputData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new KeyboardActionScriptInputData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_KeyboardActionScriptInputData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return KeyboardActionScriptInputData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in KeyboardActionScriptInputData_Access_Array_Access_Array_Object'Class then KeyboardActionScriptInputData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype KeyboardActionScriptInputData_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.KeyboardActionScriptInputData_Access;
   function "=" (Left, Right : KeyboardActionScriptInputData_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References."=";
   subtype KeyboardActionScriptInputData_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.KeyboardActionScriptInputData_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputData_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References."=";
   subtype KeyboardActionScriptInputData_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.KeyboardActionScriptInputData_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References."=";
   function Java_Box (Value : KeyboardActionScriptInputData_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.Java_Box;
   function Java_Unbox_KeyboardActionScriptInputData_Access_Array (Value : access Java_Object'Class) return KeyboardActionScriptInputData_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.Java_Unbox_KeyboardActionScriptInputData_Access_Array;
   subtype KeyboardActionScriptInputData_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.KeyboardActionScriptInputData_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References."=";
   subtype KeyboardActionScriptInputData_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.KeyboardActionScriptInputData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References."=";
   function Java_Box (Value : KeyboardActionScriptInputData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.Java_Box;
   function Java_Unbox_KeyboardActionScriptInputData_Access_Array_Access_Array (Value : access Java_Object'Class) return KeyboardActionScriptInputData_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package_References.Java_Unbox_KeyboardActionScriptInputData_Access_Array_Access_Array;

   type KeyboardActionScriptInputData is new Java_Object with null record;
   NAME : Unbounded_String;
   KEY : Unbounded_String;
   DELAY_BETWEEN_KEYS : Unbounded_String;
   PRESS : Unbounded_String;
   RELEASE : Unbounded_String;

   procedure Initialize (This : in out KeyboardActionScriptInputData'Class);
   function Create return KeyboardActionScriptInputData_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;


