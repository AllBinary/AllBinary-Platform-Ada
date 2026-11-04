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

limited with org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package;
package org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References is
   type MirrorMotionGestureEventUtil_Access is access all org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package.MirrorMotionGestureEventUtil'Class;
   type MirrorMotionGestureEventUtil_Access_Array is array (Natural range <>) of MirrorMotionGestureEventUtil_Access;
   type MirrorMotionGestureEventUtil_Access_Array_Access is access all MirrorMotionGestureEventUtil_Access_Array;
   type MirrorMotionGestureEventUtil_Access_Array_Access_Array is array (Natural range <>) of MirrorMotionGestureEventUtil_Access_Array_Access;
   type MirrorMotionGestureEventUtil_Access_Array_Access_Array_Access is access all MirrorMotionGestureEventUtil_Access_Array_Access_Array;
end org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References;

with org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;

package org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package is

   package MotionEventCircularPool_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package Reference_Types is
   subtype MotionEventCircularPool_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access;
   use type MotionEventCircularPool_Access;
   subtype MotionEventCircularPool_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array;
   use type MotionEventCircularPool_Access_Array;
   subtype MotionEventCircularPool_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access;
   use type MotionEventCircularPool_Access_Array_Access;
   subtype MotionEventCircularPool_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array;
   use type MotionEventCircularPool_Access_Array_Access_Array;
   subtype MotionEventCircularPool_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package_References.MotionEventCircularPool_Access_Array_Access_Array_Access;
   use type MotionEventCircularPool_Access_Array_Access_Array_Access;
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


   subtype MirrorMotionGestureEventUtil_Access is org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References.MirrorMotionGestureEventUtil_Access;
   function "=" (Left, Right : MirrorMotionGestureEventUtil_Access) return Boolean renames org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References."=";
   subtype MirrorMotionGestureEventUtil_Access_Array is org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References.MirrorMotionGestureEventUtil_Access_Array;
   function "=" (Left, Right : MirrorMotionGestureEventUtil_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References."=";
   subtype MirrorMotionGestureEventUtil_Access_Array_Access is org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References.MirrorMotionGestureEventUtil_Access_Array_Access;
   function "=" (Left, Right : MirrorMotionGestureEventUtil_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References."=";
   subtype MirrorMotionGestureEventUtil_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References.MirrorMotionGestureEventUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MirrorMotionGestureEventUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References."=";
   subtype MirrorMotionGestureEventUtil_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References.MirrorMotionGestureEventUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MirrorMotionGestureEventUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package_References."=";

   type MirrorMotionGestureEventUtil is new Java_Object with record
      motionEventCircularPool : MotionEventCircularPool_Access;
   end record;
   instance : MirrorMotionGestureEventUtil_Access;

   procedure Initialize (This : in out MirrorMotionGestureEventUtil'Class);
   function Create return MirrorMotionGestureEventUtil_Access;
   function mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class; halfWidth : Integer) return MotionGestureEvent_Access;
   procedure mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class; halfWidth : Integer);
   function getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer) return Integer;
   procedure getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer);
   function getInstance return MirrorMotionGestureEventUtil_Access;

end org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package;


