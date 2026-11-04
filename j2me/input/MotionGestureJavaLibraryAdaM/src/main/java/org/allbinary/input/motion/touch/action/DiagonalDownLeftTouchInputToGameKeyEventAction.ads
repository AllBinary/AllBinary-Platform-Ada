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

limited with org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References is
   type DiagonalDownLeftTouchInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package.DiagonalDownLeftTouchInputToGameKeyEventAction'Class;
   type DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array is array (Natural range <>) of DiagonalDownLeftTouchInputToGameKeyEventAction_Access;
   type DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access is access all DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array;
   type DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access;
   type DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array;
end org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DiagonalDownLeftTouchInputToGameKeyEventAction_Access is org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References.DiagonalDownLeftTouchInputToGameKeyEventAction_Access;
   function "=" (Left, Right : DiagonalDownLeftTouchInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References.DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References.DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References.DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References.DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DiagonalDownLeftTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package_References."=";

   type DiagonalDownLeftTouchInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out DiagonalDownLeftTouchInputToGameKeyEventAction'Class);
   function Create return DiagonalDownLeftTouchInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;


