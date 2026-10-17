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
with org.allbinary.input.gyro.OrientationMotionGestureFactory_Package; use org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package is

   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package OrientationMotionGestureFactory_Package renames Standard.org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;

   type DownOrientationInputToGameKeyEventAction is tagged;
   type DownOrientationInputToGameKeyEventAction_Access is access all DownOrientationInputToGameKeyEventAction'Class;
   type DownOrientationInputToGameKeyEventAction_Access_Array is array (Natural range <>) of DownOrientationInputToGameKeyEventAction_Access;
   type DownOrientationInputToGameKeyEventAction_Access_Array_Access is access all DownOrientationInputToGameKeyEventAction_Access_Array;

   type DownOrientationInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out DownOrientationInputToGameKeyEventAction'Class);
   function Create return DownOrientationInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;
   procedure getInstance;

end org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package;


