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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package; use org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;

package org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package MotionEventCircularPool_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;

   type MirrorMotionGestureEventUtil is tagged;
   type MirrorMotionGestureEventUtil_Access is access all MirrorMotionGestureEventUtil'Class;
   type MirrorMotionGestureEventUtil_Access_Array is array (Natural range <>) of MirrorMotionGestureEventUtil_Access;
   type MirrorMotionGestureEventUtil_Access_Array_Access is access all MirrorMotionGestureEventUtil_Access_Array;

   type MirrorMotionGestureEventUtil is new Java_Object with record
      motionEventCircularPool : MotionEventCircularPool_Access;
   end record;
   instance : MirrorMotionGestureEventUtil_Access;

   procedure Initialize (This : in out MirrorMotionGestureEventUtil'Class);
   function Create return MirrorMotionGestureEventUtil_Access;
   function mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent'Class; halfWidth : Integer) return MotionGestureEvent_Access;
   procedure mirrorVerticle (This : in out MirrorMotionGestureEventUtil; motionGestureEvent_Param : access MotionGestureEvent'Class; halfWidth : Integer);
   function getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer) return Integer;
   procedure getNewX (This : in out MirrorMotionGestureEventUtil; x : Integer; halfWidth : Integer);
   function getInstance return MirrorMotionGestureEventUtil_Access;

end org.allbinary.input.motion.gesture.MirrorMotionGestureEventUtil_Package;


