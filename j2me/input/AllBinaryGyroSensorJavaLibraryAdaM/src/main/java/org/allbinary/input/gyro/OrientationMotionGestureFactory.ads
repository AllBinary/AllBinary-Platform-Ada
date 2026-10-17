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
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.input.gyro.OrientationMotionGestureFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type OrientationMotionGestureFactory is tagged;
   type OrientationMotionGestureFactory_Access is access all OrientationMotionGestureFactory'Class;
   type OrientationMotionGestureFactory_Access_Array is array (Natural range <>) of OrientationMotionGestureFactory_Access;
   type OrientationMotionGestureFactory_Access_Array_Access is access all OrientationMotionGestureFactory_Access_Array;

   type OrientationMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
      ROLL_LEFT : MotionGestureInput_Access;
      ROLL_RIGHT : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out OrientationMotionGestureFactory'Class);
   function Create return OrientationMotionGestureFactory_Access;
   function getInstance return OrientationMotionGestureFactory_Access;

end org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;


