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
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.gyro.action.UpOrientationInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

   type UpOrientationInputToGameKeyEventAction is tagged;
   type UpOrientationInputToGameKeyEventAction_Access is access all UpOrientationInputToGameKeyEventAction'Class;
   type UpOrientationInputToGameKeyEventAction_Access_Array is array (Natural range <>) of UpOrientationInputToGameKeyEventAction_Access;
   type UpOrientationInputToGameKeyEventAction_Access_Array_Access is access all UpOrientationInputToGameKeyEventAction_Access_Array;
   type UpOrientationInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of UpOrientationInputToGameKeyEventAction_Access_Array_Access;
   type UpOrientationInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all UpOrientationInputToGameKeyEventAction_Access_Array_Access_Array;

   type UpOrientationInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out UpOrientationInputToGameKeyEventAction'Class);
   function Create return UpOrientationInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.gyro.action.UpOrientationInputToGameKeyEventAction_Package;


