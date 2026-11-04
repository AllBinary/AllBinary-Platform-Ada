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

limited with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;
package org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References is
   type NoCompleteMotionGestureInputEventListener_Access is access all org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package.NoCompleteMotionGestureInputEventListener'Class;
   type NoCompleteMotionGestureInputEventListener_Access_Array is array (Natural range <>) of NoCompleteMotionGestureInputEventListener_Access;
   type NoCompleteMotionGestureInputEventListener_Access_Array_Access is access all NoCompleteMotionGestureInputEventListener_Access_Array;
   type NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array is array (Natural range <>) of NoCompleteMotionGestureInputEventListener_Access_Array_Access;
   type NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is access all NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array;
end org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References;

with org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References;
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
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;

package org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package is

   package CompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
   package CompleteMotionGestureInputEventListener_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
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


   subtype NoCompleteMotionGestureInputEventListener_Access is org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References.NoCompleteMotionGestureInputEventListener_Access;
   function "=" (Left, Right : NoCompleteMotionGestureInputEventListener_Access) return Boolean renames org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References."=";
   subtype NoCompleteMotionGestureInputEventListener_Access_Array is org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References.NoCompleteMotionGestureInputEventListener_Access_Array;
   function "=" (Left, Right : NoCompleteMotionGestureInputEventListener_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References."=";
   subtype NoCompleteMotionGestureInputEventListener_Access_Array_Access is org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References.NoCompleteMotionGestureInputEventListener_Access_Array_Access;
   function "=" (Left, Right : NoCompleteMotionGestureInputEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References."=";
   subtype NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array is org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References.NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References."=";
   subtype NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References.NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoCompleteMotionGestureInputEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package_References."=";

   type NoCompleteMotionGestureInputEventListener is new CompleteMotionGestureInputEventListener with null record;
   instance : NoCompleteMotionGestureInputEventListener_Access;

   procedure Initialize (This : in out NoCompleteMotionGestureInputEventListener'Class);
   function Create return NoCompleteMotionGestureInputEventListener_Access;
   procedure onEvent (This : in out NoCompleteMotionGestureInputEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onCompleteMotionGestureInputEvent (This : in out NoCompleteMotionGestureInputEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class);
   function getInstance return NoCompleteMotionGestureInputEventListener_Access;

end org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;


