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

limited with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;
package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References is
   type MotionRectanglesResultsFrameCacheable_Access is access all org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package.MotionRectanglesResultsFrameCacheable'Class;
   type MotionRectanglesResultsFrameCacheable_Access_Array is array (Natural range <>) of MotionRectanglesResultsFrameCacheable_Access;
   type MotionRectanglesResultsFrameCacheable_Access_Array_Access is access all MotionRectanglesResultsFrameCacheable_Access_Array;
   type MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array is array (Natural range <>) of MotionRectanglesResultsFrameCacheable_Access_Array_Access;
   type MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array_Access is access all MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package is

   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
   subtype MotionRectangles_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access;
   use type MotionRectangles_Access;
   subtype MotionRectangles_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array;
   use type MotionRectangles_Access_Array;
   subtype MotionRectangles_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access;
   use type MotionRectangles_Access_Array_Access;
   subtype MotionRectangles_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access_Array;
   use type MotionRectangles_Access_Array_Access_Array;
   subtype MotionRectangles_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References.MotionRectangles_Access_Array_Access_Array_Access;
   use type MotionRectangles_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionRectanglesResultsFrameCacheable_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References.MotionRectanglesResultsFrameCacheable_Access;
   function "=" (Left, Right : MotionRectanglesResultsFrameCacheable_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References."=";
   subtype MotionRectanglesResultsFrameCacheable_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References.MotionRectanglesResultsFrameCacheable_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsFrameCacheable_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References."=";
   subtype MotionRectanglesResultsFrameCacheable_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References.MotionRectanglesResultsFrameCacheable_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsFrameCacheable_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References."=";
   subtype MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References.MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References."=";
   subtype MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References.MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsFrameCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package_References."=";

   type MotionRectanglesResultsFrameCacheable is new Java_Object and CacheableInterface with record
      motionRectangles : MotionRectangles_Access;
      frame : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out MotionRectanglesResultsFrameCacheable'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class; frame : Long_Long_Integer);
   function Create (motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class; frame : Long_Long_Integer) return MotionRectanglesResultsFrameCacheable_Access;
   function getKey (This : in out MotionRectanglesResultsFrameCacheable) return Java_Object_Access;
   function getMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable) return MotionRectangles_Access;
   procedure setMotionRectangles (This : in out MotionRectanglesResultsFrameCacheable; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function toString (This : in out MotionRectanglesResultsFrameCacheable) return Unbounded_String;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsFrameCacheable_Package;


