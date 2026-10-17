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
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package is

   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type LeftTouchInputToGameKeyEventAction is tagged;
   type LeftTouchInputToGameKeyEventAction_Access is access all LeftTouchInputToGameKeyEventAction'Class;
   type LeftTouchInputToGameKeyEventAction_Access_Array is array (Natural range <>) of LeftTouchInputToGameKeyEventAction_Access;
   type LeftTouchInputToGameKeyEventAction_Access_Array_Access is access all LeftTouchInputToGameKeyEventAction_Access_Array;

   type LeftTouchInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out LeftTouchInputToGameKeyEventAction'Class);
   function Create return LeftTouchInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;


