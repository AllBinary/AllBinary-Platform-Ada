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
limited with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;
package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References is
   type MouseActionScriptInputData_Access is access all org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package.MouseActionScriptInputData'Class;
   type MouseActionScriptInputData_Access_Array is array (Natural range <>) of MouseActionScriptInputData_Access;
   type MouseActionScriptInputData_Access_Array_Access is access all MouseActionScriptInputData_Access_Array;
   type MouseActionScriptInputData_Access_Array_Access_Array is array (Natural range <>) of MouseActionScriptInputData_Access_Array_Access;
   type MouseActionScriptInputData_Access_Array_Access_Array_Access is access all MouseActionScriptInputData_Access_Array_Access_Array;
   type MouseActionScriptInputData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseActionScriptInputData_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseActionScriptInputData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseActionScriptInputData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseActionScriptInputData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseActionScriptInputData_Access_Array_Access is (if Value /= null and then Value.all in MouseActionScriptInputData_Access_Array_Object'Class then MouseActionScriptInputData_Access_Array_Object'Class (Value.all).Value else null);
   type MouseActionScriptInputData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : MouseActionScriptInputData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : MouseActionScriptInputData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new MouseActionScriptInputData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_MouseActionScriptInputData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return MouseActionScriptInputData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in MouseActionScriptInputData_Access_Array_Access_Array_Object'Class then MouseActionScriptInputData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References;

with org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MouseActionScriptInputData_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.MouseActionScriptInputData_Access;
   function "=" (Left, Right : MouseActionScriptInputData_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References."=";
   subtype MouseActionScriptInputData_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.MouseActionScriptInputData_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputData_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References."=";
   subtype MouseActionScriptInputData_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.MouseActionScriptInputData_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References."=";
   function Java_Box (Value : MouseActionScriptInputData_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.Java_Box;
   function Java_Unbox_MouseActionScriptInputData_Access_Array (Value : access Java_Object'Class) return MouseActionScriptInputData_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.Java_Unbox_MouseActionScriptInputData_Access_Array;
   subtype MouseActionScriptInputData_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.MouseActionScriptInputData_Access_Array_Access_Array;
   function "=" (Left, Right : MouseActionScriptInputData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References."=";
   subtype MouseActionScriptInputData_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.MouseActionScriptInputData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MouseActionScriptInputData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References."=";
   function Java_Box (Value : MouseActionScriptInputData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.Java_Box;
   function Java_Unbox_MouseActionScriptInputData_Access_Array_Access_Array (Value : access Java_Object'Class) return MouseActionScriptInputData_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package_References.Java_Unbox_MouseActionScriptInputData_Access_Array_Access_Array;

   type MouseActionScriptInputData is new Java_Object with null record;
   NAME : Unbounded_String;
   BUTTONS : Unbounded_String;
   MOVE : Unbounded_String;
   MOVE_X : Unbounded_String;
   MOVE_Y : Unbounded_String;

   procedure Initialize (This : in out MouseActionScriptInputData'Class);
   function Create return MouseActionScriptInputData_Access;

end org.allbinary.input.automation.actions.script.condition.processors.input.MouseActionScriptInputData_Package;


