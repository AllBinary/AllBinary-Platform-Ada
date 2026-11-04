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

limited with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
package org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References is
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access is access all org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package.SingleKeyPressGameKeyFromMotionGestureEventListener'Class;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array is array (Natural range <>) of SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access is access all SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array is array (Natural range <>) of SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   type SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is access all SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
end org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References;

with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Reference_Types is
   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   use type CompleteMotionGestureInputEvent_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   use type CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";

   type SingleKeyPressGameKeyFromMotionGestureEventListener is new CompleteMotionGestureInputEventListener with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener'Class);
   function Create return SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   procedure onEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);

end org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;


