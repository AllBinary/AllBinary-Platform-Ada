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

limited with org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References is
   type RightTrackballInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package.RightTrackballInputToGameKeyEventAction'Class;
   type RightTrackballInputToGameKeyEventAction_Access_Array is array (Natural range <>) of RightTrackballInputToGameKeyEventAction_Access;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access is access all RightTrackballInputToGameKeyEventAction_Access_Array;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of RightTrackballInputToGameKeyEventAction_Access_Array_Access;
   type RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array;
end org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RightTrackballInputToGameKeyEventAction_Access is org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References.RightTrackballInputToGameKeyEventAction_Access;
   function "=" (Left, Right : RightTrackballInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References."=";
   subtype RightTrackballInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References.RightTrackballInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : RightTrackballInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References."=";
   subtype RightTrackballInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References.RightTrackballInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : RightTrackballInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References."=";
   subtype RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References.RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References."=";
   subtype RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References.RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RightTrackballInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package_References."=";

   type RightTrackballInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out RightTrackballInputToGameKeyEventAction'Class);
   function Create return RightTrackballInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;


