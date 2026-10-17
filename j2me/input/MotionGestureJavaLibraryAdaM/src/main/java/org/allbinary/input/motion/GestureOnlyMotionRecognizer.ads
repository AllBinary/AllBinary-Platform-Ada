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
with org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package; use org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;

package org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package is

   package CustomGPoint_Package renames Standard.org.allbinary.graphics.CustomGPoint_Package;
   package GPointCircularPool_Package renames Standard.org.allbinary.graphics.GPointCircularPool_Package;
   package MotionGestureRecognizer_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureRecognizer_Package;

   type GestureOnlyMotionRecognizer is tagged;
   type GestureOnlyMotionRecognizer_Access is access all GestureOnlyMotionRecognizer'Class;
   type GestureOnlyMotionRecognizer_Access_Array is array (Natural range <>) of GestureOnlyMotionRecognizer_Access;
   type GestureOnlyMotionRecognizer_Access_Array_Access is access all GestureOnlyMotionRecognizer_Access_Array;

   type GestureOnlyMotionRecognizer is new MotionRecognizer with record
      motionGestureRecognizer : MotionGestureRecognizer_Access;
      id : Integer;
   end record;
   index : Integer;
   pointCircularPool : GPointCircularPool_Access;

   procedure Initialize (This : in out GestureOnlyMotionRecognizer'Class);
   function Create return GestureOnlyMotionRecognizer_Access;
   procedure processStartMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processEndMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);
   procedure processDraggedMotionEvent (This : in out GestureOnlyMotionRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer);

end org.allbinary.input.motion.GestureOnlyMotionRecognizer_Package;


