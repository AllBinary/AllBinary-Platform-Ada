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
limited with org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References is
   type ReleaseTouchInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package.ReleaseTouchInputToGameKeyEventAction'Class;
   type ReleaseTouchInputToGameKeyEventAction_Access_Array is array (Natural range <>) of ReleaseTouchInputToGameKeyEventAction_Access;
   type ReleaseTouchInputToGameKeyEventAction_Access_Array_Access is access all ReleaseTouchInputToGameKeyEventAction_Access_Array;
   type ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of ReleaseTouchInputToGameKeyEventAction_Access_Array_Access;
   type ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   type ReleaseTouchInputToGameKeyEventAction_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access;
   end record;
   function Java_Box (Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ReleaseTouchInputToGameKeyEventAction_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ReleaseTouchInputToGameKeyEventAction_Access_Array_Access is (if Value /= null and then Value.all in ReleaseTouchInputToGameKeyEventAction_Access_Array_Object'Class then ReleaseTouchInputToGameKeyEventAction_Access_Array_Object'Class (Value.all).Value else null);
   type ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class then ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKey_Package_References;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package is

   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   subtype GameKey_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access;
   use type GameKey_Access;
   subtype GameKey_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array;
   use type GameKey_Access_Array;
   subtype GameKey_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access;
   use type GameKey_Access_Array_Access;
   subtype GameKey_Access_Array_Access_Array is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array;
   use type GameKey_Access_Array_Access_Array;
   subtype GameKey_Access_Array_Access_Array_Access is org.allbinary.game.input.GameKey_Package_References.GameKey_Access_Array_Access_Array_Access;
   use type GameKey_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ReleaseTouchInputToGameKeyEventAction_Access is org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.ReleaseTouchInputToGameKeyEventAction_Access;
   function "=" (Left, Right : ReleaseTouchInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References."=";
   subtype ReleaseTouchInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.ReleaseTouchInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : ReleaseTouchInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References."=";
   subtype ReleaseTouchInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.ReleaseTouchInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array (Value : access Java_Object'Class) return ReleaseTouchInputToGameKeyEventAction_Access_Array_Access renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array;
   subtype ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References."=";
   subtype ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array (Value : access Java_Object'Class) return ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array_Access renames org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package_References.Java_Unbox_ReleaseTouchInputToGameKeyEventAction_Access_Array_Access_Array;

   type ReleaseTouchInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with record
      NONE : GameKey_Access;
   end record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out ReleaseTouchInputToGameKeyEventAction'Class);
   function Create return ReleaseTouchInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;
   procedure update (This : in out ReleaseTouchInputToGameKeyEventAction);

end org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;


