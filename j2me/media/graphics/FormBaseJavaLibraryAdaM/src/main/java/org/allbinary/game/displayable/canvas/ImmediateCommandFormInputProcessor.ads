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
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;

package org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package is

   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package ScrollSelectionForm_Package renames org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package MotionGestureEvent_Package renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package TimeDelayHelper_Package renames org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type ImmediateCommandFormInputProcessor is tagged;
   type ImmediateCommandFormInputProcessor_Access is access all ImmediateCommandFormInputProcessor'Class;
   type ImmediateCommandFormInputProcessor_Access_Array is array (Natural range <>) of ImmediateCommandFormInputProcessor_Access;
   type ImmediateCommandFormInputProcessor_Access_Array_Access is access all ImmediateCommandFormInputProcessor_Access_Array;

   type ImmediateCommandFormInputProcessor is new CommandFormInputProcessor with record
      timeHelper : TimeDelayHelper_Access;
      gameCommandCanvas : GameCommandCanvas_Access;
   end record;

   procedure Initialize (This : in out ImmediateCommandFormInputProcessor'Class; gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCommandCanvas : GameCommandCanvas_Access; form : ScrollSelectionForm_Access);
   function Create (gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCommandCanvas : GameCommandCanvas_Access; form : ScrollSelectionForm_Access) return ImmediateCommandFormInputProcessor_Access;
   procedure onPressGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure onDownGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure onUpGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent : GameKeyEvent_Access);
   procedure onMotionGestureEvent (This : in out ImmediateCommandFormInputProcessor; motionGestureEvent : MotionGestureEvent_Access);

end org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package;


