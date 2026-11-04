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

limited with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References is
   type GameKeyCompleteMotionGestureInputEvent_Access is access all org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package.GameKeyCompleteMotionGestureInputEvent'Class;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEvent_Access;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEvent_Access_Array;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array is array (Natural range <>) of GameKeyCompleteMotionGestureInputEvent_Access_Array_Access;
   type GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is access all GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array;
end org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References;

with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package; use org.allbinary.game.input.GameKeyEventSourceInterface_Package;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References;
limited with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package_References;

package org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyEventSourceInterface_Package renames Standard.org.allbinary.game.input.GameKeyEventSourceInterface_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   use type GameKeyEvent_Access;
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   use type GameKeyEvent_Access_Array;
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access;
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   use type GameKeyEvent_Access_Array_Access_Array;
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   use type GameKeyEvent_Access_Array_Access_Array_Access;
   subtype InputToGameKeyMapping_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access;
   use type InputToGameKeyMapping_Access;
   subtype InputToGameKeyMapping_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array;
   use type InputToGameKeyMapping_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access;
   subtype InputToGameKeyMapping_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array;
   use type InputToGameKeyMapping_Access_Array_Access_Array;
   subtype InputToGameKeyMapping_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputToGameKeyMapping_Package_References.InputToGameKeyMapping_Access_Array_Access_Array_Access;
   use type InputToGameKeyMapping_Access_Array_Access_Array_Access;
   subtype MotionGestureInput_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access;
   use type MotionGestureInput_Access;
   subtype MotionGestureInput_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array;
   use type MotionGestureInput_Access_Array;
   subtype MotionGestureInput_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access;
   subtype MotionGestureInput_Access_Array_Access_Array is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array;
   use type MotionGestureInput_Access_Array_Access_Array;
   subtype MotionGestureInput_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.MotionGestureInput_Package_References.MotionGestureInput_Access_Array_Access_Array_Access;
   use type MotionGestureInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype GameKeyCompleteMotionGestureInputEvent_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";
   subtype GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References.GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyCompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package_References."=";

   type GameKeyCompleteMotionGestureInputEvent is new CompleteMotionGestureInputEvent and GameKeyEventSourceInterface with record
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
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


