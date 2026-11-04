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

limited with org.allbinary.media.image.comparison.color.ColorDelta_Package;
package org.allbinary.media.image.comparison.color.ColorDelta_Package_References is
   type ColorDelta_Access is access all org.allbinary.media.image.comparison.color.ColorDelta_Package.ColorDelta'Class;
   type ColorDelta_Access_Array is array (Natural range <>) of ColorDelta_Access;
   type ColorDelta_Access_Array_Access is access all ColorDelta_Access_Array;
   type ColorDelta_Access_Array_Access_Array is array (Natural range <>) of ColorDelta_Access_Array_Access;
   type ColorDelta_Access_Array_Access_Array_Access is access all ColorDelta_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.color.ColorDelta_Package_References;

with org.allbinary.media.image.comparison.color.ColorDelta_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;

package org.allbinary.media.image.comparison.color.ColorDelta_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ColorDelta_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access;
   function "=" (Left, Right : ColorDelta_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array;
   function "=" (Left, Right : ColorDelta_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access;
   function "=" (Left, Right : ColorDelta_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array;
   function "=" (Left, Right : ColorDelta_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";
   subtype ColorDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.color.ColorDelta_Package_References.ColorDelta_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ColorDelta_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.color.ColorDelta_Package_References."=";

   type ColorDelta is new Java_Object and CacheableInterface with record
      rgb1 : Integer;
      rgb2 : Integer;
      key : Java_Object_Access;
   end record;

   procedure Initialize (This : in out ColorDelta'Class; rgb1 : Integer; rgb2 : Integer);
   function Create (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access;
   function getKey (This : in out ColorDelta) return Java_Object_Access;
   function getKey (rgb1 : Integer; rgb2 : Integer) return Java_Object_Access;
   procedure getKey (rgb1 : Integer; rgb2 : Integer);
   function getRgb1 (This : in out ColorDelta) return Integer;
   procedure setRgb1 (This : in out ColorDelta; rgb1 : Integer);
   function getRgb2 (This : in out ColorDelta) return Integer;
   procedure setRgb2 (This : in out ColorDelta; rgb2 : Integer);
   function toString (This : in out ColorDelta) return Unbounded_String;

end org.allbinary.media.image.comparison.color.ColorDelta_Package;


