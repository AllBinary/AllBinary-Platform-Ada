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

limited with org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package;
package org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References is
   type DownOrientationInputToGameKeyEventAction_Access is access all org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package.DownOrientationInputToGameKeyEventAction'Class;
   type DownOrientationInputToGameKeyEventAction_Access_Array is array (Natural range <>) of DownOrientationInputToGameKeyEventAction_Access;
   type DownOrientationInputToGameKeyEventAction_Access_Array_Access is access all DownOrientationInputToGameKeyEventAction_Access_Array;
   type DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array is array (Natural range <>) of DownOrientationInputToGameKeyEventAction_Access_Array_Access;
   type DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array_Access is access all DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array;
end org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References;

with org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;

package org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package is

   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype DownOrientationInputToGameKeyEventAction_Access is org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References.DownOrientationInputToGameKeyEventAction_Access;
   function "=" (Left, Right : DownOrientationInputToGameKeyEventAction_Access) return Boolean renames org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References."=";
   subtype DownOrientationInputToGameKeyEventAction_Access_Array is org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References.DownOrientationInputToGameKeyEventAction_Access_Array;
   function "=" (Left, Right : DownOrientationInputToGameKeyEventAction_Access_Array) return Boolean renames org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References."=";
   subtype DownOrientationInputToGameKeyEventAction_Access_Array_Access is org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References.DownOrientationInputToGameKeyEventAction_Access_Array_Access;
   function "=" (Left, Right : DownOrientationInputToGameKeyEventAction_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References."=";
   subtype DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array is org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References.DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array;
   function "=" (Left, Right : DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References."=";
   subtype DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array_Access is org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References.DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DownOrientationInputToGameKeyEventAction_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package_References."=";

   type DownOrientationInputToGameKeyEventAction is new GameKeyCompleteMotionGestureInputEvent with null record;
   instance : Java_Object_Access;

   procedure Initialize (This : in out DownOrientationInputToGameKeyEventAction'Class);
   function Create return DownOrientationInputToGameKeyEventAction_Access;
   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access;

end org.allbinary.input.motion.gyro.action.DownOrientationInputToGameKeyEventAction_Package;


