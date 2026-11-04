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

limited with org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;
package org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References is
   type NoMenuInputProcessor_Access is access all org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package.NoMenuInputProcessor'Class;
   type NoMenuInputProcessor_Access_Array is array (Natural range <>) of NoMenuInputProcessor_Access;
   type NoMenuInputProcessor_Access_Array_Access is access all NoMenuInputProcessor_Access_Array;
   type NoMenuInputProcessor_Access_Array_Access_Array is array (Natural range <>) of NoMenuInputProcessor_Access_Array_Access;
   type NoMenuInputProcessor_Access_Array_Access_Array_Access is access all NoMenuInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package Reference_Types is
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
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   use type MotionGestureEvent_Access;
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   use type MotionGestureEvent_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access;
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   use type MotionGestureEvent_Access_Array_Access_Array;
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   use type MotionGestureEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoMenuInputProcessor_Access is org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References.NoMenuInputProcessor_Access;
   function "=" (Left, Right : NoMenuInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References."=";
   subtype NoMenuInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References.NoMenuInputProcessor_Access_Array;
   function "=" (Left, Right : NoMenuInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References."=";
   subtype NoMenuInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References.NoMenuInputProcessor_Access_Array_Access;
   function "=" (Left, Right : NoMenuInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References."=";
   subtype NoMenuInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References.NoMenuInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : NoMenuInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References."=";
   subtype NoMenuInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References.NoMenuInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoMenuInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package_References."=";

   type NoMenuInputProcessor is new BasicMenuInputProcessor with null record;
   SINGLETON : NoMenuInputProcessor_Access;

   procedure Initialize (This : in out NoMenuInputProcessor'Class);
   function Create return NoMenuInputProcessor_Access;
   function getInstance return NoMenuInputProcessor_Access;
   procedure onDownGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onMotionGestureEvent (This : in out NoMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;


