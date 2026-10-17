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
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package MotionGestureConfiguration_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
   package DiagonalDownLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalDownRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
   package DiagonalUpLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalUpRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
   package DownTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
   package LeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
   package ReleaseTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
   package RightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
   package UpTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type CompleteMotionGestureInputToGameMotionGestureInput is tagged;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access is access all CompleteMotionGestureInputToGameMotionGestureInput'Class;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array is array (Natural range <>) of CompleteMotionGestureInputToGameMotionGestureInput_Access;
   type CompleteMotionGestureInputToGameMotionGestureInput_Access_Array_Access is access all CompleteMotionGestureInputToGameMotionGestureInput_Access_Array;

   type CompleteMotionGestureInputToGameMotionGestureInput is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : CompleteMotionGestureInputToGameMotionGestureInput_Access;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class);
   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access;
   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput);

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


