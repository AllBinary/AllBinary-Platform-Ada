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

package org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

   type RightTrackballInputToGameKeyEventAction is tagged;
   type RightTrackballInputToGameKeyEventAction_Access is access all RightTrackballInputToGameKeyEventAction'Class;
   type RightTrackballInputToGameKeyEventAction_Access_Array is array (Natural range <>) of RightTrackballInputToGameKeyEventAction_Access;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access is access all RightTrackballInputToGameKeyEventAction_Access_Array;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of RightTrackballInputToGameKeyEventAction_Access_Array_Access;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array;

   type RightTrackballInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out RightTrackballInputToGameKeyEventAction'Class);
   function Create return RightTrackballInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;


