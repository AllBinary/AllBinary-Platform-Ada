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

limited with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;
package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References is
   type MotionRectanglesResultsEvent_Access is access all org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package.MotionRectanglesResultsEvent'Class;
   type MotionRectanglesResultsEvent_Access_Array is array (Natural range <>) of MotionRectanglesResultsEvent_Access;
   type MotionRectanglesResultsEvent_Access_Array_Access is access all MotionRectanglesResultsEvent_Access_Array;
   type MotionRectanglesResultsEvent_Access_Array_Access_Array is array (Natural range <>) of MotionRectanglesResultsEvent_Access_Array_Access;
   type MotionRectanglesResultsEvent_Access_Array_Access_Array_Access is access all MotionRectanglesResultsEvent_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
limited with org.allbinary.media.image.comparison.motion.MotionRectangles_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangles_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
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


   subtype MotionRectanglesResultsEvent_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";
   subtype MotionRectanglesResultsEvent_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References.MotionRectanglesResultsEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectanglesResultsEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package_References."=";

   type MotionRectanglesResultsEvent is new AllBinaryEventObject with record
      frame : Long_Long_Integer;
      motionRectangles : MotionRectangles_Access;
   end record;

   procedure Initialize (This : in out MotionRectanglesResultsEvent'Class; anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function Create (anyType_Param : access Java_Object'Class; frame : Long_Long_Integer; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class) return MotionRectanglesResultsEvent_Access;
   function getMotionRectangles (This : in out MotionRectanglesResultsEvent) return MotionRectangles_Access;
   procedure setMotionRectangles (This : in out MotionRectanglesResultsEvent; motionRectangles_Param : access MotionRectangles_Package.MotionRectangles'Class);
   function getFrame (This : in out MotionRectanglesResultsEvent) return Long_Long_Integer;

end org.allbinary.media.image.comparison.motion.MotionRectanglesResultsEvent_Package;


