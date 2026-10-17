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

package org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package is

   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type ReleaseControlledMotionGestureListener is tagged;
   type ReleaseControlledMotionGestureListener_Access is access all ReleaseControlledMotionGestureListener'Class;
   type ReleaseControlledMotionGestureListener_Access_Array is array (Natural range <>) of ReleaseControlledMotionGestureListener_Access;
   type ReleaseControlledMotionGestureListener_Access_Array_Access is access all ReleaseControlledMotionGestureListener_Access_Array;

   type ReleaseControlledMotionGestureListener is new MotionGestureEventListener with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      currentMotionGesture : MotionGestureInput_Access;
      isMouseGestureOccurring : Boolean;
      motionGestureCollection : BasicArrayList_Access;
      signed : CompleteMotionGestureListenerInterface_Access;
   end record;

   procedure Initialize (This : in out ReleaseControlledMotionGestureListener'Class; signed : CompleteMotionGestureListenerInterface_Access);
   function Create (signed : CompleteMotionGestureListenerInterface_Access) return ReleaseControlledMotionGestureListener_Access;
   procedure onEvent (This : in out ReleaseControlledMotionGestureListener; eventObject : AllBinaryEventObject_Access);
   procedure onUpMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDownMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalDownRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalDownLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalUpRightMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onDiagonalUpLeftMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onPressedMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onScrolledMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; motionGestureEvent : MotionGestureEvent_Access);
   procedure released (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);
   procedure onMotionGestureEvent (This : in out ReleaseControlledMotionGestureListener; ev : MotionGestureEvent_Access);

end org.allbinary.input.motion.gesture.observer.ReleaseControlledMotionGestureListener_Package;


