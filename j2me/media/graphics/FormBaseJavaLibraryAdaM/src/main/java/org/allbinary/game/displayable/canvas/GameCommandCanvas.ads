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
with org.allbinary.game.displayable.RepaintBehavior_Package; use org.allbinary.game.displayable.RepaintBehavior_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;

package org.allbinary.game.displayable.canvas.GameCommandCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Processor_Package renames Standard.org.allbinary.canvas.Processor_Package;
   package RepaintBehavior_Package renames Standard.org.allbinary.game.displayable.RepaintBehavior_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GameKeyFactory_Package renames Standard.org.allbinary.game.input.GameKeyFactory_Package;
   package DownGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package UpGameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package DisplayChangeEventListener_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package PaintableForm_Package renames Standard.org.allbinary.graphics.form.PaintableForm_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;

   type GameCommandCanvas is tagged;
   type GameCommandCanvas_Access is access all GameCommandCanvas'Class;
   type GameCommandCanvas_Access_Array is array (Natural range <>) of GameCommandCanvas_Access;
   type GameCommandCanvas_Access_Array_Access is access all GameCommandCanvas_Access_Array;
   type GameCommandCanvas_Access_Array_Access_Array is array (Natural range <>) of GameCommandCanvas_Access_Array_Access;
   type GameCommandCanvas_Access_Array_Access_Array_Access is access all GameCommandCanvas_Access_Array_Access_Array;

   type GameCommandCanvas is new MyCanvas and MenuListener and DisplayChangeEventListener and UpdateMyFontInterface with record
      repaintProcessor : Processor_Access;
      gameInputStrings : GameInputStrings_Access;
      foregroundBasicColor : BasicColor_Access;
      backgroundBasicColor : BasicColor_Access;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameKeyFactory : GameKeyFactory_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      downGameKeyEventHandler : DownGameKeyEventHandler_Access;
      upGameKeyEventHandler : UpGameKeyEventHandler_Access;
      repaintBehavior : RepaintBehavior_Access;
      updateMyFontProcessor : MyFontProcessor_Access;
      myFontProcessor : MyFontProcessor_Access;
      foregroundColor : Integer;
      backgroundColor : Integer;
      menuInputProcessor : BasicMenuInputProcessor_Access;
      menuPaintable : Paintable_Access;
      menuForm : PaintableForm_Access;
      isSingleKeyRepeatableProcessing : Boolean;
      fontHeight : Integer;
   end record;
   id : Integer;

   procedure Initialize (This : in out GameCommandCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameCommandCanvas_Access;
   procedure updateMeasurement (This : in out GameCommandCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure onEvent (This : in out GameCommandCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onDisplayChangeEvent (This : in out GameCommandCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   procedure initCommands (This : in out GameCommandCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure initMenu (This : in out GameCommandCanvas);
   function createForm (This : in out GameCommandCanvas) return ScrollSelectionForm_Access;
   function createRectangle (This : in out GameCommandCanvas; size : Integer) return Rectangle_Access;
   procedure createRectangle (This : in out GameCommandCanvas; size : Integer);
   procedure open (This : in out GameCommandCanvas);
   procedure close (This : in out GameCommandCanvas);
   procedure update (This : in out GameCommandCanvas);
   function getSourceId (This : in out GameCommandCanvas) return Integer;
   procedure keyPressed (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyReleased (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyRepeated (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyPressedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyRepeatedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure addGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure removeGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure paint (This : in out GameCommandCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure setMenuInputProcessor (This : in out GameCommandCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class);
   function getMenuInputProcessor (This : in out GameCommandCanvas) return BasicMenuInputProcessor_Access;

end org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;


