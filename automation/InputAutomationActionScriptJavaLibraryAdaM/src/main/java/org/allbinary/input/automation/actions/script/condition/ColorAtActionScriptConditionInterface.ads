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
limited with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;
package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References is
   type ColorAtActionScriptConditionInterface_Access is access all org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package.ColorAtActionScriptConditionInterface'Class;
   type ColorAtActionScriptConditionInterface_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionInterface_Access;
   type ColorAtActionScriptConditionInterface_Access_Array_Access is access all ColorAtActionScriptConditionInterface_Access_Array;
   type ColorAtActionScriptConditionInterface_Access_Array_Access_Array is array (Natural range <>) of ColorAtActionScriptConditionInterface_Access_Array_Access;
   type ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access is access all ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   type ColorAtActionScriptConditionInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorAtActionScriptConditionInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorAtActionScriptConditionInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorAtActionScriptConditionInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorAtActionScriptConditionInterface_Access_Array_Access is (if Value /= null and then Value.all in ColorAtActionScriptConditionInterface_Access_Array_Object'Class then ColorAtActionScriptConditionInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Object'Class then ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References;

with org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
limited with org.allbinary.input.automation.actions.script.condition.Point_Package;
with org.allbinary.input.automation.actions.script.condition.Point_Package_References;

package org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package is

   package ColorRangeInterface_Package renames Standard.org.allbinary.media.image.analysis.ColorRangeInterface_Package;
   package Reference_Types is
   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   use type ColorRangeInterface_Access;
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   use type ColorRangeInterface_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access;
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   use type ColorRangeInterface_Access_Array_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access_Array_Access;
   subtype Point_Access is org.allbinary.input.automation.actions.script.condition.Point_Package_References.Point_Access;
   use type Point_Access;
   subtype Point_Access_Array is org.allbinary.input.automation.actions.script.condition.Point_Package_References.Point_Access_Array;
   use type Point_Access_Array;
   subtype Point_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.Point_Package_References.Point_Access_Array_Access;
   use type Point_Access_Array_Access;
   subtype Point_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.Point_Package_References.Point_Access_Array_Access_Array;
   use type Point_Access_Array_Access_Array;
   subtype Point_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.Point_Package_References.Point_Access_Array_Access_Array_Access;
   use type Point_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ColorAtActionScriptConditionInterface is interface;
   subtype ColorAtActionScriptConditionInterface_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionInterface_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References."=";
   subtype ColorAtActionScriptConditionInterface_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionInterface_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References."=";
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : ColorAtActionScriptConditionInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array (Value : access Java_Object'Class) return ColorAtActionScriptConditionInterface_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array;
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ColorAtActionScriptConditionInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References."=";
   subtype ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References."=";
   function Java_Box (Value : ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.Java_Box;
   function Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorAtActionScriptConditionInterface_Access_Array_Access_Array_Access renames org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package_References.Java_Unbox_ColorAtActionScriptConditionInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ColorAtActionScriptConditionInterface (Value : ColorAtActionScriptConditionInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getPoint (This : in out ColorAtActionScriptConditionInterface) return Point_Access is abstract;
   procedure setPoint (This : in out ColorAtActionScriptConditionInterface; point_Param : access Point_Package.Point'Class) is abstract;
   function getColorRangeInterface (This : in out ColorAtActionScriptConditionInterface) return ColorRangeInterface_Access is abstract;
   procedure setColorRangeInterface (This : in out ColorAtActionScriptConditionInterface; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is abstract;
   procedure log (This : in out ColorAtActionScriptConditionInterface) is abstract;

end org.allbinary.input.automation.actions.script.condition.ColorAtActionScriptConditionInterface_Package;


