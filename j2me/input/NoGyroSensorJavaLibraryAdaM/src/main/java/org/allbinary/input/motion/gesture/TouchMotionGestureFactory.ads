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
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;

package org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package is


   type TouchMotionGestureFactory is tagged;
   type TouchMotionGestureFactory_Access is access all TouchMotionGestureFactory'Class;
   type TouchMotionGestureFactory_Access_Array is array (Natural range <>) of TouchMotionGestureFactory_Access;
   type TouchMotionGestureFactory_Access_Array_Access is access all TouchMotionGestureFactory_Access_Array;
   type TouchMotionGestureFactory_Access_Array_Access_Array is array (Natural range <>) of TouchMotionGestureFactory_Access_Array_Access;
   type TouchMotionGestureFactory_Access_Array_Access_Array_Access is access all TouchMotionGestureFactory_Access_Array_Access_Array;

   type TouchMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
      PRESSED : MotionGestureInput_Access;
      RELEASED : MotionGestureInput_Access;
      DIAGONAL_DOWN_RIGHT : MotionGestureInput_Access;
      DIAGONAL_DOWN_LEFT : MotionGestureInput_Access;
      DIAGONAL_UP_RIGHT : MotionGestureInput_Access;
      DIAGONAL_UP_LEFT : MotionGestureInput_Access;
      SCROLL_UP : MotionGestureInput_Access;
      SCROLL_DOWN : MotionGestureInput_Access;
      NO_MOTION : MotionGestureInput_Access;
      LAST_MOTION : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out TouchMotionGestureFactory'Class);
   function Create return TouchMotionGestureFactory_Access;
   function getInstance return TouchMotionGestureFactory_Access;

end org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;


