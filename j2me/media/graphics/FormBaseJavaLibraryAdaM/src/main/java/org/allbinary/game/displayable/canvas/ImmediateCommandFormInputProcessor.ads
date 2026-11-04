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

limited with org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package;
package org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References is
   type ImmediateCommandFormInputProcessor_Access is access all org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package.ImmediateCommandFormInputProcessor'Class;
   type ImmediateCommandFormInputProcessor_Access_Array is array (Natural range <>) of ImmediateCommandFormInputProcessor_Access;
   type ImmediateCommandFormInputProcessor_Access_Array_Access is access all ImmediateCommandFormInputProcessor_Access_Array;
   type ImmediateCommandFormInputProcessor_Access_Array_Access_Array is array (Natural range <>) of ImmediateCommandFormInputProcessor_Access_Array_Access;
   type ImmediateCommandFormInputProcessor_Access_Array_Access_Array_Access is access all ImmediateCommandFormInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References;
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
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
limited with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;
with org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References;

package org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package is

   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   use type ScrollSelectionForm_Access;
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   use type ScrollSelectionForm_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access;
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   use type ScrollSelectionForm_Access_Array_Access_Array;
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   use type ScrollSelectionForm_Access_Array_Access_Array_Access;
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
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype GameCommandCanvas_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access;
   use type GameCommandCanvas_Access;
   subtype GameCommandCanvas_Access_Array is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array;
   use type GameCommandCanvas_Access_Array;
   subtype GameCommandCanvas_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access;
   use type GameCommandCanvas_Access_Array_Access;
   subtype GameCommandCanvas_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access_Array;
   use type GameCommandCanvas_Access_Array_Access_Array;
   subtype GameCommandCanvas_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.GameCommandCanvas_Package_References.GameCommandCanvas_Access_Array_Access_Array_Access;
   use type GameCommandCanvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImmediateCommandFormInputProcessor_Access is org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References.ImmediateCommandFormInputProcessor_Access;
   function "=" (Left, Right : ImmediateCommandFormInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References."=";
   subtype ImmediateCommandFormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References.ImmediateCommandFormInputProcessor_Access_Array;
   function "=" (Left, Right : ImmediateCommandFormInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References."=";
   subtype ImmediateCommandFormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References.ImmediateCommandFormInputProcessor_Access_Array_Access;
   function "=" (Left, Right : ImmediateCommandFormInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References."=";
   subtype ImmediateCommandFormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References.ImmediateCommandFormInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : ImmediateCommandFormInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References."=";
   subtype ImmediateCommandFormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References.ImmediateCommandFormInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImmediateCommandFormInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package_References."=";

   type ImmediateCommandFormInputProcessor is new CommandFormInputProcessor with record
      timeHelper : TimeDelayHelper_Access;
      gameCommandCanvas : GameCommandCanvas_Access;
   end record;

   procedure Initialize (This : in out ImmediateCommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCommandCanvas_Param : access GameCommandCanvas_Package.GameCommandCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCommandCanvas_Param : access GameCommandCanvas_Package.GameCommandCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return ImmediateCommandFormInputProcessor_Access;
   procedure onPressGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onDownGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onUpGameKeyEvent (This : in out ImmediateCommandFormInputProcessor; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class);
   procedure onMotionGestureEvent (This : in out ImmediateCommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);

end org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package;


