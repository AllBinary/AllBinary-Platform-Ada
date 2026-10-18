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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package; use javax.microedition.lcdui.CommandListener_Package;
with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.canvas.FullScreenUtil_Package; use org.allbinary.canvas.FullScreenUtil_Package;
with org.allbinary.debug.DebugInterface_Package; use org.allbinary.debug.DebugInterface_Package;
with org.allbinary.game.GameStrings_Package; use org.allbinary.game.GameStrings_Package;
with org.allbinary.game.configuration.LoadGameForm_Package; use org.allbinary.game.configuration.LoadGameForm_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.paint.help.HelpPaintable_Package; use org.allbinary.game.paint.help.HelpPaintable_Package;
with org.allbinary.game.score.displayable.HighScoresCanvas_Package; use org.allbinary.game.score.displayable.HighScoresCanvas_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package; use org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package; use org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package; use org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.midlet.MidletStrings_Package; use org.allbinary.midlet.MidletStrings_Package;
with org.allbinary.midlet.ProgressMidlet_Package; use org.allbinary.midlet.ProgressMidlet_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.EnumerationUtil_Package; use org.allbinary.util.EnumerationUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.midlet.GameMidletStateFactory_Package; use org.allbinary.game.midlet.GameMidletStateFactory_Package;

package org.allbinary.game.midlet.GameMidlet_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Displayable_Package renames Standard.javax.microedition.lcdui.Displayable_Package;
   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package FullScreenUtil_Package renames Standard.org.allbinary.canvas.FullScreenUtil_Package;
   package DebugInterface_Package renames Standard.org.allbinary.debug.DebugInterface_Package;
   package GameStrings_Package renames Standard.org.allbinary.game.GameStrings_Package;
   package LoadGameForm_Package renames Standard.org.allbinary.game.configuration.LoadGameForm_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameCanvasRunnableInterface_Package renames Standard.org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package HelpPaintable_Package renames Standard.org.allbinary.game.paint.help.HelpPaintable_Package;
   package HighScoresCanvas_Package renames Standard.org.allbinary.game.score.displayable.HighScoresCanvas_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyCanvas_Package renames Standard.org.allbinary.graphics.displayable.MyCanvas_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package AboutCommandProcessor_Package renames Standard.org.allbinary.graphics.displayable.screen.AboutCommandProcessor_Package;
   package CommandForm_Package renames Standard.org.allbinary.graphics.displayable.screen.CommandForm_Package;
   package WebCommandProcessor_Package renames Standard.org.allbinary.graphics.displayable.screen.WebCommandProcessor_Package;
   package ClientInformationFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package MidletStrings_Package renames Standard.org.allbinary.midlet.MidletStrings_Package;
   package ProgressMidlet_Package renames Standard.org.allbinary.midlet.ProgressMidlet_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package EnumerationUtil_Package renames Standard.org.allbinary.util.EnumerationUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type GameMidlet is tagged;
   type GameMidlet_Access is access all GameMidlet'Class;
   type GameMidlet_Access_Array is array (Natural range <>) of GameMidlet_Access;
   type GameMidlet_Access_Array_Access is access all GameMidlet_Access_Array;
   type GameMidlet_Access_Array_Access_Array is array (Natural range <>) of GameMidlet_Access_Array_Access;
   type GameMidlet_Access_Array_Access_Array_Access is access all GameMidlet_Access_Array_Access_Array;

   type GameMidlet is new ProgressMidlet and CommandListener with record
      enumerationUtil : EnumerationUtil_Access;
      basicColorFactory : BasicColorFactory_Access;
      features : Features_Access;
      midletStrings : MidletStrings_Access;
      myCommandsFactory : MyCommandsFactory_Access;
      gameStrings : GameStrings_Access;
      gameAdStateFactory : GameAdStateFactory_Access;
      gameStateFactory : GameStateFactory_Access;
      tsUtil : TsUtil_Access;
      DISPLAYABLE : Unbounded_String;
      COMMAND_NAME : Unbounded_String;
      NO_COMMAND : Unbounded_String;
      NO_DISPLAYABLE : Unbounded_String;
      COMMAND_ACTION : Unbounded_String;
      PAUSE_APP_BACKGROUND : Unbounded_String;
      UN_PAUSE_APP_BACKGROUND : Unbounded_String;
      aboutCommandProcessor : AboutCommandProcessor_Access;
      webCommandProcessor : WebCommandProcessor_Access;
      gameMidletStateFactory : GameMidletStateFactory_Access;
      gameStartTimeHelper : TimeDelayHelper_Access;
      fullScreenUtil : FullScreenUtil_Access;
      debugInterface : DebugInterface_Access;
      allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
      thread : Thread_Access;
      loadGameForm : CommandForm_Access;
      isFullScreen : Boolean;
      resized : Boolean;
      startedBefore : Boolean;
   end record;

   procedure Initialize (This : in out GameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class);
   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return GameMidlet_Access;
   procedure init (This : in out GameMidlet);
   procedure setDemo (This : in out GameMidlet);
   procedure createGame (This : in out GameMidlet);
   procedure mediaShutdown (This : in out GameMidlet);
   procedure stopAll (This : in out GameMidlet);
   procedure pauseApp (This : in out GameMidlet);
   procedure pauseAppBackground (This : in out GameMidlet; background : Boolean);
   procedure unPauseApp (This : in out GameMidlet);
   procedure unPauseAppBackground (This : in out GameMidlet; background : Boolean);
   procedure destroyAppInRunnable (This : in out GameMidlet; unconditional : Boolean; isProgress : Boolean);
   procedure destroyApp (This : in out GameMidlet; unconditional : Boolean);
   procedure startApp (This : in out GameMidlet);
   procedure commandAction (This : in out GameMidlet; command_Param : access Command_Package.Command'Class; displayable_Param : access Displayable_Package.Displayable'Class);
   procedure updateFullScreen (This : in out GameMidlet);
   procedure onEvent (This : in out GameMidlet; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   function getInputMappingInstructionsCanvas (This : in out GameMidlet) return MyCanvas_Access;
   function getInputMappingCanvas (This : in out GameMidlet) return MyCanvas_Access;
   function getAboutCanvas (This : in out GameMidlet) return MyCanvas_Access;
   function getHelpPaintable (This : in out GameMidlet) return HelpPaintable_Access;
   function createHighScoresCanvas (This : in out GameMidlet) return HighScoresCanvas_Access;
   procedure startGameCanvasRunnableInterface (This : in out GameMidlet);
   procedure stopGameCanvasRunnableInterface (This : in out GameMidlet);
   function getGameCanvasRunnableInterface (This : in out GameMidlet) return GameCanvasRunnableInterface_Access;
   procedure setGameCanvasRunnableInterface (This : in out GameMidlet; gameCanvasRunnableInterface_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class);
   function createGameLayerManager (This : in out GameMidlet) return AllBinaryGameLayerManager_Access;
   function getGameOptionsForm (This : in out GameMidlet) return CommandForm_Access;
   procedure save (This : in out GameMidlet);
   function getCurrentStateHashtable (This : in out GameMidlet) return ABHashtable_Access;
   procedure setLoadGameForm (This : in out GameMidlet; loadGameForm_Param : access LoadGameForm_Package.LoadGameForm'Class);
   function getLoadGameForm (This : in out GameMidlet) return CommandForm_Access;
   procedure setResized (This : in out GameMidlet; resized : Boolean);
   function isResized (This : in out GameMidlet) return Boolean;
   function isDemoLoading (This : in out GameMidlet) return Boolean;

end org.allbinary.game.midlet.GameMidlet_Package;


