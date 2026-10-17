--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;

package org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package is

   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type CompleteMotionGestureInputEventListener is tagged;
   type CompleteMotionGestureInputEventListener_Access is access all CompleteMotionGestureInputEventListener'Class;
   type CompleteMotionGestureInputEventListener_Access_Array is array (Natural range <>) of CompleteMotionGestureInputEventListener_Access;
   type CompleteMotionGestureInputEventListener_Access_Array_Access is access all CompleteMotionGestureInputEventListener_Access_Array;

   type CompleteMotionGestureInputEventListener is new CompleteMotionGestureInputEventListenerInterface with null record;

   procedure Initialize (This : in out CompleteMotionGestureInputEventListener'Class);
   function Create return CompleteMotionGestureInputEventListener_Access;
   procedure onEvent (This : in out CompleteMotionGestureInputEventListener; eventObject : AllBinaryEventObject_Access);
   procedure onCompleteMotionGestureInputEvent (This : in out CompleteMotionGestureInputEventListener; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access);

end org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;


