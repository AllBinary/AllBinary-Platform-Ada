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

limited with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;
package org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References is
   type CommandFormInputProcessor_Access is access all org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package.CommandFormInputProcessor'Class;
   type CommandFormInputProcessor_Access_Array is array (Natural range <>) of CommandFormInputProcessor_Access;
   type CommandFormInputProcessor_Access_Array_Access is access all CommandFormInputProcessor_Access_Array;
   type CommandFormInputProcessor_Access_Array_Access_Array is array (Natural range <>) of CommandFormInputProcessor_Access_Array_Access;
   type CommandFormInputProcessor_Access_Array_Access_Array_Access is access all CommandFormInputProcessor_Access_Array_Access_Array;
end org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References;

with org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
limited with org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
limited with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package is

   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   use type MyCanvas_Access;
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   use type MyCanvas_Access_Array;
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   use type MyCanvas_Access_Array_Access;
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   use type MyCanvas_Access_Array_Access_Array;
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   use type MyCanvas_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype CommandFormInputProcessor_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access_Array is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";
   subtype CommandFormInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References.CommandFormInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandFormInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package_References."=";

   type CommandFormInputProcessor is new BasicMenuInputProcessor with record
      MOTION_GESTURE_SOURCE_ID : Integer;
      CLICK_DELAY : Integer;
      clickTimeHelper : TimeDelayHelper_Access;
      DOUBLE_CLICK_DELAY : Integer;
      doubleClickTimeHelper : TimeDelayHelper_Access;
      isSingleKeyProcessing : Boolean;
      form : ScrollSelectionForm_Access;
      hasPressed : Boolean;
      PROCESS_COMMAND : Unbounded_String;
      NAME_LABEL : Unbounded_String;
   end record;

   procedure Initialize (This : in out CommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return CommandFormInputProcessor_Access;
   function processInput (This : in out CommandFormInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out CommandFormInputProcessor; key : Integer);
   function processCommand (This : in out CommandFormInputProcessor) return Integer;
   function processInputList (This : in out CommandFormInputProcessor) return Integer;
   function processMotionInputs (This : in out CommandFormInputProcessor) return Integer;
   procedure processMotionInput (This : in out CommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class);
   function toString (This : in out CommandFormInputProcessor) return Unbounded_String;

end org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;


