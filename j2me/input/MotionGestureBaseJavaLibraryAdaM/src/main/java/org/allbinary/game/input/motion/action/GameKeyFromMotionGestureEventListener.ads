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

with AllBinary_Java;
limited with org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;
package org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References is
   type GameKeyFromMotionGestureEventListener_Access is access all org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package.GameKeyFromMotionGestureEventListener'Class;
   type GameKeyFromMotionGestureEventListener_Access_Array is array (Natural range <>) of GameKeyFromMotionGestureEventListener_Access;
   type GameKeyFromMotionGestureEventListener_Access_Array_Access is access all GameKeyFromMotionGestureEventListener_Access_Array;
   type GameKeyFromMotionGestureEventListener_Access_Array_Access_Array is array (Natural range <>) of GameKeyFromMotionGestureEventListener_Access_Array_Access;
   type GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is access all GameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   type GameKeyFromMotionGestureEventListener_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyFromMotionGestureEventListener_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyFromMotionGestureEventListener_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyFromMotionGestureEventListener_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyFromMotionGestureEventListener_Access_Array_Access is (if Value /= null and then Value.all in GameKeyFromMotionGestureEventListener_Access_Array_Object'Class then GameKeyFromMotionGestureEventListener_Access_Array_Object'Class (Value.all).Value else null);
   type GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Object'Class then GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References;

with org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References;
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
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
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


   subtype GameKeyFromMotionGestureEventListener_Access is org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.GameKeyFromMotionGestureEventListener_Access;
   function "=" (Left, Right : GameKeyFromMotionGestureEventListener_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References."=";
   subtype GameKeyFromMotionGestureEventListener_Access_Array is org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.GameKeyFromMotionGestureEventListener_Access_Array;
   function "=" (Left, Right : GameKeyFromMotionGestureEventListener_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References."=";
   subtype GameKeyFromMotionGestureEventListener_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.GameKeyFromMotionGestureEventListener_Access_Array_Access;
   function "=" (Left, Right : GameKeyFromMotionGestureEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References."=";
   function Java_Box (Value : GameKeyFromMotionGestureEventListener_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.Java_Box;
   function Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array (Value : access Java_Object'Class) return GameKeyFromMotionGestureEventListener_Access_Array_Access renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array;
   subtype GameKeyFromMotionGestureEventListener_Access_Array_Access_Array is org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.GameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyFromMotionGestureEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References."=";
   subtype GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References."=";
   function Java_Box (Value : GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.Java_Box;
   function Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array_Access_Array (Value : access Java_Object'Class) return GameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access renames org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package_References.Java_Unbox_GameKeyFromMotionGestureEventListener_Access_Array_Access_Array;

   type GameKeyFromMotionGestureEventListener is new CompleteMotionGestureInputEventListener with record
      logUtil : LogUtil_Access;
      previousGameKeyEvent : GameKeyEvent_Access;
   end record;

   procedure Initialize (This : in out GameKeyFromMotionGestureEventListener'Class);
   function Create return GameKeyFromMotionGestureEventListener_Access;
   procedure onEvent (This : in out GameKeyFromMotionGestureEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out GameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);

end org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;


