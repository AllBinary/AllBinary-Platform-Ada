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
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;

   type NoCompleteMotionGestureInputEventListener is tagged;
   type NoCompleteMotionGestureInputEventListener_Access is access all NoCompleteMotionGestureInputEventListener'Class;
   type NoCompleteMotionGestureInputEventListener_Access_Array is array (Natural range <>) of NoCompleteMotionGestureInputEventListener_Access;
   type NoCompleteMotionGestureInputEventListener_Access_Array_Access is access all NoCompleteMotionGestureInputEventListener_Access_Array;

   type NoCompleteMotionGestureInputEventListener is new CompleteMotionGestureInputEventListener with null record;
   instance : NoCompleteMotionGestureInputEventListener_Access;

   procedure Initialize (This : in out NoCompleteMotionGestureInputEventListener'Class);
   function Create return NoCompleteMotionGestureInputEventListener_Access;
   procedure onEvent (This : in out NoCompleteMotionGestureInputEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out NoCompleteMotionGestureInputEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);
   function getInstance return NoCompleteMotionGestureInputEventListener_Access;

end org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;


