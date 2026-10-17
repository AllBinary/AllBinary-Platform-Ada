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
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;

package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;

   type MotionRectanglesResultsFrameCacheable is tagged;
   type MotionRectanglesResultsFrameCacheable_Access is access all MotionRectanglesResultsFrameCacheable'Class;
   type MotionRectanglesResultsFrameCacheable_Access_Array is array (Natural range <>) of MotionRectanglesResultsFrameCacheable_Access;
   type MotionRectanglesResultsFrameCacheable_Access_Array_Access is access all MotionRectanglesResultsFrameCacheable_Access_Array;

   type MotionRectanglesResultsFrameCacheable is new CacheableInterface with record
      motionRectangles : MotionRectangles_Access;
      frame : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out MotionRectanglesResultsFrameCacheable'Class; motionRectangles : MotionRectangles_Access; frame : Long_Long_Integer);
   function Create (motionRectangles : MotionRectangles_Access; frame : Long_Long_Integer) return MotionRectanglesResultsFrameCacheable_Access;
   function getKey (This : in out MotionRectanglesResultsFrameCacheable) return Java_Object_Access;
   function getMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable) return MotionRectangles_Access;
   procedure setMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable; motionRectangles : MotionRectangles_Access);
   function toString (This : in out MotionRectanglesResultsFrameCacheable) return Unbounded_String;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;


