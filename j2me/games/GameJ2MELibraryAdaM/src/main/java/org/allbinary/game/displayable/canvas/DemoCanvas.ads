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
with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.special.SpecialAnimation_Package; use org.allbinary.animation.special.SpecialAnimation_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
with org.allbinary.canvas.BaseGameStatistics_Package; use org.allbinary.canvas.BaseGameStatistics_Package;
with org.allbinary.canvas.FullScreenUtil_Package; use org.allbinary.canvas.FullScreenUtil_Package;
with org.allbinary.canvas.RunnableCanvas_Package; use org.allbinary.canvas.RunnableCanvas_Package;
with org.allbinary.game.init.BasicBuildGameInitializerFactory_Package; use org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
with org.allbinary.game.input.GameInputStrings_Package; use org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package; use org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.score.HighScoresFactoryInterface_Package; use org.allbinary.game.score.HighScoresFactoryInterface_Package;
with org.allbinary.game.score.HighScoresHelperBase_Package; use org.allbinary.game.score.HighScoresHelperBase_Package;
with org.allbinary.game.score.HighScoresPaintable_Package; use org.allbinary.game.score.HighScoresPaintable_Package;
with org.allbinary.game.state.GameState_Package; use org.allbinary.game.state.GameState_Package;
with org.allbinary.game.state.GameStateFactory_Package; use org.allbinary.game.state.GameStateFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.command.MyCommandsFactory_Package; use org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.paint.InitUpdatePaintable_Package; use org.allbinary.graphics.paint.InitUpdatePaintable_Package;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.graphics.paint.StatePaintable_Package; use org.allbinary.graphics.paint.StatePaintable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package; use org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package; use org.allbinary.thread.ThreadFactoryUtil_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package; use org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package; use org.allbinary.game.displayable.canvas.DemoPaintableInterface_Package;
with org.allbinary.game.displayable.canvas.FormUtil_Package; use org.allbinary.game.displayable.canvas.FormUtil_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with java.lang.Thread_Package; use java.lang.Thread_Package;
with org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.BasicMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package; use org.allbinary.game.displayable.canvas.DemoGameStartupRunnable_Package;
with org.allbinary.game.displayable.canvas.GameRunnable_Package; use org.allbinary.game.displayable.canvas.GameRunnable_Package;

package org.allbinary.game.displayable.canvas.DemoCanvas_Package is

   package CommandListener_Package renames Standard.javax.microedition.lcdui.CommandListener_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Item_Package renames Standard.javax.microedition.lcdui.Item_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package SpecialAnimation_Package renames Standard.org.allbinary.animation.special.SpecialAnimation_Package;
   package GameAdStateFactory_Package renames Standard.org.allbinary.business.advertisement.GameAdStateFactory_Package;
   package BaseGameStatistics_Package renames Standard.org.allbinary.canvas.BaseGameStatistics_Package;
   package FullScreenUtil_Package renames Standard.org.allbinary.canvas.FullScreenUtil_Package;
   package RunnableCanvas_Package renames Standard.org.allbinary.canvas.RunnableCanvas_Package;
   package BasicBuildGameInitializerFactory_Package renames Standard.org.allbinary.game.init.BasicBuildGameInitializerFactory_Package;
   package GameInputStrings_Package renames Standard.org.allbinary.game.input.GameInputStrings_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package InputToGameKeyMapping_Package renames Standard.org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package HighScoresFactoryInterface_Package renames Standard.org.allbinary.game.score.HighScoresFactoryInterface_Package;
   package HighScoresHelperBase_Package renames Standard.org.allbinary.game.score.HighScoresHelperBase_Package;
   package HighScoresPaintable_Package renames Standard.org.allbinary.game.score.HighScoresPaintable_Package;
   package GameState_Package renames Standard.org.allbinary.game.state.GameState_Package;
   package GameStateFactory_Package renames Standard.org.allbinary.game.state.GameStateFactory_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyCommandsFactory_Package renames Standard.org.allbinary.graphics.displayable.command.MyCommandsFactory_Package;
   package DisplayChangeEvent_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
   package DisplayChangeEventListener_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventListener_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package InitUpdatePaintable_Package renames Standard.org.allbinary.graphics.paint.InitUpdatePaintable_Package;
   package Paintable_Package renames Standard.org.allbinary.graphics.paint.Paintable_Package;
   package PaintableInterface_Package renames Standard.org.allbinary.graphics.paint.PaintableInterface_Package;
   package StatePaintable_Package renames Standard.org.allbinary.graphics.paint.StatePaintable_Package;
   package AbeClientInformationInterface_Package renames Standard.org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package ThreadFactoryUtil_Package renames Standard.org.allbinary.thread.ThreadFactoryUtil_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package Thread_Package renames Standard.java.lang.Thread_Package;

   type DemoCanvas is tagged;
   type DemoCanvas_Access is access all DemoCanvas'Class;
   type DemoCanvas_Access_Array is array (Natural range <>) of DemoCanvas_Access;
   type DemoCanvas_Access_Array_Access is access all DemoCanvas_Access_Array;
   type DemoCanvas_Access_Array_Access_Array is array (Natural range <>) of DemoCanvas_Access_Array_Access;
   type DemoCanvas_Access_Array_Access_Array_Access is access all DemoCanvas_Access_Array_Access_Array;

   type DemoCanvas is new RunnableCanvas and GameCanvasRunnableInterface and MenuListener and DisplayChangeEventListener and DemoPaintableInterface with record
      basicColorFactory : BasicColorFactory_Access;
      myCommandsFactory : MyCommandsFactory_Access;
      gameAdStateFactory : GameAdStateFactory_Access;
      gameInputStrings : GameInputStrings_Access;
      gameStateFactory : GameStateFactory_Access;
      threadFactoryUtil : ThreadFactoryUtil_Access;
      formUtil : FormUtil_Access;
      fullscreenPaintable : Paintable_Access;
      basicGameDemoPaintable : StatePaintable_Access;
      specialAnimationInterface : SpecialAnimation_Access;
      paintedSpecialAnimationInterface : Animation_Access;
      fullScreenUtil : FullScreenUtil_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      highScoresHelper : HighScoresHelperBase_Access;
      realHighScoresPaintable : HighScoresPaintable_Access;
      highScoresPaintable : Paintable_Access;
      state : Integer;
      canvasThread : Thread_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      basicColor : BasicColor_Access;
      abeClientInformation : AbeClientInformationInterface_Access;
      highScoresFactoryInterface : HighScoresFactoryInterface_Access;
      menuInputProcessor : BasicMenuInputProcessor_Access;
      menuForm : ScrollSelectionForm_Access;
      gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access;
      initialized : Boolean;
      demoGameRunnable : DemoGameStartupRunnable_Access;
      defaultPaintableInterface : Paintable_Access;
      paintableInterface : PaintableInterface_Access;
      overlayPaintable : InitUpdatePaintable_Access;
      progressPaintable : PaintableInterface_Access;
      tempWait : Integer;
      inputToGameKeyMapping : InputToGameKeyMapping_Access;
      gameRunnable : GameRunnable_Access;
      isSingleKeyRepeatableProcessing : Boolean;
      NONE : GameKey_Access;
      gameKeyEventFactory : GameKeyEventFactory_Access;
      lastKeyNotMapped : Integer;
      SET_STATE : Unbounded_String;
      baseGameStatistics : BaseGameStatistics_Access;
   end record;
   id : Integer;
   BOT_GAME_STATS : Unbounded_String;
   TYPE_Id : Integer;

   procedure Initialize (This : in out DemoCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean);
   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean) return DemoCanvas_Access;
   procedure onEvent (This : in out DemoCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onDisplayChangeEvent (This : in out DemoCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class);
   function getCustomCommands (This : in out DemoCanvas) return Java_Object_Access_Array_Access;
   procedure initCommands (This : in out DemoCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class);
   procedure initPostPaint (This : in out DemoCanvas);
   procedure mediaInit (This : in out DemoCanvas);
   procedure itemStateChanged (This : in out DemoCanvas; item_Param : access Item_Package.Item'Class);
   procedure initMenu (This : in out DemoCanvas);
   procedure open (This : in out DemoCanvas);
   procedure close (This : in out DemoCanvas);
   function getSourceId (This : in out DemoCanvas) return Integer;
   procedure keyPressed (This : in out DemoCanvas; keyCode : Integer);
   procedure keyReleased (This : in out DemoCanvas; keyCode : Integer);
   procedure keyRepeated (This : in out DemoCanvas; keyCode : Integer);
   procedure keyPressedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyReleasedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer);
   procedure keyRepeatedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer);
   procedure addGameKeyEvent (This : in out DemoCanvas; keyCode : Integer; repeated : Boolean);
   procedure removeGameKeyEvent (This : in out DemoCanvas; keyCode : Integer; repeated : Boolean);
   procedure pause (This : in out DemoCanvas);
   procedure unPause (This : in out DemoCanvas);
   function isPausable (This : in out DemoCanvas) return Boolean;
   function isGameOver (This : in out DemoCanvas) return Boolean;
   procedure setLoadStateHashtable (This : in out DemoCanvas; hashtable_Param : access ABHashtable_Package.ABHashtable'Class);
   function getLoadStateHashtable (This : in out DemoCanvas) return ABHashtable_Access;
   function getCurrentStateHashtable (This : in out DemoCanvas) return ABHashtable_Access;
   procedure setHighScoreSubmitted (This : in out DemoCanvas; isNotUsed : Boolean);
   procedure paint (This : in out DemoCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out DemoCanvas; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure processGameOver (This : in out DemoCanvas);
   procedure demoStateChange (This : in out DemoCanvas);
   procedure updateDemoState (This : in out DemoCanvas);
   function getNextRandom (This : in out DemoCanvas) return Integer;
   function createGameLayerManager (This : in out DemoCanvas; randomValue : Integer) return AllBinaryGameLayerManager_Access;
   procedure createGameLayerManager (This : in out DemoCanvas; randomValue : Integer);
   function createRunnable (This : in out DemoCanvas; randomLevel : Integer) return GameCanvasRunnableInterface_Access;
   procedure createRunnable (This : in out DemoCanvas; randomLevel : Integer);
   procedure create (This : in out DemoCanvas);
   procedure start (This : in out DemoCanvas);
   procedure preDemoProcess (This : in out DemoCanvas);
   procedure process (This : in out DemoCanvas);
   procedure startDemoGame (This : in out DemoCanvas);
   procedure stopGameDemo (This : in out DemoCanvas);
   procedure showGamePaintable (This : in out DemoCanvas);
   function isReadyForStateChange (This : in out DemoCanvas) return Boolean;
   procedure processGame (This : in out DemoCanvas);
   procedure run (This : in out DemoCanvas);
   procedure run3 (This : in out DemoCanvas);
   procedure setRunning (This : in out DemoCanvas; running : Boolean);
   procedure end_Id (This : in out DemoCanvas);
   procedure setGameState (This : in out DemoCanvas; gameState_Param : access GameState_Package.GameState'Class);
   function getGameState (This : in out DemoCanvas) return GameState_Access;
   function getGameCanvasRunnableInterface (This : in out DemoCanvas) return AllBinaryGameCanvas_Access;
   function isDemoLoading (This : in out DemoCanvas) return Boolean;
   function getState (This : in out DemoCanvas) return Integer;
   procedure setState (This : in out DemoCanvas; state : Integer);
   function isHighScoreSubmitted (This : in out DemoCanvas) return Boolean;
   function getRealHighScoresPaintable (This : in out DemoCanvas) return HighScoresPaintable_Access;
   procedure setSpecialAnimationInterface (This : in out DemoCanvas; specialAnimationInterface_Param : access SpecialAnimation_Package.SpecialAnimation'Class);
   function getSpecialAnimationInterface (This : in out DemoCanvas) return SpecialAnimation_Access;
   procedure setPaintableInterface (This : in out DemoCanvas; paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class);
   function getPaintableInterface (This : in out DemoCanvas) return PaintableInterface_Access;
   procedure setDefaultPaintableInterface (This : in out DemoCanvas; defaultPaintableInterface_Param : access Paintable_Package.Paintable'Class);
   function getDefaultPaintableInterface (This : in out DemoCanvas) return Paintable_Access;
   function getHighScoresFactoryInterface (This : in out DemoCanvas) return HighScoresFactoryInterface_Access;
   procedure setMenuInputProcessor (This : in out DemoCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class);
   function getMenuInputProcessor (This : in out DemoCanvas) return BasicMenuInputProcessor_Access;
   function getMenuForm (This : in out DemoCanvas) return ScrollSelectionForm_Access;
   procedure setMenuForm (This : in out DemoCanvas; menuForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class);
   function isInitialized (This : in out DemoCanvas) return Boolean;
   function getOverlayPaintable (This : in out DemoCanvas) return Paintable_Access;
   procedure setBasicGameDemoPaintable (This : in out DemoCanvas; basicGameDemoPaintable_Param : access StatePaintable_Package.StatePaintable'Class);
   function getBasicGameDemoPaintable (This : in out DemoCanvas) return StatePaintable_Access;
   procedure setTempWait (This : in out DemoCanvas; tempWait : Integer);
   function getTempWait (This : in out DemoCanvas) return Integer;
   function isSingleThread (This : in out DemoCanvas) return Boolean;
   function isRunningInAnotherThread (This : in out DemoCanvas) return Boolean;
   function getGameInitializationInterfaceFactoryInterface (This : in out DemoCanvas) return BasicBuildGameInitializerFactory_Access;
   function getType (This : in out DemoCanvas) return Integer;

end org.allbinary.game.displayable.canvas.DemoCanvas_Package;


