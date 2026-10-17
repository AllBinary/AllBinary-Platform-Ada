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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.game.input.PlayerGameInput_Package; use org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package; use org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package is

   package PlayerGameInput_Package renames Standard.org.allbinary.game.input.PlayerGameInput_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package BaseMotionGestureEventListener_Package renames Standard.org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicMenuInputProcessor is tagged;
   type BasicMenuInputProcessor_Access is access all BasicMenuInputProcessor'Class;
   type BasicMenuInputProcessor_Access_Array is array (Natural range <>) of BasicMenuInputProcessor_Access;
   type BasicMenuInputProcessor_Access_Array_Access is access all BasicMenuInputProcessor_Access_Array;

   type BasicMenuInputProcessor is new PlayerGameInput and BaseMotionGestureEventListener with record
      motionGestureEventList : BasicArrayList_Access;
      canvas : Canvas_Access;
   end record;

   procedure Initialize (This : in out BasicMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access Canvas_Package.Canvas'Class) return BasicMenuInputProcessor_Access;
   procedure onMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure onScrolledMotionGestureEvent (This : in out BasicMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   procedure setCanvas (This : in out BasicMenuInputProcessor; canvas_Param : access MyCanvas_Package.MyCanvas'Class);
   function getCanvas (This : in out BasicMenuInputProcessor) return MyCanvas_Access;
   function processInputList (This : in out BasicMenuInputProcessor) return Integer;

end org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;


