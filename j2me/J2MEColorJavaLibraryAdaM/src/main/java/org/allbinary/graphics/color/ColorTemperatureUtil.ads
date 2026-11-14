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
limited with org.allbinary.graphics.color.ColorTemperatureUtil_Package;
package org.allbinary.graphics.color.ColorTemperatureUtil_Package_References is
   type ColorTemperatureUtil_Access is access all org.allbinary.graphics.color.ColorTemperatureUtil_Package.ColorTemperatureUtil'Class;
   type ColorTemperatureUtil_Access_Array is array (Natural range <>) of ColorTemperatureUtil_Access;
   type ColorTemperatureUtil_Access_Array_Access is access all ColorTemperatureUtil_Access_Array;
   type ColorTemperatureUtil_Access_Array_Access_Array is array (Natural range <>) of ColorTemperatureUtil_Access_Array_Access;
   type ColorTemperatureUtil_Access_Array_Access_Array_Access is access all ColorTemperatureUtil_Access_Array_Access_Array;
   type ColorTemperatureUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorTemperatureUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorTemperatureUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorTemperatureUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorTemperatureUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorTemperatureUtil_Access_Array_Access is (if Value /= null and then Value.all in ColorTemperatureUtil_Access_Array_Object'Class then ColorTemperatureUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ColorTemperatureUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorTemperatureUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorTemperatureUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorTemperatureUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorTemperatureUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorTemperatureUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorTemperatureUtil_Access_Array_Access_Array_Object'Class then ColorTemperatureUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.ColorTemperatureUtil_Package_References;

with org.allbinary.graphics.color.ColorTemperatureUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.graphics.color.ColorTemperatureUtil_Package is

   package Reference_Types is
   subtype BasicColorFactory_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access;
   use type BasicColorFactory_Access;
   subtype BasicColorFactory_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array;
   use type BasicColorFactory_Access_Array;
   subtype BasicColorFactory_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access;
   subtype BasicColorFactory_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array;
   use type BasicColorFactory_Access_Array_Access_Array;
   subtype BasicColorFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColorFactory_Package_References.BasicColorFactory_Access_Array_Access_Array_Access;
   use type BasicColorFactory_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorTemperatureUtil_Access is org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.ColorTemperatureUtil_Access;
   function "=" (Left, Right : ColorTemperatureUtil_Access) return Boolean renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References."=";
   subtype ColorTemperatureUtil_Access_Array is org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.ColorTemperatureUtil_Access_Array;
   function "=" (Left, Right : ColorTemperatureUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References."=";
   subtype ColorTemperatureUtil_Access_Array_Access is org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.ColorTemperatureUtil_Access_Array_Access;
   function "=" (Left, Right : ColorTemperatureUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References."=";
   function Java_Box (Value : ColorTemperatureUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.Java_Box;
   function Java_Unbox_ColorTemperatureUtil_Access_Array (Value : access Java_Object'Class) return ColorTemperatureUtil_Access_Array_Access renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.Java_Unbox_ColorTemperatureUtil_Access_Array;
   subtype ColorTemperatureUtil_Access_Array_Access_Array is org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.ColorTemperatureUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ColorTemperatureUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References."=";
   subtype ColorTemperatureUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.ColorTemperatureUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorTemperatureUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References."=";
   function Java_Box (Value : ColorTemperatureUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.Java_Box;
   function Java_Unbox_ColorTemperatureUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorTemperatureUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.ColorTemperatureUtil_Package_References.Java_Unbox_ColorTemperatureUtil_Access_Array_Access_Array;

   type ColorTemperatureUtil is new Java_Object with record
      basicColorFactory : BasicColorFactory_Access;
   end record;
   instance : ColorTemperatureUtil_Access;

   procedure Initialize (This : in out ColorTemperatureUtil'Class);
   function Create return ColorTemperatureUtil_Access;
   function getInstance return ColorTemperatureUtil_Access;
   function getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer) return BasicColor_Access;
   procedure getBasicColor (This : in out ColorTemperatureUtil; thirdTemp : Integer);

end org.allbinary.graphics.color.ColorTemperatureUtil_Package;


