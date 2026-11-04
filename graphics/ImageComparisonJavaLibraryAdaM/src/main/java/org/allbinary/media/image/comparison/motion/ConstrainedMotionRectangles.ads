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

limited with org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package;
package org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References is
   type ConstrainedMotionRectangles_Access is access all org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package.ConstrainedMotionRectangles'Class;
   type ConstrainedMotionRectangles_Access_Array is array (Natural range <>) of ConstrainedMotionRectangles_Access;
   type ConstrainedMotionRectangles_Access_Array_Access is access all ConstrainedMotionRectangles_Access_Array;
   type ConstrainedMotionRectangles_Access_Array_Access_Array is array (Natural range <>) of ConstrainedMotionRectangles_Access_Array_Access;
   type ConstrainedMotionRectangles_Access_Array_Access_Array_Access is access all ConstrainedMotionRectangles_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References;

with org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References;
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
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package; use org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;

package org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype MotionRectangleConstraintsInterface_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access;
   use type MotionRectangleConstraintsInterface_Access;
   subtype MotionRectangleConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array;
   use type MotionRectangleConstraintsInterface_Access_Array;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access;
   use type MotionRectangleConstraintsInterface_Access_Array_Access;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   use type MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
   use type MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ConstrainedMotionRectangles_Access is org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References.ConstrainedMotionRectangles_Access;
   function "=" (Left, Right : ConstrainedMotionRectangles_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References."=";
   subtype ConstrainedMotionRectangles_Access_Array is org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References.ConstrainedMotionRectangles_Access_Array;
   function "=" (Left, Right : ConstrainedMotionRectangles_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References."=";
   subtype ConstrainedMotionRectangles_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References.ConstrainedMotionRectangles_Access_Array_Access;
   function "=" (Left, Right : ConstrainedMotionRectangles_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References."=";
   subtype ConstrainedMotionRectangles_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References.ConstrainedMotionRectangles_Access_Array_Access_Array;
   function "=" (Left, Right : ConstrainedMotionRectangles_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References."=";
   subtype ConstrainedMotionRectangles_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References.ConstrainedMotionRectangles_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ConstrainedMotionRectangles_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package_References."=";

   type ConstrainedMotionRectangles is new MotionRectangles with record
      logUtil : LogUtil_Access;
      motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out ConstrainedMotionRectangles'Class; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function Create (motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) return ConstrainedMotionRectangles_Access;
   procedure applyMotionRectangleConstraints (This : in out ConstrainedMotionRectangles; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function getMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles) return MotionRectangleConstraintsInterface_Access;
   procedure setMotionRectangleConstraintsInterface (This : in out ConstrainedMotionRectangles; motionRectangleConstraintsInterface_Param : access MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class);

end org.allbinary.media.image.comparison.motion.ConstrainedMotionRectangles_Package;


