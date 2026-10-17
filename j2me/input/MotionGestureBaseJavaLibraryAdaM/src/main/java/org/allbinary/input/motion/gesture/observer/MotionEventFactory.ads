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
with org.allbinary.game.input.Input_Package; use org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package; use org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

package org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package is

   package Input_Package renames org.allbinary.game.input.Input_Package;
   package InputFactory_Package renames org.allbinary.game.input.InputFactory_Package;
   package MotionGestureInput_Package renames org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package AllBinaryEventObjectFactoryInterface_Package renames org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface_Package;

   type MotionEventFactory is tagged;
   type MotionEventFactory_Access is access all MotionEventFactory'Class;
   type MotionEventFactory_Access_Array is array (Natural range <>) of MotionEventFactory_Access;
   type MotionEventFactory_Access_Array_Access is access all MotionEventFactory_Access_Array;

   type MotionEventFactory is new AllBinaryEventObjectFactoryInterface with record
      source : Java_Object_Access;
      id : Integer;
   end record;
   index : Integer;

   procedure Initialize (This : in out MotionEventFactory'Class; source : Java_Object_Access; id : Integer);
   function Create (source : Java_Object_Access; id : Integer) return MotionEventFactory_Access;
   function getInstance (This : in out MotionEventFactory) return AllBinaryEventObject_Access;
   procedure getInstance (This : in out MotionEventFactory);

end org.allbinary.input.motion.gesture.observer.MotionEventFactory_Package;


