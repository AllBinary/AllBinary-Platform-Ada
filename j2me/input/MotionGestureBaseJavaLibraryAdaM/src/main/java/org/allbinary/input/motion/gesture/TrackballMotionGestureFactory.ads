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
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package is

   package InputFactory_Package renames Standard.org.allbinary.game.input.InputFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type TrackballMotionGestureFactory is tagged;
   type TrackballMotionGestureFactory_Access is access all TrackballMotionGestureFactory'Class;
   type TrackballMotionGestureFactory_Access_Array is array (Natural range <>) of TrackballMotionGestureFactory_Access;
   type TrackballMotionGestureFactory_Access_Array_Access is access all TrackballMotionGestureFactory_Access_Array;

   type TrackballMotionGestureFactory is new Java_Object with record
      LEFT : MotionGestureInput_Access;
      RIGHT : MotionGestureInput_Access;
      UP : MotionGestureInput_Access;
      DOWN : MotionGestureInput_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out TrackballMotionGestureFactory'Class);
   function Create return TrackballMotionGestureFactory_Access;
   function getInstance return TrackballMotionGestureFactory_Access;
   procedure getInstance;

end org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;


