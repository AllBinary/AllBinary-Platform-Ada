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
with org.allbinary.graphics.CustomGPoint_Package; use org.allbinary.graphics.CustomGPoint_Package;
with org.allbinary.graphics.GPointCircularPool_Package; use org.allbinary.graphics.GPointCircularPool_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package; use org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package; use org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;

package org.allbinary.input.motion.AllMotionRecognizer_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package GPointCircularPool_Package renames Standard.org.allbinary.graphics.GPointCircularPool_Package;
   package TouchButtonRecognizer_Package renames Standard.org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
   package MotionGestureRecognizer_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type AllMotionRecognizer is tagged;
   type AllMotionRecognizer_Access is access all AllMotionRecognizer'Class;
   type AllMotionRecognizer_Access_Array is array (Natural range <>) of AllMotionRecognizer_Access;
   type AllMotionRecognizer_Access_Array_Access is access all AllMotionRecognizer_Access_Array;

   type AllMotionRecognizer is new MotionRecognizer with record
      logUtil : LogUtil_Access;
      motionGestureRecognizer : MotionGestureRecognizer_Access;
      touchButtonProcessing : Boolean;
      touchButtonRecognizer : TouchButtonRecognizer_Access;
      id : Integer;
      lastX : Integer;
      lastY : Integer;
   end record;
   index : Integer;
   pointCircularPool : GPointCircularPool_Access;

   procedure Initialize (This : in out AllMotionRecognizer'Class);
   function Create return AllMotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processMovedMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processScrolledMotionEvent (This : in out AllMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   function getMotionGestureRecognizer (This : in out AllMotionRecognizer) return MotionGestureRecognizer_Access;
   procedure getMotionGestureRecognizer (This : in out AllMotionRecognizer);

end org.allbinary.input.motion.AllMotionRecognizer_Package;


