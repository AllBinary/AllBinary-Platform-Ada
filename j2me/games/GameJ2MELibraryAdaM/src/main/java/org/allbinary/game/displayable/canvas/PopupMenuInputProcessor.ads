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
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package is

   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PopupMenuInputProcessor is tagged;
   type PopupMenuInputProcessor_Access is access all PopupMenuInputProcessor'Class;
   type PopupMenuInputProcessor_Access_Array is array (Natural range <>) of PopupMenuInputProcessor_Access;
   type PopupMenuInputProcessor_Access_Array_Access is access all PopupMenuInputProcessor_Access_Array;

   type PopupMenuInputProcessor is new BasicMenuInputProcessor with record
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      CLICK_DELAY : Integer;
      clickTimeHelper : TimeDelayHelper_Access;
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out PopupMenuInputProcessor'Class; gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCanvas : MyCanvas_Access; rectangle : Rectangle_Access);
   function Create (gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCanvas : MyCanvas_Access; rectangle : Rectangle_Access) return PopupMenuInputProcessor_Access;
   procedure init (This : in out PopupMenuInputProcessor; rectangle : Rectangle_Access);
   function processInput (This : in out PopupMenuInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out PopupMenuInputProcessor; key : Integer);
   function processInputList (This : in out PopupMenuInputProcessor) return Integer;
   procedure processInputList (This : in out PopupMenuInputProcessor);
   function processMotionInputs (This : in out PopupMenuInputProcessor) return Integer;
   procedure processMotionInputs (This : in out PopupMenuInputProcessor);
   procedure processMotionInput (This : in out PopupMenuInputProcessor; motionGestureEvent : MotionGestureEvent_Access);

end org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;


