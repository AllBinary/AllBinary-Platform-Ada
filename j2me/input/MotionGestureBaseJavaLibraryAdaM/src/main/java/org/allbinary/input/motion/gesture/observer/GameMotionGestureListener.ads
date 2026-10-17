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
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEventListener_Package;

package org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package is

   package MotionGestureInput_Package renames org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type GameMotionGestureListener is tagged;
   type GameMotionGestureListener_Access is access all GameMotionGestureListener'Class;
   type GameMotionGestureListener_Access_Array is array (Natural range <>) of GameMotionGestureListener_Access;
   type GameMotionGestureListener_Access_Array_Access is access all GameMotionGestureListener_Access_Array;

   type GameMotionGestureListener is new MotionGestureEventListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      motionGestureCollection : BasicArrayList_Access;
      touchGestureCollection : BasicArrayList_Access;
      signed : CompleteMotionGestureListenerInterface_Access;
   end record;

   procedure Initialize (This : in out GameMotionGestureListener'Class; signed : CompleteMotionGestureListenerInterface_Access);
   function Create (signed : CompleteMotionGestureListenerInterface_Access) return GameMotionGestureListener_Access;
   procedure onEvent (This : in out GameMotionGestureListener; eventObject : AllBinaryEventObject_Access);
   procedure onUpMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDownMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalDownRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalDownLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalUpRightMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalUpLeftMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onPressedMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure released (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onScrolledMotionGestureEvent (This : in out GameMotionGestureListener; motionGestureEvent : MotionGestureEvent_Access);
   procedure onMotionGestureEvent (This : in out GameMotionGestureListener; ev : MotionGestureEvent_Access);

end org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;


