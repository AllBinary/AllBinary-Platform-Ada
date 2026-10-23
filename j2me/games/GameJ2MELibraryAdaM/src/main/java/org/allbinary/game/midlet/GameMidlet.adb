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


with java.util.Enumeration_Package; use java.util.Enumeration_Package;
with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with javax.microedition.midlet.MIDletStateChangeException_Package; use javax.microedition.midlet.MIDletStateChangeException_Package;
with org.allbinary.J2MEUtil_Package; use org.allbinary.J2MEUtil_Package;
with org.allbinary.canvas.GameStatisticsFactory_Package; use org.allbinary.canvas.GameStatisticsFactory_Package;
with org.allbinary.debug.DebugFactory_Package; use org.allbinary.debug.DebugFactory_Package;
with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameMode_Package; use org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameTypeFactory_Package; use org.allbinary.game.GameTypeFactory_Package;
with org.allbinary.game.PlayerTypesFactory_Package; use org.allbinary.game.PlayerTypesFactory_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.GameOptionsForm_Package; use org.allbinary.game.configuration.GameOptionsForm_Package;
with org.allbinary.game.configuration.GameOptionsFormFactory_Package; use org.allbinary.game.configuration.GameOptionsFormFactory_Package;
with org.allbinary.game.configuration.InGameFeatures_Package; use org.allbinary.game.configuration.InGameFeatures_Package;
with org.allbinary.game.configuration.InGameOptionsForm_Package; use org.allbinary.game.configuration.InGameOptionsForm_Package;
with org.allbinary.game.configuration.InGameOptionsFormFactory_Package; use org.allbinary.game.configuration.InGameOptionsFormFactory_Package;
with org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package; use org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
with org.allbinary.game.configuration.event.GameFeatureEventHandler_Package; use org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
with org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package; use org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
with org.allbinary.game.configuration.feature.MainFeatureFactory_Package; use org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
with org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package; use org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;
with org.allbinary.game.configuration.persistance.KeyValuePersistance_Package; use org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package; use org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
with org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package; use org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;
with org.allbinary.game.displayable.canvas.DemoCanvas_Package; use org.allbinary.game.displayable.canvas.DemoCanvas_Package;
with org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package; use org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
with org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package; use org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
with org.allbinary.game.displayable.canvas.MenuListener_Package; use org.allbinary.game.displayable.canvas.MenuListener_Package;
with org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package; use org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
with org.allbinary.game.input.TextNotificationUtil_Package; use org.allbinary.game.input.TextNotificationUtil_Package;
with org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package; use org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
with org.allbinary.game.score.HighScoreCommands_Package; use org.allbinary.game.score.HighScoreCommands_Package;
with org.allbinary.game.score.HighScoreCommandsFactory_Package; use org.allbinary.game.score.HighScoreCommandsFactory_Package;
with org.allbinary.game.score.displayable.HighScoreTextBox_Package; use org.allbinary.game.score.displayable.HighScoreTextBox_Package;
with org.allbinary.game.score.displayable.HighScoreUtil_Package; use org.allbinary.game.score.displayable.HighScoreUtil_Package;
with org.allbinary.graphics.ResizableListenerHandler_Package; use org.allbinary.graphics.ResizableListenerHandler_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
with org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package; use org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
with org.allbinary.graphics.color.ColorChangeEventHandler_Package; use org.allbinary.graphics.color.ColorChangeEventHandler_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package; use org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;
with org.allbinary.input.AllBinarySensorManager_Package; use org.allbinary.input.AllBinarySensorManager_Package;
with org.allbinary.input.event.VirtualKeyboardEventHandler_Package; use org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package; use org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
with org.allbinary.logic.system.security.licensing.LockableFeature_Package; use org.allbinary.logic.system.security.licensing.LockableFeature_Package;
with org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package; use org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.audio.AllBinaryMediaManager_Package; use org.allbinary.media.audio.AllBinaryMediaManager_Package;
with org.allbinary.thread.NullThread_Package; use org.allbinary.thread.NullThread_Package;
with org.allbinary.thread.ThreadFactoryUtil_Package; use org.allbinary.thread.ThreadFactoryUtil_Package;
with org.allbinary.thread.ThreadUtil_Package; use org.allbinary.thread.ThreadUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.game.midlet.GameMidletEventHandler_Package; use org.allbinary.game.midlet.GameMidletEventHandler_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package; use org.allbinary.game.midlet.DemoGameMidletEvent_Package;
with org.allbinary.game.midlet.DemoGameMidletStateFactory_Package; use org.allbinary.game.midlet.DemoGameMidletStateFactory_Package;

package body org.allbinary.game.midlet.GameMidlet_Package is

   package Enumeration_Package renames Standard.java.util.Enumeration_Package;
   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package NullCanvas_Package renames Standard.javax.microedition.lcdui.NullCanvas_Package;
   package MIDletStateChangeException_Package renames Standard.javax.microedition.midlet.MIDletStateChangeException_Package;
   package J2MEUtil_Package renames Standard.org.allbinary.J2MEUtil_Package;
   package GameStatisticsFactory_Package renames Standard.org.allbinary.canvas.GameStatisticsFactory_Package;
   package DebugFactory_Package renames Standard.org.allbinary.debug.DebugFactory_Package;
   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package GameInfo_Package renames Standard.org.allbinary.game.GameInfo_Package;
   package GameMode_Package renames Standard.org.allbinary.game.GameMode_Package;
   package GameTypeFactory_Package renames Standard.org.allbinary.game.GameTypeFactory_Package;
   package PlayerTypesFactory_Package renames Standard.org.allbinary.game.PlayerTypesFactory_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package GameOptionsForm_Package renames Standard.org.allbinary.game.configuration.GameOptionsForm_Package;
   package GameOptionsFormFactory_Package renames Standard.org.allbinary.game.configuration.GameOptionsFormFactory_Package;
   package InGameFeatures_Package renames Standard.org.allbinary.game.configuration.InGameFeatures_Package;
   package InGameOptionsForm_Package renames Standard.org.allbinary.game.configuration.InGameOptionsForm_Package;
   package InGameOptionsFormFactory_Package renames Standard.org.allbinary.game.configuration.InGameOptionsFormFactory_Package;
   package ChangedGameFeatureListener_Package renames Standard.org.allbinary.game.configuration.event.ChangedGameFeatureListener_Package;
   package GameFeatureEventHandler_Package renames Standard.org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;
   package GameFeatureFormUtil_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFormUtil_Package;
   package MainFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.MainFeatureFactory_Package;
   package GamePersistanceSingleton_Package renames Standard.org.allbinary.game.configuration.persistance.GamePersistanceSingleton_Package;
   package KeyValuePersistance_Package renames Standard.org.allbinary.game.configuration.persistance.KeyValuePersistance_Package;
   package AllBinaryGameCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;
   package BasicPaintablesCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.BasicPaintablesCanvas_Package;
   package DemoCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.DemoCanvas_Package;
   package GameEventHandlerUtil_Package renames Standard.org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;
   package GameInputMappingCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingCanvas_Package;
   package GameInputMappingInstructionsCanvas_Package renames Standard.org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas_Package;
   package MenuListener_Package renames Standard.org.allbinary.game.displayable.canvas.MenuListener_Package;
   package NullGameCanvasRunnable_Package renames Standard.org.allbinary.game.displayable.canvas.NullGameCanvasRunnable_Package;
   package TextNotificationUtil_Package renames Standard.org.allbinary.game.input.TextNotificationUtil_Package;
   package GameNotificationEventHandler_Package renames Standard.org.allbinary.game.layer.hud.event.GameNotificationEventHandler_Package;
   package HighScoreCommands_Package renames Standard.org.allbinary.game.score.HighScoreCommands_Package;
   package HighScoreCommandsFactory_Package renames Standard.org.allbinary.game.score.HighScoreCommandsFactory_Package;
   package HighScoreTextBox_Package renames Standard.org.allbinary.game.score.displayable.HighScoreTextBox_Package;
   package HighScoreUtil_Package renames Standard.org.allbinary.game.score.displayable.HighScoreUtil_Package;
   package ResizableListenerHandler_Package renames Standard.org.allbinary.graphics.ResizableListenerHandler_Package;
   package ProgressCanvas_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvas_Package;
   package ProgressCanvasFactory_Package renames Standard.org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory_Package;
   package ColorChangeEventHandler_Package renames Standard.org.allbinary.graphics.color.ColorChangeEventHandler_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package AboutPaintableFactory_Package renames Standard.org.allbinary.graphics.displayable.screen.AboutPaintableFactory_Package;
   package AllBinarySensorManager_Package renames Standard.org.allbinary.input.AllBinarySensorManager_Package;
   package VirtualKeyboardEventHandler_Package renames Standard.org.allbinary.input.event.VirtualKeyboardEventHandler_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package InApplicationPurchaseFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory_Package;
   package LockableFeature_Package renames Standard.org.allbinary.logic.system.security.licensing.LockableFeature_Package;
   package LockableFeatureFactory_Package renames Standard.org.allbinary.logic.system.security.licensing.LockableFeatureFactory_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package AllBinaryMediaManager_Package renames Standard.org.allbinary.media.audio.AllBinaryMediaManager_Package;
   package NullThread_Package renames Standard.org.allbinary.thread.NullThread_Package;
   package ThreadFactoryUtil_Package renames Standard.org.allbinary.thread.ThreadFactoryUtil_Package;
   package ThreadUtil_Package renames Standard.org.allbinary.thread.ThreadUtil_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out GameMidlet'Class) is
   begin
      null;
      This.enumerationUtil := EnumerationUtil_Package.getInstance;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.midletStrings := MidletStrings_Package.getInstance;
      This.myCommandsFactory := MyCommandsFactory_Package.getInstance;
      This.gameStrings := GameStrings_Package.getInstance;
      This.gameAdStateFactory := GameAdStateFactory_Package.getInstance;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.DISPLAYABLE := To_Unbounded_String (" Displayable: ");
      This.COMMAND_NAME := To_Unbounded_String ("command Name/Label: ");
      This.NO_COMMAND := To_Unbounded_String ("No Command");
      This.NO_DISPLAYABLE := To_Unbounded_String ("No Displayable");
      This.COMMAND_ACTION := StringMaker_Package.Create.append (To_Unbounded_String ("GameMidlet::")).append (This.midletStrings.COMMAND_ACTION).toString;
      This.PAUSE_APP_BACKGROUND := To_Unbounded_String ("pauseAppBackground");
      This.UN_PAUSE_APP_BACKGROUND := To_Unbounded_String ("unPauseAppBackground");
      This.aboutCommandProcessor := AboutCommandProcessor_Package.getInstance;
      This.webCommandProcessor := WebCommandProcessor_Package.getInstance;
      This.gameMidletStateFactory := GameMidletStateFactory_Package.getInstance;
      This.gameStartTimeHelper := TimeDelayHelper_Package.Create (240);
      This.fullScreenUtil := FullScreenUtil_Package.getInstance;
      
      This.allbinaryGameCanvasRunnableInterface := GameCanvasRunnableInterface_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE);
      This.thread := NullThread_Package.NULL_THREAD;
      
      This.isFullScreen := False;
      This.resized := False;
      This.startedBefore := False;
   end Initialize_Fields;


   procedure Initialize (This : in out GameMidlet'Class; clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) is
      clientInformationFactory : constant ClientInformationFactory_Access := ClientInformationFactory_Access (clientInformationFactory_Param);
      progressCanvas : ProgressCanvas_Access;
   begin
        ProgressMidlet_Package.Initialize (This, clientInformationFactory);
        Initialize_Fields (This);
        SmallIntegerSingletonFactory_Package.getInstance.initWithRange (16#291#, 6);
        This.loadGameForm := CommandForm_Package.getNullCommandForm;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.init (GameMidlet_Access'(This'Unchecked_Access));
        GameFeatureEventHandler_Package.getInstance.addListenerInterface (ChangedGameFeatureListener_Package.getInstance);
        GamePersistanceSingleton_Package.getInstance.clear;
        This.debugInterface := DebugInterface_Access (DebugFactory_Package.getInstance);
        GameMidlet'Class (This).init;
   end Initialize;

   function Create (clientInformationFactory_Param : access ClientInformationFactory_Package.ClientInformationFactory'Class) return GameMidlet_Access is
      This : constant GameMidlet_Access := new GameMidlet;
   begin
      GameMidlet_Package.Initialize (This.all, clientInformationFactory_Param);
      return This;
   end Create;

   procedure init (This : in out GameMidlet) is
   begin
        null;
   end init;

   --  throws Exception
   procedure setDemo (This : in out GameMidlet) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end setDemo;

   --  throws Exception
   procedure createGame (This : in out GameMidlet) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end createGame;

   --  throws Exception
   procedure mediaShutdown (This : in out GameMidlet) is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end mediaShutdown;

   procedure stopAll (This : in out GameMidlet) is
   begin
        null;
   end stopAll;

   procedure pauseApp (This : in out GameMidlet) is
      gameAdState : GameAdState_Access;
   begin
        GameMidlet'Class (This).pauseAppBackground (True);
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.getAdvertisements.stopAll;
   end pauseApp;

   procedure pauseAppBackground (This : in out GameMidlet; background : Boolean) is
   begin
        This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), This.PAUSE_APP_BACKGROUND);
        if (Java_Object_Access (This.allbinaryGameCanvasRunnableInterface)) /= (Java_Object_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE)) then
            This.allbinaryGameCanvasRunnableInterface.pause;
        else
            This.logUtil.putF (To_Unbounded_String ("<<<<<< Null"), GameMidlet_Access'(This'Unchecked_Access), This.PAUSE_APP_BACKGROUND);
        end if;
        AllBinarySensorManager_Package.getInstance.shutdown;
   end pauseAppBackground;

   procedure unPauseApp (This : in out GameMidlet) is
      gameAdState : GameAdState_Access;
   begin
        GameMidlet'Class (This).unPauseAppBackground (True);
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.getAdvertisements.startAll;
   end unPauseApp;

   procedure unPauseAppBackground (This : in out GameMidlet; background : Boolean) is
      gameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), This.UN_PAUSE_APP_BACKGROUND);
        AllBinarySensorManager_Package.getInstance.init;
        gameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
        if (Java_Object_Access (gameCanvasRunnableInterface)) /= (Java_Object_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE)) then
            gameCanvasRunnableInterface.unPause;
        else
            This.logUtil.putF (To_Unbounded_String ("<<<<<< Null"), GameMidlet_Access'(This'Unchecked_Access), This.UN_PAUSE_APP_BACKGROUND);
        end if;
   end unPauseAppBackground;

   procedure destroyAppInRunnable (This : in out GameMidlet; unconditional : Boolean; isProgress : Boolean) is
      progressCanvas : ProgressCanvas_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        if isProgress then
            progressCanvas.start;
            GameMidlet'Class (This).commandAction (This.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        end if;
        GameMidlet'Class (This).destroyApp (unconditional);
        if isProgress then
            progressCanvas.end_Id;
        end if;
   end destroyAppInRunnable;

   procedure destroyApp (This : in out GameMidlet; unconditional : Boolean) is
      METHOD_NAME : Unbounded_String;
      gameAdState : GameAdState_Access;
   begin
        METHOD_NAME := To_Unbounded_String ("GameMidlet::destroyApp");
        begin
            PreLogUtil_Package.put (GameStatisticsFactory_Package.getInstance.toString, GameMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
            gameAdState := This.gameAdStateFactory.getCurrentInstance;
            gameAdState.getAdvertisements.stopAll;
            if not (GameMidlet'Class (This).isDestroyed) then
                GameMidlet'Class (This).stopGameCanvasRunnableInterface;
                GameMidlet'Class (This).setGameCanvasRunnableInterface (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE);
                GameMidlet'Class (This).mediaShutdown;
            else
                This.logUtil.putF (To_Unbounded_String ("Midlet Managment Error: Midlet Should Only Be Destroyed Once"), GameMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
            end if;
            ProgressMidlet (This).destroyApp (True);
            PreLogUtil_Package.put (This.commonStrings.END_Id, GameMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameMidlet_Access'(This'Unchecked_Access), METHOD_NAME, e);
                end;
        end;
        This.logUtil.putF (This.commonStrings.END_Id, GameMidlet_Access'(This'Unchecked_Access), METHOD_NAME);
   end destroyApp;

   --  throws MIDletStateChangeException
   procedure startApp (This : in out GameMidlet) is
      gameAdState : GameAdState_Access;
      START_APP : Unbounded_String;
      gameCanvasRunnableInterface : Java_Object_Access;
   begin
        begin
            gameAdState := This.gameAdStateFactory.getCurrentInstance;
            gameAdState.getAdvertisements.startAll;
            START_APP := To_Unbounded_String ("startApp");
            This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), START_APP);
            gameCanvasRunnableInterface := Java_Object_Access (This.allbinaryGameCanvasRunnableInterface);
            if (gameCanvasRunnableInterface) = (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
                This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.NO_GAME_STATE);
                GameMidlet'Class (This).setDemo;
            else
                This.logUtil.putF (To_Unbounded_String ("GameCanvasRunnableInterface is available"), GameMidlet_Access'(This'Unchecked_Access), START_APP);
                if (gameCanvasRunnableInterface) = (GameMidlet'Class (This).getCurrentDisplayable) then
                    GameMidlet'Class (This).unPauseAppBackground (False);
                else
                    This.logUtil.putF (To_Unbounded_String ("GameCanvasRunnableInterface is not current displayable"), GameMidlet_Access'(This'Unchecked_Access), START_APP);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("startApp"), e);
            GameMidlet'Class (This).destroyApp (False);
            GameMidlet'Class (This).notifyDestroyed;
                end;
        end;
   end startApp;

   procedure commandAction (This : in out GameMidlet; command_Param : access Command_Package.Command'Class; displayable_Param : access Displayable_Package.Displayable'Class) is
      command : constant Command_Access := Command_Access (command_Param);
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
      displayableAsString : Unbounded_String;
      label : Unbounded_String;
      gameCommandsFactory : GameCommandsFactory_Access;
      allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
      gameCanvasRunnableInterface : Java_Object_Access;
      mainFeatureFactory : MainFeatureFactory_Access;
      isFullScreen : Boolean;
      virtualKeyboardEventHandler : VirtualKeyboardEventHandler_Access;
      highScoreTextBox : HighScoreTextBox_Access;
      keyValuePersistance : KeyValuePersistance_Access;
      loadGameForm : LoadGameForm_Access;
      index : Integer;
      menuListener : MenuListener_Access;
      layerManager : AllBinaryGameLayerManager_Access;
      stringBuffer : StringMaker_Access;
      inGameOptionsForm : InGameOptionsForm_Access;
      progressCanvas : ProgressCanvas_Access;
      inGameOptionsFormFactory : InGameOptionsFormFactory_Access;
      tempDisplayable : Displayable_Access;
      gameInputMappingCanvas : GameInputMappingCanvas_Access;
      highScoresCanvas : HighScoresCanvas_Access;
      gameCanvas : AllBinaryGameCanvas_Access;
      inApplicationPurchaseFactory : InApplicationPurchaseFactory_Access;
      list : BasicArrayList_Access;
      lockableFeature : LockableFeature_Access;
   begin
        begin
            displayableAsString := This.NO_DISPLAYABLE;
            if (displayable) /= (null) then
                displayableAsString := displayable.toString;
            end if;
            label := This.NO_COMMAND;
            if (command) /= (null) then
                label := command.getLabel;
            end if;
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.COMMAND_NAME).append (label).append (This.DISPLAYABLE).append (displayableAsString).toString, GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
            gameCommandsFactory := GameCommandsFactory_Package.getInstance;
            allbinaryGameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
            gameCanvasRunnableInterface := Java_Object_Access (allbinaryGameCanvasRunnableInterface);
            if (command) = (gameCommandsFactory.SHOW_GAME_CANVAS) then
                if ((GameMidlet'Class (This).getDisplay.getCurrent) /= (gameCanvasRunnableInterface)) and then ((allbinaryGameCanvasRunnableInterface.getType) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE.getType)) then
                    GameMidlet'Class (This).setDisplay (Displayable_Access (gameCanvasRunnableInterface));
                end if;
                GameMidlet'Class (This).unPauseAppBackground (False);
            elsif (command) = (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) then
                menuListener := MenuListener_Access (displayable);
                menuListener.close;
                GameMidlet'Class (This).setDisplay (Displayable_Access (gameCanvasRunnableInterface));
                GameMidlet'Class (This).unPauseAppBackground (False);
            elsif (command) = (gameCommandsFactory.EXIT_COMMAND) then
                if (GameMidletEventHandler_Package.getInstance.getEventListenerInterfaceListP.size) = (0) then
                    GameMidlet'Class (This).exitProgress (True);
                end if;
                GameMidletEventHandler_Package.getInstance.fireEvent (DemoGameMidletEvent_Package.Create (GameMidlet_Access'(This'Unchecked_Access), DemoGameMidletStateFactory_Package.getInstance.NONE));
            elsif (command) = (gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) then
                GameMidlet'Class (This).exitProgress (False);
            elsif (((command) = (gameCommandsFactory.START_COMMAND)) or else ((command) = (gameCommandsFactory.RESTART_COMMAND))) or else ((command) = (gameCommandsFactory.CONTINUE_COMMAND)) then
                if ((This.gameMidletStateFactory.getCurrentGameState) /= (This.gameStateFactory.PLAYING_GAME_STATE)) or else ((command) = (gameCommandsFactory.RESTART_COMMAND)) then
                    if This.gameStartTimeHelper.isTimeTNT then
                        if ((command) = (gameCommandsFactory.START_COMMAND)) and then (GameMidlet'Class (This).isDemoLoading) then
                            This.logUtil.putF (To_Unbounded_String ("Trying to Start Game Before Loading Complete"), GameMidlet_Access'(This'Unchecked_Access), This.midletStrings.COMMAND_ACTION);
                        else
                            This.startedBefore := True;
                            GameMidlet'Class (This).createGame;
                            This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.PLAYING_GAME_STATE);
                        end if;
                    else
                        This.logUtil.putF (To_Unbounded_String ("Starting Game Too Often"), GameMidlet_Access'(This'Unchecked_Access), This.midletStrings.COMMAND_ACTION);
                    end if;
                else
                    This.logUtil.putF (To_Unbounded_String ("Already in playing state"), GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
                end if;
            elsif (command) = (gameCommandsFactory.BUY_COMMAND) then
                inApplicationPurchaseFactory := InApplicationPurchaseFactory_Package.getInstance;
                list := LockableFeatureFactory_Package.getInstance.getList;
                lockableFeature := LockableFeature_Access (list.get (0));
                if ((list.size) > (0)) and then (not (inApplicationPurchaseFactory.isPurchased (lockableFeature))) then
                    inApplicationPurchaseFactory.purchase (lockableFeature);
                else
                    TextNotificationUtil_Package.getInstance.fireSuccess (To_Unbounded_String ("Already Purchased"));
                end if;
            elsif (command) = (gameCommandsFactory.QUIT_COMMAND) then
                if This.gameStartTimeHelper.isTimeTNT then
                    if (displayable.all in HighScoreTextBox_Package.HighScoreTextBox'Class) then
                        menuListener := MenuListener_Access (displayable);
                        menuListener.close;
                    end if;
                    GameMidlet'Class (This).stopGameCanvasRunnableInterface;
                    This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.NO_GAME_STATE);
                    GameMidlet'Class (This).setDemo;
                end if;
            elsif (command) = (This.myCommandsFactory.RESUME_COMMAND) then
                GameMidlet'Class (This).unPauseAppBackground (False);
            elsif (command) = (This.myCommandsFactory.PAUSE_COMMAND) then
                GameMidlet'Class (This).pauseAppBackground (False);
            elsif (command) = (This.myCommandsFactory.SET_DISPLAYABLE) then
                GameMidlet'Class (This).pauseAppBackground (False);
                GameMidlet'Class (This).setDisplay (displayable);
            elsif (command) = (gameCommandsFactory.SET_MENU_DISPLAYABLE) then
                GameMidlet'Class (This).pauseAppBackground (False);
                menuListener := MenuListener_Access (displayable);
                menuListener.open;
                GameMidlet'Class (This).setDisplay (displayable);
            elsif (command) = (gameCommandsFactory.START_TRACE) then
                This.debugInterface.start;
                gameCanvas := AllBinaryGameCanvas_Access (allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand (gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand (gameCommandsFactory.START_TRACE);
            elsif (command) = (gameCommandsFactory.STOP_TRACE) then
                GameMidlet'Class (This).pauseAppBackground (False);
                This.debugInterface.stop;
                GameMidlet'Class (This).unPauseAppBackground (False);
                gameCanvas := AllBinaryGameCanvas_Access (allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand (gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand (gameCommandsFactory.STOP_TRACE);
            elsif (command) = (gameCommandsFactory.DEFAULT_OPTIONS) then
                tempDisplayable := displayable;
                if (tempDisplayable.all in GameOptionsForm_Package.GameOptionsForm'Class) then
                    GameFeatureFormUtil_Package.getInstance.setDefault (CommandForm_Access (tempDisplayable));
                end if;
            elsif (command) = (GameInputMappingInstructionsCanvas_Package.DISPLAY) then
                tempDisplayable := displayable;
                if (tempDisplayable.all in GameInputMappingCanvas_Package.GameInputMappingCanvas'Class) then
                    gameInputMappingCanvas := GameInputMappingCanvas_Access (tempDisplayable);
                    gameInputMappingCanvas.update;
                end if;
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).getInputMappingInstructionsCanvas);
            elsif HighScoreCommandsFactory_Package.getInstance.isHighScoreCommand (command) then
                tempDisplayable := displayable;
                if (tempDisplayable.all in HighScoresCanvas_Package.HighScoresCanvas'Class) then
                    highScoresCanvas := HighScoresCanvas_Access (tempDisplayable);
                    highScoresCanvas.updateCommand (command);
                end if;
            elsif (command) = (HighScoreCommands_Package.getInstance.DISPLAY) then
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).createHighScoresCanvas);
            elsif (command) = (GameInputMappingInstructionsCanvas_Package.CLOSE) then
                menuListener := MenuListener_Access (displayable);
                menuListener.close;
                GameMidlet'Class (This).commandAction (GameInputMappingCanvas_Package.DISPLAY, NullCanvas_Package.NULL_CANVAS);
            elsif (command) = (GameInputMappingCanvas_Package.DISPLAY) then
                if J2MEUtil_Package.isHTML then
                    GameMidlet'Class (This).pauseAppBackground (False);
                end if;
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).getInputMappingCanvas);
            elsif (command) = (GameInputMappingCanvas_Package.DEFAULT) then
                tempDisplayable := displayable;
                if (tempDisplayable.all in GameInputMappingCanvas_Package.GameInputMappingCanvas'Class) then
                    gameInputMappingCanvas := GameInputMappingCanvas_Access (tempDisplayable);
                    gameInputMappingCanvas.setDefault;
                end if;
            elsif (command) = (InGameOptionsForm_Package.DISPLAY) then
                GameMidlet'Class (This).pauseAppBackground (False);
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                progressCanvas.addNormalPortion (50, To_Unbounded_String ("In Game Options"));
                layerManager := GameMidlet'Class (This).createGameLayerManager;
                inGameOptionsFormFactory := InGameOptionsFormFactory_Package.getInstance;
                inGameOptionsFormFactory.init (GameMidlet_Access'(This'Unchecked_Access), InGameFeatures_Package.Create, To_Unbounded_String ("Options In Game"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor);
                inGameOptionsForm := inGameOptionsFormFactory.get;
                inGameOptionsForm.setItemStateListener (allbinaryGameCanvasRunnableInterface);
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            elsif (command) = (InGameOptionsForm_Package.DEFAULT) then
                inGameOptionsForm := InGameOptionsForm_Access (InGameOptionsFormFactory_Package.getInstance.get);
                GameFeatureFormUtil_Package.getInstance.setDefault (inGameOptionsForm);
            elsif (command) = (gameCommandsFactory.DISPLAY_OPTIONS) then
                AllBinaryMediaManager_Package.setMuted (True);
                GameMidlet'Class (This).stopAll;
                mainFeatureFactory := MainFeatureFactory_Package.getInstance;
                This.isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler_Package.getInstance.fireEvent (True);
                GameMidlet'Class (This).setResized (False);
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).getGameOptionsForm);
            elsif (command) = (gameCommandsFactory.CLOSE_OPTIONS) then
                ResizableListenerHandler_Package.getInstance.fireEvent (False);
                GameMidlet'Class (This).commandAction (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Close isFullScreen/change: "));
                stringBuffer.appendboolean (This.isFullScreen);
                stringBuffer.appendboolean (This.fullScreenUtil.isScreenChange (This.isFullScreen));
                stringBuffer.append (To_Unbounded_String (" isResized: "));
                stringBuffer.appendboolean (GameMidlet'Class (This).isResized);
                PreLogUtil_Package.put (stringBuffer.toString, GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
                if (GameMidlet'Class (This).isResized) or else (This.fullScreenUtil.isScreenChange (This.isFullScreen)) then
                    GameMidlet'Class (This).updateFullScreen;
                end if;
                AllBinaryMediaManager_Package.setMuted (False);
            elsif (command) = (gameCommandsFactory.DISPLAY_LOAD_FORM) then
                GameMidlet'Class (This).pauseAppBackground (False);
                keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                keyValuePersistance.clear;
                keyValuePersistance.loadAll (This.abeClientInformation);
                if (GameMidlet'Class (This).getLoadGameForm) = (CommandForm_Package.getNullCommandForm) then
                    layerManager := GameMidlet'Class (This).createGameLayerManager;
                    GameMidlet'Class (This).setLoadGameForm (LoadGameForm_Package.Create (GameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("Load Game"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor));
                else
                    GameMidlet'Class (This).getLoadGameForm.update;
                end if;
                GameMidlet'Class (This).commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).getLoadGameForm);
            elsif (command) = (gameCommandsFactory.LOAD_FILE) then
                loadGameForm := LoadGameForm_Access (GameMidlet'Class (This).getLoadGameForm);
                index := loadGameForm.getSelectedId;
                if (index) /= (-(1)) then
                    keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                    GameMidlet'Class (This).setStartStateHashtable (keyValuePersistance.get (index));
                    menuListener := GameMidlet'Class (This).getLoadGameForm;
                    menuListener.close;
                    PreLogUtil_Package.put (BasicMotionGesturesHandler_Package.getInstance.toString, GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
                    GameMidlet'Class (This).commandAction (gameCommandsFactory.START_COMMAND, NullCanvas_Package.NULL_CANVAS);
                    PreLogUtil_Package.put (BasicMotionGesturesHandler_Package.getInstance.toString, GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
                end if;
            elsif (command) = (gameCommandsFactory.DELETE_FILE) then
                loadGameForm := LoadGameForm_Access (GameMidlet'Class (This).getLoadGameForm);
                index := loadGameForm.getSelectedText;
                if (index) /= (-(1)) then
                    keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                    keyValuePersistance.delete (This.abeClientInformation, index);
                    keyValuePersistance.clear;
                    keyValuePersistance.loadAllSize (This.abeClientInformation, 1);
                    GameMidlet'Class (This).getLoadGameForm.update;
                end if;
            elsif (command) = (gameCommandsFactory.SAVE) then
                keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                GameMidlet'Class (This).pauseAppBackground (False);
                keyValuePersistance.save (This.abeClientInformation, GameMidlet'Class (This).getCurrentStateHashtable);
                GameMidlet'Class (This).unPauseAppBackground (False);
            elsif (command) = (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND) then
                This.logUtil.putF (To_Unbounded_String ("Submitted Score"), GameMidlet_Access'(This'Unchecked_Access), This.COMMAND_ACTION);
                if (displayable.all in HighScoreTextBox_Package.HighScoreTextBox'Class) then
                    highScoreTextBox := HighScoreTextBox_Access (displayable);
                    highScoreTextBox.submitted := True;
                end if;
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted (True);
                GameMidlet'Class (This).commandAction (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable);
            elsif (command) = (gameCommandsFactory.DISPLAY_ABOUT) then
                This.aboutCommandProcessor.process (GameMidlet_Access'(This'Unchecked_Access), gameCommandsFactory.SET_MENU_DISPLAYABLE, GameMidlet'Class (This).getAboutCanvas);
            elsif (command) = (gameCommandsFactory.OPEN_WEB_URL) then
                This.webCommandProcessor.process (GameMidlet_Access'(This'Unchecked_Access), gameCommandsFactory.OPEN_WEB_URL, NullCanvas_Package.NULL_CANVAS);
            elsif (command) = (gameCommandsFactory.TOGGLE_KEYBOARD) then
                virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
                virtualKeyboardEventHandler.fireEvent (virtualKeyboardEventHandler.SHOW_EVENT);
            elsif (Java_Compare_To (command.getLabel, gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel)) = (0) then
                mainFeatureFactory := MainFeatureFactory_Package.getInstance;
                isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
                if isFullScreen then
                    This.features.removeDefault (mainFeatureFactory.FULL_SCREEN);
                else
                    This.features.addDefault (mainFeatureFactory.FULL_SCREEN);
                end if;
                GameMidlet'Class (This).updateFullScreen;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (command.getLabel).toString, GameMidlet_Access'(This'Unchecked_Access), This.midletStrings.COMMAND_ACTION, e);
            if (command) /= (GameCommandsFactory_Package.getInstance.EXIT_COMMAND) then
                GameMidlet'Class (This).exitProgress (False);
            end if;
                end;
        end;
   end commandAction;

   procedure updateFullScreen (This : in out GameMidlet) is
      mainFeatureFactory : MainFeatureFactory_Access;
      isFullScreen : Boolean;
      displayable : Displayable_Access;
      canvas : Canvas_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
        displayable := GameMidlet'Class (This).getDisplay.getCurrent;
        if (displayable.all in Canvas_Package.Canvas'Class) then
            canvas := Canvas_Access (displayable);
            canvas.setFullScreenMode (isFullScreen);
        end if;
   end updateFullScreen;

   procedure onEvent (This : in out GameMidlet; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GameMidlet_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   function getInputMappingInstructionsCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return MyCanvas_Access (GameInputMappingInstructionsCanvas_Package.Create (GameMidlet_Access'(This'Unchecked_Access), GameMidlet'Class (This).createGameLayerManager));
   end getInputMappingInstructionsCanvas;

   --  throws Exception
   function getInputMappingCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return MyCanvas_Access (GameInputMappingCanvas_Package.Create (This.abeClientInformation, GameMidlet_Access'(This'Unchecked_Access), GameMidlet'Class (This).createGameLayerManager, GameMidlet'Class (This).getHelpPaintable));
   end getInputMappingCanvas;

   --  throws Exception
   function getAboutCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return MyCanvas_Access (BasicPaintablesCanvas_Package.Create (GameMidlet_Access'(This'Unchecked_Access), CanvasStrings_Package.getInstance.ABOUT, GameMidlet'Class (This).createGameLayerManager, AboutPaintableFactory_Package.getInstance.paintableArray));
   end getAboutCanvas;

   --  throws Exception
   function getHelpPaintable (This : in out GameMidlet) return HelpPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end getHelpPaintable;

   --  throws Exception
   function createHighScoresCanvas (This : in out GameMidlet) return HighScoresCanvas_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createHighScoresCanvas;

   --  throws Exception
   procedure startGameCanvasRunnableInterface (This : in out GameMidlet) is
      threadFactoryUtil : ThreadFactoryUtil_Access;
   begin
        threadFactoryUtil := ThreadFactoryUtil_Package.getInstance;
        This.thread := threadFactoryUtil.getInstanceGameCanvasRunnable (This.allbinaryGameCanvasRunnableInterface);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Thread Priority: ")).appendint (Integer (This.thread.getPriority)).toString, GameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("startGameCanvasRunnableInterface"));
        This.allbinaryGameCanvasRunnableInterface.setThread (This.thread);
        threadFactoryUtil.start (This.thread);
   end startGameCanvasRunnableInterface;

   --  throws Exception
   procedure stopGameCanvasRunnableInterface (This : in out GameMidlet) is
      gameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler_Package.getInstance.removeAllListeners;
        ColorChangeEventHandler_Package.getInstance.removeAllListeners;
        GameEventHandlerUtil_Package.removeAllListeners;
        gameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
        if (Java_Object_Access (gameCanvasRunnableInterface)) /= (Java_Object_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE)) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Set Running False: ")).append (Java_Object'Class (gameCanvasRunnableInterface.all).toString).toString, GameMidlet_Access'(This'Unchecked_Access), This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning (False);
        else
            This.logUtil.putF (To_Unbounded_String ("StopGame - Could Not Stop"), GameMidlet_Access'(This'Unchecked_Access), This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        end if;
        ThreadUtil_Package.getInstance.join (This.thread);
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ALL) then
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Stopped Game Runnable"));
        else
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Stopped Main Runnable"));
        end if;
        This.logUtil.putF (This.commonStrings.END_Id, GameMidlet_Access'(This'Unchecked_Access), This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
   end stopGameCanvasRunnableInterface;

   function getGameCanvasRunnableInterface (This : in out GameMidlet) return GameCanvasRunnableInterface_Access is
   begin
        return This.allbinaryGameCanvasRunnableInterface;
   end getGameCanvasRunnableInterface;

   procedure setGameCanvasRunnableInterface (This : in out GameMidlet; gameCanvasRunnableInterface_Param : access GameCanvasRunnableInterface_Package.GameCanvasRunnableInterface'Class) is
      gameCanvasRunnableInterface : constant GameCanvasRunnableInterface_Access := GameCanvasRunnableInterface_Access (gameCanvasRunnableInterface_Param);
   begin
        This.allbinaryGameCanvasRunnableInterface := gameCanvasRunnableInterface;
   end setGameCanvasRunnableInterface;

   function createGameLayerManager (This : in out GameMidlet) return AllBinaryGameLayerManager_Access is
      gameInfo : GameInfo_Access;
   begin
        gameInfo := GameInfo_Package.Create (GameTypeFactory_Package.getInstance.SINGLE_PLAYER, GameMode_Package.SERVER, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, 1, 1);
        return AllBinaryGameLayerManager_Package.Create (This.basicColorFactory.BLACK, This.basicColorFactory.WHITE, gameInfo);
   end createGameLayerManager;

   function getGameOptionsForm (This : in out GameMidlet) return CommandForm_Access is
      layerManager : AllBinaryGameLayerManager_Access;
   begin
        layerManager := GameMidlet'Class (This).createGameLayerManager;
        return GameOptionsFormFactory_Package.getInstance.init (GameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("Game Options"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor);
   end getGameOptionsForm;

   --  throws Exception
   procedure save (This : in out GameMidlet) is
      hashtable : ABHashtable_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), This.commonStrings.SAVE);
        hashtable := GameMidlet'Class (This).getCurrentStateHashtable;
        GamePersistanceSingleton_Package.getInstance.save (This.abeClientInformation, hashtable);
   end save;

   --  throws Exception
   function getCurrentStateHashtable (This : in out GameMidlet) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
      currentHashtable : ABHashtable_Access;
      enumeration : Enumeration_Access;
      key : Java_Object_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, GameMidlet_Access'(This'Unchecked_Access), To_Unbounded_String ("getCurrentStateHashtable"));
        hashtable := StdUtil_Package.getInstance.createHashtable;
        if (Java_Object_Access (This.allbinaryGameCanvasRunnableInterface)) /= (Java_Object_Access (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE)) then
            currentHashtable := This.allbinaryGameCanvasRunnableInterface.getCurrentStateHashtable;
            enumeration := currentHashtable.keys;
            key := null;
            while This.enumerationUtil.hasMoreElements (enumeration) loop
                key := This.enumerationUtil.nextElement (enumeration);
                hashtable.put (key, currentHashtable.get (key));
            end loop;
        end if;
        return hashtable;
   end getCurrentStateHashtable;

   procedure setLoadGameForm (This : in out GameMidlet; loadGameForm_Param : access LoadGameForm_Package.LoadGameForm'Class) is
      loadGameForm : constant LoadGameForm_Access := LoadGameForm_Access (loadGameForm_Param);
   begin
        This.loadGameForm := CommandForm_Access (loadGameForm);
   end setLoadGameForm;

   function getLoadGameForm (This : in out GameMidlet) return CommandForm_Access is
   begin
        return This.loadGameForm;
   end getLoadGameForm;

   procedure setResized (This : in out GameMidlet; resized : Boolean) is
   begin
        This.resized := resized;
   end setResized;

   function isResized (This : in out GameMidlet) return Boolean is
   begin
        return This.resized;
   end isResized;

   function isDemoLoading (This : in out GameMidlet) return Boolean is
      displayable : Displayable_Access;
      demoCanvas : DemoCanvas_Access;
   begin
        if This.startedBefore then
            return False;
        end if;
        displayable := GameMidlet'Class (This).getDisplay.getCurrent;
        if (displayable.all in DemoCanvas_Package.DemoCanvas'Class) then
            demoCanvas := DemoCanvas_Access (displayable);
            if demoCanvas.isDemoLoading then
                return True;
            end if;
        end if;
        return False;
   end isDemoLoading;

end org.allbinary.game.midlet.GameMidlet_Package;


