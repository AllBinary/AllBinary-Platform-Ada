-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.graphics.color.ColorUtil_Package;
package org.allbinary.graphics.color.ColorUtil_Package_References is
   type ColorUtil_Access is access all org.allbinary.graphics.color.ColorUtil_Package.ColorUtil'Class;
   type ColorUtil_Access_Array is array (Natural range <>) of ColorUtil_Access;
   type ColorUtil_Access_Array_Access is access all ColorUtil_Access_Array;
   type ColorUtil_Access_Array_Access_Array is array (Natural range <>) of ColorUtil_Access_Array_Access;
   type ColorUtil_Access_Array_Access_Array_Access is access all ColorUtil_Access_Array_Access_Array;
   type ColorUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorUtil_Access_Array_Access is (if Value /= null and then Value.all in ColorUtil_Access_Array_Object'Class then ColorUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ColorUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorUtil_Access_Array_Access_Array_Object'Class then ColorUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.color.ColorUtil_Package_References;

with org.allbinary.graphics.color.ColorUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.Color_Package;
with org.allbinary.graphics.color.Color_Package_References;

package org.allbinary.graphics.color.ColorUtil_Package is

   package Reference_Types is
   subtype Color_Access is org.allbinary.graphics.color.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.graphics.color.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.graphics.color.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.graphics.color.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.graphics.color.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorUtil_Access is org.allbinary.graphics.color.ColorUtil_Package_References.ColorUtil_Access;
   function "=" (Left, Right : ColorUtil_Access) return Boolean renames org.allbinary.graphics.color.ColorUtil_Package_References."=";
   subtype ColorUtil_Access_Array is org.allbinary.graphics.color.ColorUtil_Package_References.ColorUtil_Access_Array;
   function "=" (Left, Right : ColorUtil_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorUtil_Package_References."=";
   subtype ColorUtil_Access_Array_Access is org.allbinary.graphics.color.ColorUtil_Package_References.ColorUtil_Access_Array_Access;
   function "=" (Left, Right : ColorUtil_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorUtil_Package_References."=";
   function Java_Box (Value : ColorUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorUtil_Package_References.Java_Box;
   function Java_Unbox_ColorUtil_Access_Array (Value : access Java_Object'Class) return ColorUtil_Access_Array_Access renames org.allbinary.graphics.color.ColorUtil_Package_References.Java_Unbox_ColorUtil_Access_Array;
   subtype ColorUtil_Access_Array_Access_Array is org.allbinary.graphics.color.ColorUtil_Package_References.ColorUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ColorUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.ColorUtil_Package_References."=";
   subtype ColorUtil_Access_Array_Access_Array_Access is org.allbinary.graphics.color.ColorUtil_Package_References.ColorUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.ColorUtil_Package_References."=";
   function Java_Box (Value : ColorUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.color.ColorUtil_Package_References.Java_Box;
   function Java_Unbox_ColorUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorUtil_Access_Array_Access_Array_Access renames org.allbinary.graphics.color.ColorUtil_Package_References.Java_Unbox_ColorUtil_Access_Array_Access_Array;

   type ColorUtil is new Java_Object with null record;
   instance : ColorUtil_Access;

   procedure Initialize (This : in out ColorUtil'Class);
   function Create return ColorUtil_Access;
   function getInstance return ColorUtil_Access;
   function isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) return Boolean;
   procedure isGreyishOrWhiteLike (This : in out ColorUtil; color_Param : access Color_Package.Color'Class);
   function isDark (This : in out ColorUtil; color_Param : access Color_Package.Color'Class) return Boolean;
   procedure isDark (This : in out ColorUtil; color_Param : access Color_Package.Color'Class);

end org.allbinary.graphics.color.ColorUtil_Package;


