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
limited with org.allbinary.media.image.analysis.ColorRange_Package;
package org.allbinary.media.image.analysis.ColorRange_Package_References is
   type ColorRange_Access is access all org.allbinary.media.image.analysis.ColorRange_Package.ColorRange'Class;
   type ColorRange_Access_Array is array (Natural range <>) of ColorRange_Access;
   type ColorRange_Access_Array_Access is access all ColorRange_Access_Array;
   type ColorRange_Access_Array_Access_Array is array (Natural range <>) of ColorRange_Access_Array_Access;
   type ColorRange_Access_Array_Access_Array_Access is access all ColorRange_Access_Array_Access_Array;
   type ColorRange_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorRange_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorRange_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorRange_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorRange_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorRange_Access_Array_Access is (if Value /= null and then Value.all in ColorRange_Access_Array_Object'Class then ColorRange_Access_Array_Object'Class (Value.all).Value else null);
   type ColorRange_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ColorRange_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ColorRange_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ColorRange_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ColorRange_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ColorRange_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ColorRange_Access_Array_Access_Array_Object'Class then ColorRange_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.analysis.ColorRange_Package_References;

with org.allbinary.media.image.analysis.ColorRange_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package; use org.allbinary.media.image.analysis.ColorRangeInterface_Package;
limited with org.allbinary.media.image.analysis.Color_Package;
with org.allbinary.media.image.analysis.Color_Package_References;

package org.allbinary.media.image.analysis.ColorRange_Package is

   package Reference_Types is
   subtype Color_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ColorRange_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access;
   function "=" (Left, Right : ColorRange_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array;
   function "=" (Left, Right : ColorRange_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access;
   function "=" (Left, Right : ColorRange_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   function Java_Box (Value : ColorRange_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ColorRange_Package_References.Java_Box;
   function Java_Unbox_ColorRange_Access_Array (Value : access Java_Object'Class) return ColorRange_Access_Array_Access renames org.allbinary.media.image.analysis.ColorRange_Package_References.Java_Unbox_ColorRange_Access_Array;
   subtype ColorRange_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array;
   function "=" (Left, Right : ColorRange_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   subtype ColorRange_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorRange_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ColorRange_Package_References."=";
   function Java_Box (Value : ColorRange_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ColorRange_Package_References.Java_Box;
   function Java_Unbox_ColorRange_Access_Array_Access_Array (Value : access Java_Object'Class) return ColorRange_Access_Array_Access_Array_Access renames org.allbinary.media.image.analysis.ColorRange_Package_References.Java_Unbox_ColorRange_Access_Array_Access_Array;

   type ColorRange is new Java_Object and ColorRangeInterface with record
      minRed : Integer;
      maxRed : Integer;
      minGreen : Integer;
      maxGreen : Integer;
      minBlue : Integer;
      maxBlue : Integer;
   end record;

   procedure Initialize (This : in out ColorRange'Class);
   function Create return ColorRange_Access;
   function getMinRed (This : in out ColorRange) return Integer;
   procedure setMinRed (This : in out ColorRange; minRed : Integer);
   function getMaxRed (This : in out ColorRange) return Integer;
   procedure setMaxRed (This : in out ColorRange; maxRed : Integer);
   function getMinGreen (This : in out ColorRange) return Integer;
   procedure setMinGreen (This : in out ColorRange; minGreen : Integer);
   function getMaxGreen (This : in out ColorRange) return Integer;
   procedure setMaxGreen (This : in out ColorRange; maxGreen : Integer);
   function getMinBlue (This : in out ColorRange) return Integer;
   procedure setMinBlue (This : in out ColorRange; minBlue : Integer);
   function getMaxBlue (This : in out ColorRange) return Integer;
   procedure setMaxBlue (This : in out ColorRange; maxBlue : Integer);
   function isInRange (This : in out ColorRange; color_Param : access Color_Package.Color'Class) return Boolean;
   procedure isInRange (This : in out ColorRange; color_Param : access Color_Package.Color'Class);
   function toString (This : in out ColorRange) return Unbounded_String;

end org.allbinary.media.image.analysis.ColorRange_Package;


