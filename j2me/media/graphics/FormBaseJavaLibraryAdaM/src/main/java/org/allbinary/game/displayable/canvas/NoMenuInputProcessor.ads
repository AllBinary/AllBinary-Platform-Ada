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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type NoMenuInputProcessor is tagged;
   type NoMenuInputProcessor_Access is access all NoMenuInputProcessor'Class;
   type NoMenuInputProcessor_Access_Array is array (Natural range <>) of NoMenuInputProcessor_Access;
   type NoMenuInputProcessor_Access_Array_Access is access all NoMenuInputProcessor_Access_Array;

   type NoMenuInputProcessor is new BasicMenuInputProcessor with null record;
   SINGLETON : NoMenuInputProcessor_Access;

   procedure Initialize (This : in out NoMenuInputProcessor'Class);
   function Create return NoMenuInputProcessor_Access;
   function getInstance return NoMenuInputProcessor_Access;
   procedure onDownGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpGameKeyEvent (This : in out NoMenuInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onMotionGestureEvent (This : in out NoMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;


