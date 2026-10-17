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
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type GameKeyFromMotionGestureEventListener is tagged;
   type GameKeyFromMotionGestureEventListener_Access is access all GameKeyFromMotionGestureEventListener'Class;
   type GameKeyFromMotionGestureEventListener_Access_Array is array (Natural range <>) of GameKeyFromMotionGestureEventListener_Access;
   type GameKeyFromMotionGestureEventListener_Access_Array_Access is access all GameKeyFromMotionGestureEventListener_Access_Array;

   type GameKeyFromMotionGestureEventListener is new CompleteMotionGestureInputEventListener with record
      logUtil : LogUtil_Access;
      previousGameKeyEvent : GameKeyEvent_Access;
   end record;

   procedure Initialize (This : in out GameKeyFromMotionGestureEventListener'Class);
   function Create return GameKeyFromMotionGestureEventListener_Access;
   procedure onEvent (This : in out GameKeyFromMotionGestureEventListener; eventObject : AllBinaryEventObject_Access);
   procedure onCompleteMotionGestureInputEvent (This : in out GameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access);

end org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;


