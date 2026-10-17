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
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package; use org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

package org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package is

   package InputFactory_Package renames org.allbinary.game.input.InputFactory_Package;
   package MotionGestureInput_Package renames org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package AllBinaryEventCircularPool_Package renames org.allbinary.logic.util.event.AllBinaryEventCircularPool_Package;

   type MotionEventCircularPool is tagged;
   type MotionEventCircularPool_Access is access all MotionEventCircularPool'Class;
   type MotionEventCircularPool_Access_Array is array (Natural range <>) of MotionEventCircularPool_Access;
   type MotionEventCircularPool_Access_Array_Access is access all MotionEventCircularPool_Access_Array;

   type MotionEventCircularPool is new Java_Object with record
      MIN : Integer;
      eventPool : AllBinaryEventCircularPool_Access;
   end record;

   procedure Initialize (This : in out MotionEventCircularPool'Class; id : Integer);
   function Create (id : Integer) return MotionEventCircularPool_Access;
   function createPool (id : Integer) return MotionEventCircularPool_Access;
   procedure createPool (id : Integer);
   function getInstance (This : in out MotionEventCircularPool; motionGestureInput : MotionGestureInput_Access) return MotionGestureEvent_Access;
   procedure getInstance (This : in out MotionEventCircularPool; motionGestureInput : MotionGestureInput_Access);

end org.allbinary.input.motion.gesture.observer.MotionEventCircularPool_Package;


