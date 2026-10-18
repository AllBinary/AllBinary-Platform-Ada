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
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.math.RectangleCollisionUtil_Package; use org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package is

   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package RectangleCollisionUtil_Package renames Standard.org.allbinary.math.RectangleCollisionUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PopupMenuInputProcessor is tagged;
   type PopupMenuInputProcessor_Access is access all PopupMenuInputProcessor'Class;
   type PopupMenuInputProcessor_Access_Array is array (Natural range <>) of PopupMenuInputProcessor_Access;
   type PopupMenuInputProcessor_Access_Array_Access is access all PopupMenuInputProcessor_Access_Array;
   type PopupMenuInputProcessor_Access_Array_Access_Array is array (Natural range <>) of PopupMenuInputProcessor_Access_Array_Access;
   type PopupMenuInputProcessor_Access_Array_Access_Array_Access is access all PopupMenuInputProcessor_Access_Array_Access_Array;

   type PopupMenuInputProcessor is new BasicMenuInputProcessor with record
      rectangleCollisionUtil : RectangleCollisionUtil_Access;
      CLICK_DELAY : Integer;
      clickTimeHelper : TimeDelayHelper_Access;
      rectangle : Rectangle_Access;
   end record;

   procedure Initialize (This : in out PopupMenuInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return PopupMenuInputProcessor_Access;
   procedure init (This : in out PopupMenuInputProcessor; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function processInput (This : in out PopupMenuInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out PopupMenuInputProcessor; key : Integer);
   function processInputList (This : in out PopupMenuInputProcessor) return Integer;
   function processMotionInputs (This : in out PopupMenuInputProcessor) return Integer;
   procedure processMotionInput (This : in out PopupMenuInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.PopupMenuInputProcessor_Package;


