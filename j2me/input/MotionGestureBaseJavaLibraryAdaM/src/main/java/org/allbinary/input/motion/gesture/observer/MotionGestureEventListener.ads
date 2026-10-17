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
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;

package org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package is


   type MotionGestureEventListener is interface and BaseMotionGestureEventListener;
   type MotionGestureEventListener_Access is access all MotionGestureEventListener'Class;
   type MotionGestureEventListener_Access_Array is array (Natural range <>) of MotionGestureEventListener_Access;
   type MotionGestureEventListener_Access_Array_Access is access all MotionGestureEventListener_Access_Array;
   procedure onPressedMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onUpMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onDownMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onDiagonalDownRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onDiagonalDownLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onDiagonalUpRightMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure onDiagonalUpLeftMotionGestureEvent (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;
   procedure released (This : in out MotionGestureEventListener; ev_Param : access MotionGestureEvent'Class) is abstract;

end org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package;


