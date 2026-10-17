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
with org.allbinary.input.motion.AllMotionRecognizer_Package; use org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package; use org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.input.TouchJ2ME_Package is

   package AllMotionRecognizer_Package renames org.allbinary.input.motion.AllMotionRecognizer_Package;
   package BasicMotionGesturesHandler_Package renames org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package GameMotionGestureListener_Package renames org.allbinary.input.motion.gesture.observer.GameMotionGestureListener_Package;
   package MotionGestureReceiveInterfaceFactory_Package renames org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type TouchJ2ME is tagged;
   type TouchJ2ME_Access is access all TouchJ2ME'Class;
   type TouchJ2ME_Access_Array is array (Natural range <>) of TouchJ2ME_Access;
   type TouchJ2ME_Access_Array_Access is access all TouchJ2ME_Access_Array;

   type TouchJ2ME is new Java_Object with record
      logUtil : LogUtil_Access;
      DEVICE_ID : Integer;
      motionRecognizer : AllMotionRecognizer_Access;
   end record;

   procedure Initialize (This : in out TouchJ2ME'Class);
   function Create return TouchJ2ME_Access;
   procedure pointerDragged (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerPressed (This : in out TouchJ2ME; x : Integer; y : Integer);
   procedure pointerReleased (This : in out TouchJ2ME; x : Integer; y : Integer);

end org.allbinary.input.TouchJ2ME_Package;


