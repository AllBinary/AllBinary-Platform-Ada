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

limited with org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;
package org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References is
   type MotionRectanglesImageInputOutput_Access is access all org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package.MotionRectanglesImageInputOutput'Class;
   type MotionRectanglesImageInputOutput_Access_Array is array (Natural range <>) of MotionRectanglesImageInputOutput_Access;
   type MotionRectanglesImageInputOutput_Access_Array_Access is access all MotionRectanglesImageInputOutput_Access_Array;
   type MotionRectanglesImageInputOutput_Access_Array_Access_Array is array (Natural range <>) of MotionRectanglesImageInputOutput_Access_Array_Access;
   type MotionRectanglesImageInputOutput_Access_Array_Access_Array_Access is access all MotionRectanglesImageInputOutput_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.io.ImageIOInterface_Package; use org.allbinary.media.image.io.ImageIOInterface_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageIOInterface_Package renames Standard.org.allbinary.media.image.io.ImageIOInterface_Package;
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


   subtype MotionRectanglesImageInputOutput_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References.MotionRectanglesImageInputOutput_Access;
   function "=" (Left, Right : MotionRectanglesImageInputOutput_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References."=";
   subtype MotionRectanglesImageInputOutput_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References.MotionRectanglesImageInputOutput_Access_Array;
   function "=" (Left, Right : MotionRectanglesImageInputOutput_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References."=";
   subtype MotionRectanglesImageInputOutput_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References.MotionRectanglesImageInputOutput_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesImageInputOutput_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References."=";
   subtype MotionRectanglesImageInputOutput_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References.MotionRectanglesImageInputOutput_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesImageInputOutput_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References."=";
   subtype MotionRectanglesImageInputOutput_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References.MotionRectanglesImageInputOutput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesImageInputOutput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package_References."=";

   type MotionRectanglesImageInputOutput is new Java_Object and ImageIOInterface with record
      logUtil : LogUtil_Access;
      NUMBER_OF_IMAGES : Integer;
   end record;

   procedure Initialize (This : in out MotionRectanglesImageInputOutput'Class);
   function Create return MotionRectanglesImageInputOutput_Access;
   procedure save (This : in out MotionRectanglesImageInputOutput; frame : Long_Long_Integer);
   procedure save (This : in out MotionRectanglesImageInputOutput; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class; frame : Long_Long_Integer);

end org.allbinary.media.image.comparison.motion.MotionRectanglesImageInputOutput_Package;


