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
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package; use org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.input.automation.module.Dimension_Package; use org.allbinary.input.automation.module.Dimension_Package;
with org.allbinary.input.automation.module.Rectangle_Package; use org.allbinary.input.automation.module.Rectangle_Package;

package org.allbinary.input.automation.module.MotionRectangleConstraints_Package is

   package MotionRectangleConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;

   type MotionRectangleConstraints is tagged;
   type MotionRectangleConstraints_Access is access all MotionRectangleConstraints'Class;
   type MotionRectangleConstraints_Access_Array is array (Natural range <>) of MotionRectangleConstraints_Access;
   type MotionRectangleConstraints_Access_Array_Access is access all MotionRectangleConstraints_Access_Array;

   type MotionRectangleConstraints is new MotionRectangleConstraintsInterface with record
      minDimension : Dimension_Access;
      maxDimension : Dimension_Access;
      maxMotionRectangles : Integer;
      minArea : Integer;
   end record;

   procedure Initialize (This : in out MotionRectangleConstraints'Class);
   function Create return MotionRectangleConstraints_Access;
   function getMinDimension (This : in out MotionRectangleConstraints) return Dimension_Access;
   function getMaxDimension (This : in out MotionRectangleConstraints) return Dimension_Access;
   function isTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isTooBig (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isTooBig (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure setMinDimension (This : in out MotionRectangleConstraints; minDimension_Param : access Dimension_Package.Dimension'Class);
   procedure setMaxDimension (This : in out MotionRectangleConstraints; maxDimension_Param : access Dimension_Package.Dimension'Class);
   function getMaxMotionRectangles (This : in out MotionRectangleConstraints) return Integer;
   procedure setMaxMotionRectangles (This : in out MotionRectangleConstraints; maxMotionRectangles : Integer);
   function getMinArea (This : in out MotionRectangleConstraints) return Integer;
   procedure setMinArea (This : in out MotionRectangleConstraints; minArea : Integer);

end org.allbinary.input.automation.module.MotionRectangleConstraints_Package;


