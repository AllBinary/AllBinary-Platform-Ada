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
with org.allbinary.media.image.comparison.ImageComparisonResult_Package; use org.allbinary.media.image.comparison.ImageComparisonResult_Package;

package org.allbinary.media.image.comparison.motion.MotionRectangles_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ImageComparisonResult_Package renames Standard.org.allbinary.media.image.comparison.ImageComparisonResult_Package;

   type MotionRectangles is tagged;
   type MotionRectangles_Access is access all MotionRectangles'Class;
   type MotionRectangles_Access_Array is array (Natural range <>) of MotionRectangles_Access;
   type MotionRectangles_Access_Array_Access is access all MotionRectangles_Access_Array;
   type MotionRectangles_Access_Array_Access_Array is array (Natural range <>) of MotionRectangles_Access_Array_Access;
   type MotionRectangles_Access_Array_Access_Array_Access is access all MotionRectangles_Access_Array_Access_Array;

   type MotionRectangles is new Java_Object with record
      name : Unbounded_String;
      rectangleVector : BasicArrayList_Access;
      imageComparisonResult : ImageComparisonResult_Access;
      MAX_PIXEL_DISTANCE_THRESHOLD : Integer;
   end record;

   procedure Initialize (This : in out MotionRectangles'Class; name : Unbounded_String; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);
   function Create (name : Unbounded_String; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return MotionRectangles_Access;
   function getVector (This : in out MotionRectangles) return BasicArrayList_Access;
   procedure setVector (This : in out MotionRectangles; rectangleVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getName (This : in out MotionRectangles) return Unbounded_String;
   function getImageComparisonResult (This : in out MotionRectangles) return ImageComparisonResult_Access;
   procedure setImageComparisonResult (This : in out MotionRectangles; imageComparisonResult_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);

end org.allbinary.media.image.comparison.motion.MotionRectangles_Package;


