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
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.media.image.comparison.motion.Dimension_Package; use org.allbinary.media.image.comparison.motion.Dimension_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package; use org.allbinary.media.image.comparison.motion.Rectangle_Package;

package org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package is


   type MotionRectangleConstraintsInterface is interface;
   type MotionRectangleConstraintsInterface_Access is access all MotionRectangleConstraintsInterface'Class;
   type MotionRectangleConstraintsInterface_Access_Array is array (Natural range <>) of MotionRectangleConstraintsInterface_Access;
   type MotionRectangleConstraintsInterface_Access_Array_Access is access all MotionRectangleConstraintsInterface_Access_Array;
   type MotionRectangleConstraintsInterface_Access_Array_Access_Array is array (Natural range <>) of MotionRectangleConstraintsInterface_Access_Array_Access;
   type MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is access all MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   function getMaxMotionRectangles (This : in out MotionRectangleConstraintsInterface) return Integer is abstract;
   function getMinDimension (This : in out MotionRectangleConstraintsInterface) return Dimension_Access is abstract;
   function getMinArea (This : in out MotionRectangleConstraintsInterface) return Integer is abstract;
   function getMaxDimension (This : in out MotionRectangleConstraintsInterface) return Dimension_Access is abstract;
   function isTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   function isAreaTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   function isTooBig (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   function isValid (This : in out MotionRectangleConstraintsInterface; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;

end org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;


