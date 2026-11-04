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

limited with org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package;
package org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References is
   type AllMotionRectangles_Access is access all org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package.AllMotionRectangles'Class;
   type AllMotionRectangles_Access_Array is array (Natural range <>) of AllMotionRectangles_Access;
   type AllMotionRectangles_Access_Array_Access is access all AllMotionRectangles_Access_Array;
   type AllMotionRectangles_Access_Array_Access_Array is array (Natural range <>) of AllMotionRectangles_Access_Array_Access;
   type AllMotionRectangles_Access_Array_Access_Array_Access is access all AllMotionRectangles_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References;

with org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package_References;
limited with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectangle_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References;

package org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package is

   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package PixelDelta_Package renames Standard.org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
   package Reference_Types is
   subtype ImageComparisonResult_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access;
   use type ImageComparisonResult_Access;
   subtype ImageComparisonResult_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array;
   use type ImageComparisonResult_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access;
   subtype ImageComparisonResult_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array;
   use type ImageComparisonResult_Access_Array_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access_Array_Access;
   subtype PixelDelta_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access;
   use type PixelDelta_Access;
   subtype PixelDelta_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array;
   use type PixelDelta_Access_Array;
   subtype PixelDelta_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access;
   use type PixelDelta_Access_Array_Access;
   subtype PixelDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array;
   use type PixelDelta_Access_Array_Access_Array;
   subtype PixelDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array_Access;
   use type PixelDelta_Access_Array_Access_Array_Access;
   subtype MotionRectangle_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access;
   use type MotionRectangle_Access;
   subtype MotionRectangle_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array;
   use type MotionRectangle_Access_Array;
   subtype MotionRectangle_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access;
   use type MotionRectangle_Access_Array_Access;
   subtype MotionRectangle_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access_Array;
   use type MotionRectangle_Access_Array_Access_Array;
   subtype MotionRectangle_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangle_Package_References.MotionRectangle_Access_Array_Access_Array_Access;
   use type MotionRectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllMotionRectangles_Access is org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References.AllMotionRectangles_Access;
   function "=" (Left, Right : AllMotionRectangles_Access) return Boolean renames org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References."=";
   subtype AllMotionRectangles_Access_Array is org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References.AllMotionRectangles_Access_Array;
   function "=" (Left, Right : AllMotionRectangles_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References."=";
   subtype AllMotionRectangles_Access_Array_Access is org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References.AllMotionRectangles_Access_Array_Access;
   function "=" (Left, Right : AllMotionRectangles_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References."=";
   subtype AllMotionRectangles_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References.AllMotionRectangles_Access_Array_Access_Array;
   function "=" (Left, Right : AllMotionRectangles_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References."=";
   subtype AllMotionRectangles_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References.AllMotionRectangles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllMotionRectangles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package_References."=";

   type AllMotionRectangles is new MotionRectangles with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out AllMotionRectangles'Class; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);
   function Create (imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return AllMotionRectangles_Access;
   procedure createMotionRectangles (This : in out AllMotionRectangles; imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);
   function addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean;
   procedure addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class);
   procedure addPixelDeltaToAMotionRectangle (This : in out AllMotionRectangles; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class);
   function shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean;
   procedure shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class);
   function isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class) return Boolean;
   procedure isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle_Param : access MotionRectangle_Package.MotionRectangle'Class; pixelDelta_Param : access PixelDelta_Package.PixelDelta'Class);

end org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package;


