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
limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;
package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References is
   type ColorAtActionScriptConditionData_Access is access all org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package.ColorAtActionScriptConditionData'Class;
   type ColorAtActionScriptConditionData_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionData_Access;
   type ColorAtActionScriptConditionData_Access_Array_Access is access all ColorAtActionScriptConditionData_Access_Array;
   type ColorAtActionScriptConditionData_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionData_Access_Array_Access;
   type ColorAtActionScriptConditionData_Access_Array_Access_Array_Access is access all ColorAtActionScriptConditionData_Access_Array_Access_Array;
   type ColorAtActionScriptConditionData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorAtActionScriptConditionData_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorAtActionScriptConditionData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorAtActionScriptConditionData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorAtActionScriptConditionData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorAtActionScriptConditionData_Access_Array_Access is (if Value /= null and then Value.all in ColorAtActionScriptConditionData_Access_Array_Object'Class then ColorAtActionScriptConditionData_Access_Array_Object'Class (Value.all).Value else null);
   type ColorAtActionScriptConditionData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorAtActionScriptConditionData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorAtActionScriptConditionData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorAtActionScriptConditionData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorAtActionScriptConditionData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorAtActionScriptConditionData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorAtActionScriptConditionData_Access_Array_Access_Array_Object'Class then ColorAtActionScriptConditionData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References;

with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorAtActionScriptConditionData_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.ColorAtActionScriptConditionData_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionData_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References."=";
   subtype ColorAtActionScriptConditionData_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.ColorAtActionScriptConditionData_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionData_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References."=";
   subtype ColorAtActionScriptConditionData_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.ColorAtActionScriptConditionData_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionData_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References."=";
   function Java_Box (Value : ColorAtActionScriptConditionData_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.Java_Box;
   function Java_Unbox_ColorAtActionScriptConditionData_Access_Array (Value : access Java_Object'Class) return ColorAtActionScriptConditionData_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.Java_Unbox_ColorAtActionScriptConditionData_Access_Array;
   subtype ColorAtActionScriptConditionData_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.ColorAtActionScriptConditionData_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionData_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References."=";
   subtype ColorAtActionScriptConditionData_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.ColorAtActionScriptConditionData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References."=";
   function Java_Box (Value : ColorAtActionScriptConditionData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.Java_Box;
   function Java_Unbox_ColorAtActionScriptConditionData_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorAtActionScriptConditionData_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package_References.Java_Unbox_ColorAtActionScriptConditionData_Access_Array_Access_Array;

   type ColorAtActionScriptConditionData is new Java_Object with null record;
   NAME : Unbounded_String;
   LOCATION_X : Unbounded_String;
   LOCATION_Y : Unbounded_String;
   MIN_RED : Unbounded_String;
   MAX_RED : Unbounded_String;
   MIN_GREEN : Unbounded_String;
   MAX_GREEN : Unbounded_String;
   MIN_BLUE : Unbounded_String;
   MAX_BLUE : Unbounded_String;

   procedure Initialize (This : in out ColorAtActionScriptConditionData'Class);
   function Create return ColorAtActionScriptConditionData_Access;

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionData_Package;


