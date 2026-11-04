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

limited with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
package org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References is
   type MotionEventCircularPool_Access is access all org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package.MotionEventCircularPool'Class;
   type MotionEventCircularPool_Access_Array is array (Natural range <>) of MotionEventCircularPool_Access;
   type MotionEventCircularPool_Access_Array_Access is access all MotionEventCircularPool_Access_Array;
   type MotionEventCircularPool_Access_Array_Access_Array is array (Natural range <>) of MotionEventCircularPool_Access_Array_Access;
   type MotionEventCircularPool_Access_Array_Access_Array_Access is access all MotionEventCircularPool_Access_Array_Access_Array;
end org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References;

with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;

package org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package AllBinaryEventCircularPool_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;
   package Reference_Types is
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   use type MotionGestureInput_Access;
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   use type MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   use type MotionGestureInput_Access_Array_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access;
   use type AllBinaryEventCircularPool_Access;
   subtype AllBinaryEventCircularPool_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array;
   subtype AllBinaryEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package_References.AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   use type AllBinaryEventCircularPool_Access_Array_Access_Array_Access;
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   use type MotionGestureEvent_Access;
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   use type MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   use type MotionGestureEvent_Access_Array_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionEventCircularPool_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access;
   function "=" (Left, Right : MotionEventCircularPool_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References."=";
   subtype MotionEventCircularPool_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array;
   function "=" (Left, Right : MotionEventCircularPool_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References."=";
   subtype MotionEventCircularPool_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access;
   function "=" (Left, Right : MotionEventCircularPool_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References."=";
   subtype MotionEventCircularPool_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEventCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References."=";
   subtype MotionEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEventCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References."=";

   type MotionEventCircularPool is new Java_Object with record
      MIN : Integer;
      eventPool : AllBinaryEventCircularPool_Access;
   end record;

   procedure Initialize (This : in out MotionEventCircularPool'Class; id : Integer);
   function Create (id : Integer) return MotionEventCircularPool_Access;
   function createPool (id : Integer) return MotionEventCircularPool_Access;
   procedure createPool (id : Integer);
   function getInstance (This : in out MotionEventCircularPool; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class) return MotionGestureEvent_Access;
   procedure getInstance (This : in out MotionEventCircularPool; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class);

end org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;


