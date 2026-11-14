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
limited with org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References is
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package.DiagonalUpRightTouchInputToGameKeyEventAction'Class;
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array is array (Natural range <>) of DiagonalUpRightTouchInputToGameKeyEventAction_Access;
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access is access all DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array;
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access;
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access;
   end record;
   function Java_Box (Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access is (if Value /= null and then Value.all in DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Object'Class then DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Object'Class (Value.all).Value else null);
   type DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class then DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DiagonalUpRightTouchInputToGameKeyEventAction_Access is org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.DiagonalUpRightTouchInputToGameKeyEventAction_Access;
   function "=" (Left, Right : DiagonalUpRightTouchInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array (Value : access Java_Object'Class) return DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array;
   subtype DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References."=";
   subtype DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array (Value : access Java_Object'Class) return DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access renames org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package_References.Java_Unbox_DiagonalUpRightTouchInputToGameKeyEventAction_Access_Array_Access_Array;

   type DiagonalUpRightTouchInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out DiagonalUpRightTouchInputToGameKeyEventAction'Class);
   function Create return DiagonalUpRightTouchInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;


