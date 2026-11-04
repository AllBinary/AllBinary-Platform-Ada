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

limited with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
package org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References is
   type PixelDelta_Access is access all org.allbinary.media.image.comparison.pixel.PixelDelta_Package.PixelDelta'Class;
   type PixelDelta_Access_Array is array (Natural range <>) of PixelDelta_Access;
   type PixelDelta_Access_Array_Access is access all PixelDelta_Access_Array;
   type PixelDelta_Access_Array_Access_Array is array (Natural range <>) of PixelDelta_Access_Array_Access;
   type PixelDelta_Access_Array_Access_Array_Access is access all PixelDelta_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;

with org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
limited with org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package_References;

package org.allbinary.media.image.comparison.pixel.PixelDelta_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package ColorDelta_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDelta_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype ColorDelta_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access;
   use type ColorDelta_Access;
   subtype ColorDelta_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array;
   use type ColorDelta_Access_Array;
   subtype ColorDelta_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access;
   use type ColorDelta_Access_Array_Access;
   subtype ColorDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array;
   use type ColorDelta_Access_Array_Access_Array;
   subtype ColorDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array_Access;
   use type ColorDelta_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PixelDelta_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access;
   function "=" (Left, Right : PixelDelta_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array;
   function "=" (Left, Right : PixelDelta_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access;
   function "=" (Left, Right : PixelDelta_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array;
   function "=" (Left, Right : PixelDelta_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";
   subtype PixelDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PixelDelta_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References."=";

   type PixelDelta is new Java_Object and CacheableInterface with record
      point : GPoint_Access;
      colorDelta : ColorDelta_Access;
      key : Java_Object_Access;
   end record;

   procedure Initialize (This : in out PixelDelta'Class; point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class);
   function Create (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return PixelDelta_Access;
   function getKey (This : in out PixelDelta) return Java_Object_Access;
   function getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class) return Java_Object_Access;
   procedure getKey (point_Param : access GPoint_Package.GPoint'Class; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class);
   function getPoint (This : in out PixelDelta) return GPoint_Access;
   procedure setPoint (This : in out PixelDelta; point_Param : access GPoint_Package.GPoint'Class);
   function getColorDelta (This : in out PixelDelta) return ColorDelta_Access;
   procedure setColorDelta (This : in out PixelDelta; colorDelta_Param : access ColorDelta_Package.ColorDelta'Class);
   function toString (This : in out PixelDelta) return Unbounded_String;

end org.allbinary.media.image.comparison.pixel.PixelDelta_Package;


