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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;

package org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type SingleKeyPressGameKeyFromMotionGestureEventListener is tagged;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access is access all SingleKeyPressGameKeyFromMotionGestureEventListener'Class;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array is array (Natural range <>) of SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access is access all SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array is array (Natural range <>) of SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is access all SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;

   type SingleKeyPressGameKeyFromMotionGestureEventListener is new CompleteMotionGestureInputEventListener with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener'Class);
   function Create return SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   procedure onEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);

end org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;


