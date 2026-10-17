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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package; use org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangle_Package; use org.allbinary.media.image.comparison.motion.MotionRectangle_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package; use org.allbinary.media.image.comparison.motion.Rectangle_Package;

package org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;
   package PixelDelta_Package renames Standard.org.allbinary.media.image.comparison.pixel.PixelDelta_Package;

   type AllMotionRectangles is tagged;
   type AllMotionRectangles_Access is access all AllMotionRectangles'Class;
   type AllMotionRectangles_Access_Array is array (Natural range <>) of AllMotionRectangles_Access;
   type AllMotionRectangles_Access_Array_Access is access all AllMotionRectangles_Access_Array;

   type AllMotionRectangles is new MotionRectangles with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out AllMotionRectangles'Class; imageComparisonResult : ImageComparisonResult_Access);
   function Create (imageComparisonResult : ImageComparisonResult_Access) return AllMotionRectangles_Access;
   procedure createMotionRectangles (This : in out AllMotionRectangles; imageComparisonInfo : ImageComparisonResult_Access);
   function addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta : PixelDelta_Access) return Boolean;
   procedure addPixelDeltaToExistingMotionRectangle (This : in out AllMotionRectangles; pixelDelta : PixelDelta_Access);
   procedure addPixelDeltaToAMotionRectangle (This : in out AllMotionRectangles; pixelDelta : PixelDelta_Access);
   function shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle : MotionRectangle_Access; pixelDelta : PixelDelta_Access) return Boolean;
   procedure shouldPixelDeltaPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle : MotionRectangle_Access; pixelDelta : PixelDelta_Access);
   function isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle : MotionRectangle_Access; pixelDelta : PixelDelta_Access) return Boolean;
   procedure isPixelDeltaLikelyPartOfMotionRectangle (This : in out AllMotionRectangles; motionRectangle : MotionRectangle_Access; pixelDelta : PixelDelta_Access);

end org.allbinary.media.image.comparison.motion.AllMotionRectangles_Package;


