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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.color.ColorDelta_Package; use org.allbinary.media.image.comparison.color.ColorDelta_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.media.image.comparison.pixel.PixelDelta_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package ColorDelta_Package renames Standard.org.allbinary.media.image.comparison.color.ColorDelta_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;

   type PixelDelta is tagged;
   type PixelDelta_Access is access all PixelDelta'Class;
   type PixelDelta_Access_Array is array (Natural range <>) of PixelDelta_Access;
   type PixelDelta_Access_Array_Access is access all PixelDelta_Access_Array;

   type PixelDelta is new CacheableInterface with record
      point : GPoint_Access;
      colorDelta : ColorDelta_Access;
      key : Java_Object_Access;
   end record;

   procedure Initialize (This : in out PixelDelta'Class; point : GPoint_Access; colorDelta : ColorDelta_Access);
   function Create (point : GPoint_Access; colorDelta : ColorDelta_Access) return PixelDelta_Access;
   function getKey (This : in out PixelDelta) return Java_Object_Access;
   procedure getKey (This : in out PixelDelta);
   function getKey (point : GPoint_Access; colorDelta : ColorDelta_Access) return Java_Object_Access;
   procedure getKey (point : GPoint_Access; colorDelta : ColorDelta_Access);
   function getPoint (This : in out PixelDelta) return GPoint_Access;
   procedure getPoint (This : in out PixelDelta);
   procedure setPoint (This : in out PixelDelta; point : GPoint_Access);
   function getColorDelta (This : in out PixelDelta) return ColorDelta_Access;
   procedure getColorDelta (This : in out PixelDelta);
   procedure setColorDelta (This : in out PixelDelta; colorDelta : ColorDelta_Access);
   function toString (This : in out PixelDelta) return Unbounded_String;
   procedure toString (This : in out PixelDelta);

end org.allbinary.media.image.comparison.pixel.PixelDelta_Package;


