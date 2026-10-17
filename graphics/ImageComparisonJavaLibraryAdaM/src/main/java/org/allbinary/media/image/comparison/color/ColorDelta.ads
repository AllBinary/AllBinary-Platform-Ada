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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package org.allbinary.media.image.comparison.color.ColorDelta_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package CacheableInterface_Package renames org.allbinary.logic.util.cache.CacheableInterface_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;

   type ColorDelta is tagged;
   type ColorDelta_Access is access all ColorDelta'Class;
   type ColorDelta_Access_Array is array (Natural range <>) of ColorDelta_Access;
   type ColorDelta_Access_Array_Access is access all ColorDelta_Access_Array;

   type ColorDelta is new CacheableInterface with record
      rgb1 : Integer;
      rgb2 : Integer;
      key : Java_Object_Access;
   end record;

   procedure Initialize (This : in out ColorDelta'Class; rgb1 : Integer; rgb2 : Integer);
   function Create (rgb1 : Integer; rgb2 : Integer) return ColorDelta_Access;
   function getKey (This : in out ColorDelta) return Java_Object_Access;
   procedure getKey (This : in out ColorDelta);
   function getKey (rgb1 : Integer; rgb2 : Integer) return Java_Object_Access;
   procedure getKey (rgb1 : Integer; rgb2 : Integer);
   function getRgb1 (This : in out ColorDelta) return Integer;
   procedure getRgb1 (This : in out ColorDelta);
   procedure setRgb1 (This : in out ColorDelta; rgb1 : Integer);
   function getRgb2 (This : in out ColorDelta) return Integer;
   procedure getRgb2 (This : in out ColorDelta);
   procedure setRgb2 (This : in out ColorDelta; rgb2 : Integer);
   function toString (This : in out ColorDelta) return Unbounded_String;
   procedure toString (This : in out ColorDelta);

end org.allbinary.media.image.comparison.color.ColorDelta_Package;


