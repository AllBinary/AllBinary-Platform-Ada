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
--  with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.canvas.Processor_Package; use org.allbinary.canvas.Processor_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.displayable.RepaintBehavior_Package; use org.allbinary.game.displayable.RepaintBehavior_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.GameKeyFactory_Package; use org.allbinary.game.input.GameKeyFactory_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package; use org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package; use org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package; use org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;
with org.allbinary.graphics.form.FormPaintable_Package; use org.allbinary.graphics.form.FormPaintable_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package; use org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package; use org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package; use org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;

package org.allbinary.game.displayable.canvas.GameCommandCanvas_Package is

   package Processor_Package renames org.allbinary.canvas.Processor_Package;
   package GameCommandsFactory_Package renames org.allbinary.game.commands.GameCommandsFactory_Package;
   package Features_Package renames org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package RepaintBehavior_Package renames org.allbinary.game.displayable.RepaintBehavior_Package;
   package GameInputStrings_Package renames org.allbinary.game.input.GameInputStrings_Package;
   package GameKey_Package renames org.allbinary.game.input.GameKey_Package;
   package GameKeyFactory_Package renames org.allbinary.game.input.GameKeyFactory_Package;
   package PlatformInputMappingFactory_Package renames org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package DownGameKeyEventHandler_Package renames org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
   package GameKeyEvent_Package renames org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package GameKeyEventHandler_Package renames org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package UpGameKeyEventHandler_Package renames org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
   package InputToGameKeyMapping_Package renames org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package PointFactory_Package renames org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package CanvasStrings_Package renames org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package MyCanvas_Package renames org.allbinary.graphics.displayable.MyCanvas_Package;
   package DisplayChangeEvent_Package renames org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package DisplayChangeEventHandler_Package renames org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package DisplayChangeEventListener_Package renames org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package ScreenRepaintProcessorFactory_Package renames org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;
   package MyFontProcessor_Package renames org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package CommandCurrentSelectionFormFactory_Package renames org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;
   package FormPaintable_Package renames org.allbinary.graphics.form.FormPaintable_Package;
   package FormTypeFactory_Package renames org.allbinary.graphics.form.FormTypeFactory_Package;
   package PaintableForm_Package renames org.allbinary.graphics.form.PaintableForm_Package;
   package ScrollSelectionForm_Package renames org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package ScrollSelectionFormNoneFactory_Package renames org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
   package CommandTextItemArrayFactory_Package renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package AllCommandsVisitor_Package renames org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;
   package NullPaintable_Package renames org.allbinary.graphics.paint.NullPaintable_Package;
   package Paintable_Package renames org.allbinary.graphics.paint.Paintable_Package;
   package BasicMotionGesturesHandler_Package renames org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package CommonSeps_Package renames org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;

   type GameCommandCanvas is tagged;
   type GameCommandCanvas_Access is access all GameCommandCanvas'Class;
   type GameCommandCanvas_Access_Array is array (Natural range <>) of GameCommandCanvas_Access;
   type GameCommandCanvas_Access_Array_Access is access all GameCommandCanvas_Access_Array;

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

   procedure Initialize (This : in out GameCommandCanvas'Class; cmdListener : CommandListener_Access; name : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access);
   function Create (cmdListener : CommandListener_Access; name : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return GameCommandCanvas_Access;
   procedure updateMeasurement (This : in out GameCommandCanvas; graphics : Graphics_Access);
   procedure onEvent (This : in out GameCommandCanvas; eventObject : AllBinaryEventObject_Access);
   procedure onDisplayChangeEvent (This : in out GameCommandCanvas; displayChangeEvent : DisplayChangeEvent_Access);
   procedure initCommands (This : in out GameCommandCanvas; cmdListener : CommandListener_Access);
   procedure initMenu (This : in out GameCommandCanvas);
   function createForm (This : in out GameCommandCanvas) return ScrollSelectionForm_Access;
   procedure createForm (This : in out GameCommandCanvas);
   function createRectangle (This : in out GameCommandCanvas; size : Integer) return Rectangle_Access;
   procedure createRectangle (This : in out GameCommandCanvas; size : Integer);
   procedure open (This : in out GameCommandCanvas);
   procedure close (This : in out GameCommandCanvas);
   procedure update (This : in out GameCommandCanvas);
   function getSourceId (This : in out GameCommandCanvas) return Integer;
   procedure getSourceId (This : in out GameCommandCanvas);
   procedure keyPressed (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyReleased (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyRepeated (This : in out GameCommandCanvas; keyCode : Integer);
   procedure keyPressedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyRepeatedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer);
   procedure addGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure removeGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean);
   procedure paint (This : in out GameCommandCanvas; graphics : Graphics_Access);
   procedure setMenuInputProcessor (This : in out GameCommandCanvas; menuInputProcessor : BasicMenuInputProcessor_Access);
   function getMenuInputProcessor (This : in out GameCommandCanvas) return BasicMenuInputProcessor_Access;
   procedure getMenuInputProcessor (This : in out GameCommandCanvas);

end org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;


