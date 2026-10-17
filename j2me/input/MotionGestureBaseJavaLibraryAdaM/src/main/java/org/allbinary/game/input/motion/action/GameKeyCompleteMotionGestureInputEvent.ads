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
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory_Package;

package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameKeyCompleteMotionGestureInputEvent is tagged;
   type GameKeyCompleteMotionGestureInputEvent_Access is access all GameKeyCompleteMotionGestureInputEvent'Class;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEvent_Access;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEvent_Access_Array;

   type GameKeyCompleteMotionGestureInputEvent is new CompleteMotionGestureInputEvent and GameKeyEventSourceInterface with record
      gameKeyEventFactory : GameKeyEventFactory_Access;
      SOURCE_ID : Integer;
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
   end record;

   procedure Initialize (This : in out GameKeyCompleteMotionGestureInputEvent'Class; name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class);
   function Create (name : Unbounded_String; motionGestureInput_Param : access MotionGestureInput_Package.MotionGestureInput'Class; inputToGameKeyMapping_Param : access InputToGameKeyMapping_Package.InputToGameKeyMapping'Class) return GameKeyCompleteMotionGestureInputEvent_Access;
   function getSourceId (This : in out GameKeyCompleteMotionGestureInputEvent) return Integer;
   procedure update (This : in out GameKeyCompleteMotionGestureInputEvent);
   procedure setGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   function getGameKeyEvent (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKeyEvent_Access;
   procedure setGameKey (This : in out GameKeyCompleteMotionGestureInputEvent; gameKey_Param : access GameKey_Package.GameKey'Class);
   function getGameKey (This : in out GameKeyCompleteMotionGestureInputEvent) return GameKey_Access;

end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;


