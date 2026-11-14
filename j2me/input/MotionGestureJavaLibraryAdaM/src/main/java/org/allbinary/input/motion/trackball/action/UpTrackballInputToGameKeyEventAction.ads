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
limited with org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References is
   type UpTrackballInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package.UpTrackballInputToGameKeyEventAction'Class;
   type UpTrackballInputToGameKeyEventAction_Access_Array is array (Natural range <>) of UpTrackballInputToGameKeyEventAction_Access;
   type UpTrackballInputToGameKeyEventAction_Access_Array_Access is access all UpTrackballInputToGameKeyEventAction_Access_Array;
   type UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of UpTrackballInputToGameKeyEventAction_Access_Array_Access;
   type UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array;
   type UpTrackballInputToGameKeyEventAction_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access;
   end record;
   function Java_Box (Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpTrackballInputToGameKeyEventAction_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpTrackballInputToGameKeyEventAction_Access_Array_Access is (if Value /= null and then Value.all in UpTrackballInputToGameKeyEventAction_Access_Array_Object'Class then UpTrackballInputToGameKeyEventAction_Access_Array_Object'Class (Value.all).Value else null);
   type UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class then UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype UpTrackballInputToGameKeyEventAction_Access is org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.UpTrackballInputToGameKeyEventAction_Access;
   function "=" (Left, Right : UpTrackballInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References."=";
   subtype UpTrackballInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.UpTrackballInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : UpTrackballInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References."=";
   subtype UpTrackballInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.UpTrackballInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : UpTrackballInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array (Value : access Java_Object'Class) return UpTrackballInputToGameKeyEventAction_Access_Array_Access renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array;
   subtype UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References."=";
   subtype UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References."=";
   function Java_Box (Value : UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.Java_Box;
   function Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array (Value : access Java_Object'Class) return UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access renames org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package_References.Java_Unbox_UpTrackballInputToGameKeyEventAction_Access_Array_Access_Array;

   type UpTrackballInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out UpTrackballInputToGameKeyEventAction'Class);
   function Create return UpTrackballInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;


