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
--  with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package; use org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package; use org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package is

   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package CommandCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package MotionGestureEvent_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PrimaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type CommandFormInputProcessor is tagged;
   type CommandFormInputProcessor_Access is access all CommandFormInputProcessor'Class;
   type CommandFormInputProcessor_Access_Array is array (Natural range <>) of CommandFormInputProcessor_Access;
   type CommandFormInputProcessor_Access_Array_Access is access all CommandFormInputProcessor_Access_Array;

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

   procedure Initialize (This : in out CommandFormInputProcessor'Class; gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCanvas : MyCanvas_Access; form : ScrollSelectionForm_Access);
   function Create (gameKeyEventList : BasicArrayList_Access; playerInputId : Integer; gameCanvas : MyCanvas_Access; form : ScrollSelectionForm_Access) return CommandFormInputProcessor_Access;
   function processInput (This : in out CommandFormInputProcessor; key : Integer) return Integer;
   procedure processInput (This : in out CommandFormInputProcessor; key : Integer);
   function processCommand (This : in out CommandFormInputProcessor) return Integer;
   procedure processCommand (This : in out CommandFormInputProcessor);
   function processInputList (This : in out CommandFormInputProcessor) return Integer;
   procedure processInputList (This : in out CommandFormInputProcessor);
   function processMotionInputs (This : in out CommandFormInputProcessor) return Integer;
   procedure processMotionInputs (This : in out CommandFormInputProcessor);
   procedure processMotionInput (This : in out CommandFormInputProcessor; motionGestureEvent : MotionGestureEvent_Access);
   function toString (This : in out CommandFormInputProcessor) return Unbounded_String;
   procedure toString (This : in out CommandFormInputProcessor);

end org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;


