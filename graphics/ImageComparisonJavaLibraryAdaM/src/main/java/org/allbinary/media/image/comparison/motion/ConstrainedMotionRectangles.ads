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
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package; use org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangle_Package; use org.allbinary.media.image.comparison.motion.MotionRectangle_Package;

package org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type ConstrainedMotionRectangles is tagged;
   type ConstrainedMotionRectangles_Access is access all ConstrainedMotionRectangles'Class;
   type ConstrainedMotionRectangles_Access_Array is array (Natural range <>) of ConstrainedMotionRectangles_Access;
   type ConstrainedMotionRectangles_Access_Array_Access is access all ConstrainedMotionRectangles_Access_Array;

   type ConstrainedMotionRectangles is new MotionRectangles with record
      logUtil : LogUtil_Access;
      motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ConstrainedMotionRectangles'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles'Class);
   function Create (motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles'Class) return ConstrainedMotionRectangles_Access;
   procedure applyMotionRectangleConstraints (This : in out ConstrainedMotionRectangles; motionRectangles_Param : access MotionRectangles'Class);
   function getMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles) return MotionRectangleConstraintsInterface_Access;
   procedure setMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface'Class);

end org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package;


