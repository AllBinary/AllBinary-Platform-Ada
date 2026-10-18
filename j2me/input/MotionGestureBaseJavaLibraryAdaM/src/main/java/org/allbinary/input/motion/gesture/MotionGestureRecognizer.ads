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
with org.allbinary.graphics.Line_Package; use org.allbinary.graphics.Line_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package; use org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.J2SEMath_Package; use org.allbinary.logic.math.J2SEMath_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Line_Package renames Standard.org.allbinary.graphics.Line_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package MotionEventCircularPool_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package J2SEMath_Package renames Standard.org.allbinary.logic.math.J2SEMath_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

   type MotionGestureRecognizer is tagged;
   type MotionGestureRecognizer_Access is access all MotionGestureRecognizer'Class;
   type MotionGestureRecognizer_Access_Array is array (Natural range <>) of MotionGestureRecognizer_Access;
   type MotionGestureRecognizer_Access_Array_Access is access all MotionGestureRecognizer_Access_Array;
   type MotionGestureRecognizer_Access_Array_Access_Array is array (Natural range <>) of MotionGestureRecognizer_Access_Array_Access;
   type MotionGestureRecognizer_Access_Array_Access_Array_Access is access all MotionGestureRecognizer_Access_Array_Access_Array;

   type MotionGestureRecognizer is new Java_Object with record
      logUtil : LogUtil_Access;
      j2seMath : J2SEMath_Access;
      origin : GPoint_Access;
      previous : GPoint_Access;
      intermediate : GPoint_Access;
      line : Line_Access;
      motionGesturesHandler : BasicMotionGesturesHandler_Access;
      movedMotionGesturesHandler : BasicEventHandler_Access;
      scrolledMotionGesturesHandler : BasicEventHandler_Access;
      motionEventCircularPool : MotionEventCircularPool_Access;
   end record;

   procedure Initialize (This : in out MotionGestureRecognizer'Class; id : Integer);
   function Create (id : Integer) return MotionGestureRecognizer_Access;
   function processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processPressedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processReleasedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   procedure processDraggedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; buttonMask : Integer);
   function processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processMovedMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer) return Boolean;
   procedure processScrolledMotionEvent (This : in out MotionGestureRecognizer; current_Param : access GPoint_Package.GPoint'Class; deviceId : Integer; button : Integer);
   function getMotionGesturesHandler (This : in out MotionGestureRecognizer) return BasicMotionGesturesHandler_Access;

end org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;


