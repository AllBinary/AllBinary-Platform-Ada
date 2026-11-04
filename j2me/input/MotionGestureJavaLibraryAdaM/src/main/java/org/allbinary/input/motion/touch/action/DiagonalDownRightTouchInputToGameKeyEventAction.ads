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

limited with org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References is
   type DiagonalDownRightTouchInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package.DiagonalDownRightTouchInputToGameKeyEventAction'Class;
   type DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array is array (Natural range <>) of DiagonalDownRightTouchInputToGameKeyEventAction_Access;
   type DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access is access all DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array;
   type DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access;
   type DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array;
end org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DiagonalDownRightTouchInputToGameKeyEventAction_Access is org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References.DiagonalDownRightTouchInputToGameKeyEventAction_Access;
   function "=" (Left, Right : DiagonalDownRightTouchInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References.DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References.DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References.DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References.DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DiagonalDownRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package_References."=";

   type DiagonalDownRightTouchInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out DiagonalDownRightTouchInputToGameKeyEventAction'Class);
   function Create return DiagonalDownRightTouchInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;


