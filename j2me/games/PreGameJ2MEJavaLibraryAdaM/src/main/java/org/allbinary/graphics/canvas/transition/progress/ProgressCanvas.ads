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
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package; use org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;

package org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package ABCustomGaugeItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryMidlet_Package renames Standard.org.allbinary.midlet.AllBinaryMidlet_Package;

   type ProgressCanvas is tagged;
   type ProgressCanvas_Access is access all ProgressCanvas'Class;
   type ProgressCanvas_Access_Array is array (Natural range <>) of ProgressCanvas_Access;
   type ProgressCanvas_Access_Array_Access is access all ProgressCanvas_Access_Array;
   type ProgressCanvas_Access_Array_Access_Array is array (Natural range <>) of ProgressCanvas_Access_Array_Access;
   type ProgressCanvas_Access_Array_Access_Array_Access is access all ProgressCanvas_Access_Array_Access_Array;

   type ProgressCanvas is new RunnableCanvas and PaintableInterface and UpdateMyFontInterface with record
      hasPainted : Boolean;
      backgroundBasicColor : BasicColor_Access;
      GAUGE_PAINTABLE : Paintable_Access;
      maxValue : Float;
      gauge : ABCustomGaugeItem_Access;
      TEXT : Unbounded_String;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      allbinaryMidlet : AllBinaryMidlet_Access;
      value : Float;
      text_Case : Unbounded_String;
      background : Boolean;
      paintable : PaintableInterface_Access;
      inProgress : Boolean;
      IN_GAME_PROCESSOR : Processor_Access;
      inGameProcessor : Processor_Access;
      progressEndListener : ProgressEndListener_Access;
      backgroundLabel : Unbounded_String;
      START_BACKGROUND : Unbounded_String;
      ADD_PORTION : Unbounded_String;
      ADD_EARLY_PORTION : Unbounded_String;
   end record;

   procedure Initialize (This : in out ProgressCanvas'Class; title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (title : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return ProgressCanvas_Access;
   procedure updateMeasurement (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure init (This : in out ProgressCanvas; gameMidlet_Param : access AllBinaryMidlet_Package.AllBinaryMidlet'Class);
   procedure update (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure initCommands (This : in out ProgressCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   function getMaxValue (This : in out ProgressCanvas) return Float;
   procedure start (This : in out ProgressCanvas);
   procedure startBackground (This : in out ProgressCanvas; background : Boolean);
   procedure endActual (This : in out ProgressCanvas);
   procedure inGame (This : in out ProgressCanvas);
   procedure end_Id (This : in out ProgressCanvas);
   procedure endFromInitialLazyLoadingComplete (This : in out ProgressCanvas);
   function isInGame (This : in out ProgressCanvas) return Boolean;
   procedure endIfPaintedSinceStart (This : in out ProgressCanvas);
   procedure addEarlyPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer);
   procedure addPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String; index : Integer);
   procedure addNormalPortion (This : in out ProgressCanvas; value : Integer; text : Unbounded_String);
   procedure setValue (This : in out ProgressCanvas; value : Integer);
   procedure paint (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paint2 (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out ProgressCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   function getValue (This : in out ProgressCanvas) return Float;
   procedure setText (This : in out ProgressCanvas; text : Unbounded_String);
   function getText (This : in out ProgressCanvas) return Unbounded_String;
   procedure setBackground (This : in out ProgressCanvas; background : Boolean);
   function isBackground (This : in out ProgressCanvas) return Boolean;

end org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.item.ABCustomGaugeItem_Package; use org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.midlet.AllBinaryMidlet_Package; use org.allbinary.midlet.AllBinaryMidlet_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressEndListener_Package;

package org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package ABCustomGaugeItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomGaugeItem_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package AllBinaryMidlet_Package renames Standard.org.allbinary.midlet.AllBinaryMidlet_Package;

   type ProgressPaintable is tagged;
   type ProgressPaintable_Access is access all ProgressPaintable'Class;
   type ProgressPaintable_Access_Array is array (Natural range <>) of ProgressPaintable_Access;
   type ProgressPaintable_Access_Array_Access is access all ProgressPaintable_Access_Array;
   type ProgressPaintable_Access_Array_Access_Array is array (Natural range <>) of ProgressPaintable_Access_Array_Access;
   type ProgressPaintable_Access_Array_Access_Array_Access is access all ProgressPaintable_Access_Array_Access_Array;

   type ProgressPaintable is new Paintable with record
      progressCanvas_Var : ProgressCanvas_Access;
   end record;

   procedure Initialize (This : in out ProgressPaintable'Class; progressCanvas_Var_Param : access ProgressCanvas_Package.ProgressCanvas'Class);
   function Create (progressCanvas_Var_Param : access ProgressCanvas_Package.ProgressCanvas'Class) return ProgressPaintable_Access;
   procedure paint (This : in out ProgressPaintable; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.graphics.canvas.transition.progress.ProgressPaintable_Package;


