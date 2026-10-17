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


package body org.allbinary.game.midlet.GameMidlet_Package is

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
      This.tsUtil := TsUtil_Package.getInstance;
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
      
      This.allbinaryGameCanvasRunnableInterface := NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE;
      This.thread := NullThread_Package.NULL_THREAD;
      
      This.isFullScreen := False;
      This.resized := False;
      This.startedBefore := False;
   end Initialize_Fields;


   procedure Initialize (This : in out GameMidlet'Class; clientInformationFactory : ClientInformationFactory_Access) is
      progressCanvas : ProgressCanvas_Access;
   begin
        ProgressMidlet_Package.Initialize (This, clientInformationFactory);
        Initialize_Fields (This);
        SmallIntegerSingletonFactory_Package.getInstance.initWithRange (16#291#, 6);
        This.loadGameForm := CommandForm_Package.getNullCommandForm;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.init (This'Unchecked_Access);
        GameFeatureEventHandler_Package.getInstance.addListenerInterface (ChangedGameFeatureListener_Package.getInstance);
        GamePersistanceSingleton_Package.getInstance.clear;
        This.debugInterface := DebugFactory_Package.getInstance;
        This.init;
   end Initialize;

   function Create (clientInformationFactory : ClientInformationFactory_Access) return GameMidlet_Access is
      This : constant GameMidlet_Access := new GameMidlet;
   begin
      GameMidlet_Package.Initialize (This.all, clientInformationFactory);
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
        This.pauseAppBackground (True);
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.getAdvertisements.stopAll;
   end pauseApp;

   procedure pauseAppBackground (This : in out GameMidlet; background : Boolean) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.PAUSE_APP_BACKGROUND);
        if (This.allbinaryGameCanvasRunnableInterface) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
            This.allbinaryGameCanvasRunnableInterface.pause;
        else
            This.logUtil.putF (To_Unbounded_String ("<<<<<< Null"), This'Unchecked_Access, This.PAUSE_APP_BACKGROUND);
        end if;
        AllBinarySensorManager_Package.getInstance.shutdown;
   end pauseAppBackground;

   procedure unPauseApp (This : in out GameMidlet) is
      gameAdState : GameAdState_Access;
   begin
        This.unPauseAppBackground (True);
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.getAdvertisements.startAll;
   end unPauseApp;

   procedure unPauseAppBackground (This : in out GameMidlet; background : Boolean) is
      gameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.UN_PAUSE_APP_BACKGROUND);
        AllBinarySensorManager_Package.getInstance.init;
        gameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
            gameCanvasRunnableInterface.unPause;
        else
            This.logUtil.putF (To_Unbounded_String ("<<<<<< Null"), This'Unchecked_Access, This.UN_PAUSE_APP_BACKGROUND);
        end if;
   end unPauseAppBackground;

   procedure destroyAppInRunnable (This : in out GameMidlet; unconditional : Boolean; isProgress : Boolean) is
      progressCanvas : ProgressCanvas_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        if isProgress then
            progressCanvas.start;
            This.commandAction (This.myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
        end if;
        This.destroyApp (unconditional);
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
            PreLogUtil_Package.put (GameStatisticsFactory_Package.getInstance.toString, This'Unchecked_Access, METHOD_NAME);
            gameAdState := This.gameAdStateFactory.getCurrentInstance;
            gameAdState.getAdvertisements.stopAll;
            if not (This.isDestroyed) then
                This.stopGameCanvasRunnableInterface;
                This.setGameCanvasRunnableInterface (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE);
                This.mediaShutdown;
            else
                This.logUtil.putF (To_Unbounded_String ("Midlet Managment Error: Midlet Should Only Be Destroyed Once"), This'Unchecked_Access, METHOD_NAME);
            end if;
            ProgressMidlet (This).destroyApp (True);
            PreLogUtil_Package.put (This.commonStrings.END_Id, This'Unchecked_Access, METHOD_NAME);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, METHOD_NAME, e);
                end;
        end;
        This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, METHOD_NAME);
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
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, START_APP);
            gameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
            if (gameCanvasRunnableInterface) = (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
                This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.NO_GAME_STATE);
                This.setDemo;
            else
                This.logUtil.putF (To_Unbounded_String ("GameCanvasRunnableInterface is available"), This'Unchecked_Access, START_APP);
                if (gameCanvasRunnableInterface) = (This.getCurrentDisplayable) then
                    This.unPauseAppBackground (False);
                else
                    This.logUtil.putF (To_Unbounded_String ("GameCanvasRunnableInterface is not current displayable"), This'Unchecked_Access, START_APP);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("startApp"), e);
            This.destroyApp (False);
            This.notifyDestroyed;
                end;
        end;
   end startApp;

   procedure commandAction (This : in out GameMidlet; command : Command_Access; displayable_Case : Displayable_Access) is
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
            if (displayable_Case) /= (null) then
                displayableAsString := displayable_Case.toString;
            end if;
            label := This.NO_COMMAND;
            if (command) /= (null) then
                label := command.getLabel;
            end if;
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.COMMAND_NAME).append (label).append (This.DISPLAYABLE).append (displayableAsString).toString, This'Unchecked_Access, This.COMMAND_ACTION);
            gameCommandsFactory := GameCommandsFactory_Package.getInstance;
            allbinaryGameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
            gameCanvasRunnableInterface := allbinaryGameCanvasRunnableInterface;
            if (command) = (gameCommandsFactory.SHOW_GAME_CANVAS) then
                if ((This.getDisplay.getCurrent) /= (gameCanvasRunnableInterface)) and then ((allbinaryGameCanvasRunnableInterface.getType) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE.getType)) then
                    This.setDisplay (Displayable_Access (gameCanvasRunnableInterface));
                end if;
                This.unPauseAppBackground (False);
            elsif (command) = (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS) then
                menuListener := MenuListener_Access (displayable_Case);
                menuListener.close;
                This.setDisplay (Displayable_Access (gameCanvasRunnableInterface));
                This.unPauseAppBackground (False);
            elsif (command) = (gameCommandsFactory.EXIT_COMMAND) then
                if (GameMidletEventHandler_Package.getInstance.getEventListenerInterfaceListP.size) = (0) then
                    This.exitProgress (True);
                end if;
                GameMidletEventHandler_Package.getInstance.fireEvent (DemoGameMidletEvent_Package.Create (This'Unchecked_Access, DemoGameMidletStateFactory_Package.getInstance.NONE));
            elsif (command) = (gameCommandsFactory.EXIT_WITHOUT_PROGRESS_COMMAND) then
                This.exitProgress (False);
            elsif (((command) = (gameCommandsFactory.START_COMMAND)) or else ((command) = (gameCommandsFactory.RESTART_COMMAND))) or else ((command) = (gameCommandsFactory.CONTINUE_COMMAND)) then
                if ((This.gameMidletStateFactory.getCurrentGameState) /= (This.gameStateFactory.PLAYING_GAME_STATE)) or else ((command) = (gameCommandsFactory.RESTART_COMMAND)) then
                    if This.gameStartTimeHelper.isTimeTNT then
                        if ((command) = (gameCommandsFactory.START_COMMAND)) and then (This.isDemoLoading) then
                            This.logUtil.putF (To_Unbounded_String ("Trying to Start Game Before Loading Complete"), This'Unchecked_Access, This.midletStrings.COMMAND_ACTION);
                        else
                            This.startedBefore := True;
                            This.createGame;
                            This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.PLAYING_GAME_STATE);
                        end if;
                    else
                        This.logUtil.putF (To_Unbounded_String ("Starting Game Too Often"), This'Unchecked_Access, This.midletStrings.COMMAND_ACTION);
                    end if;
                else
                    This.logUtil.putF (To_Unbounded_String ("Already in playing state"), This'Unchecked_Access, This.COMMAND_ACTION);
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
                    if (displayable_Case.all in HighScoreTextBox_Package.HighScoreTextBox'Class) then
                        menuListener := MenuListener_Access (displayable_Case);
                        menuListener.close;
                    end if;
                    This.stopGameCanvasRunnableInterface;
                    This.gameMidletStateFactory.setCurrentGameState (This.gameStateFactory.NO_GAME_STATE);
                    This.setDemo;
                end if;
            elsif (command) = (This.myCommandsFactory.RESUME_COMMAND) then
                This.unPauseAppBackground (False);
            elsif (command) = (This.myCommandsFactory.PAUSE_COMMAND) then
                This.pauseAppBackground (False);
            elsif (command) = (This.myCommandsFactory.SET_DISPLAYABLE) then
                This.pauseAppBackground (False);
                This.setDisplay (displayable_Case);
            elsif (command) = (gameCommandsFactory.SET_MENU_DISPLAYABLE) then
                This.pauseAppBackground (False);
                menuListener := MenuListener_Access (displayable_Case);
                menuListener.open;
                This.setDisplay (displayable_Case);
            elsif (command) = (gameCommandsFactory.START_TRACE) then
                This.debugInterface.start;
                gameCanvas := AllBinaryGameCanvas_Access (allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand (gameCommandsFactory.STOP_TRACE);
                gameCanvas.removeCommand (gameCommandsFactory.START_TRACE);
            elsif (command) = (gameCommandsFactory.STOP_TRACE) then
                This.pauseAppBackground (False);
                This.debugInterface.stop;
                This.unPauseAppBackground (False);
                gameCanvas := AllBinaryGameCanvas_Access (allbinaryGameCanvasRunnableInterface);
                gameCanvas.addCommand (gameCommandsFactory.START_TRACE);
                gameCanvas.removeCommand (gameCommandsFactory.STOP_TRACE);
            elsif (command) = (gameCommandsFactory.DEFAULT_OPTIONS) then
                tempDisplayable := displayable_Case;
                if (tempDisplayable.all in GameOptionsForm_Package.GameOptionsForm'Class) then
                    GameFeatureFormUtil_Package.getInstance.setDefault (CommandForm_Access (tempDisplayable));
                end if;
            elsif (command) = (GameInputMappingInstructionsCanvas_Package.DISPLAY) then
                tempDisplayable := displayable_Case;
                if (tempDisplayable.all in GameInputMappingCanvas_Package.GameInputMappingCanvas'Class) then
                    gameInputMappingCanvas := GameInputMappingCanvas_Access (tempDisplayable);
                    gameInputMappingCanvas.update;
                end if;
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, This.getInputMappingInstructionsCanvas);
            elsif HighScoreCommandsFactory_Package.getInstance.isHighScoreCommand (command) then
                tempDisplayable := displayable_Case;
                if (tempDisplayable.all in HighScoresCanvas_Package.HighScoresCanvas'Class) then
                    highScoresCanvas := HighScoresCanvas_Access (tempDisplayable);
                    highScoresCanvas.updateCommand (command);
                end if;
            elsif (command) = (HighScoreCommands_Package.getInstance.DISPLAY) then
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, This.createHighScoresCanvas);
            elsif (command) = (GameInputMappingInstructionsCanvas_Package.CLOSE) then
                menuListener := MenuListener_Access (displayable_Case);
                menuListener.close;
                This.commandAction (GameInputMappingCanvas_Package.DISPLAY, NullCanvas_Package.NULL_CANVAS);
            elsif (command) = (GameInputMappingCanvas_Package.DISPLAY) then
                if J2MEUtil_Package.isHTML then
                    This.pauseAppBackground (False);
                end if;
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, This.getInputMappingCanvas);
            elsif (command) = (GameInputMappingCanvas_Package.DEFAULT) then
                tempDisplayable := displayable_Case;
                if (tempDisplayable.all in GameInputMappingCanvas_Package.GameInputMappingCanvas'Class) then
                    gameInputMappingCanvas := GameInputMappingCanvas_Access (tempDisplayable);
                    gameInputMappingCanvas.setDefault;
                end if;
            elsif (command) = (InGameOptionsForm_Package.DISPLAY) then
                This.pauseAppBackground (False);
                progressCanvas := ProgressCanvasFactory_Package.getInstance;
                progressCanvas.addNormalPortion (50, To_Unbounded_String ("In Game Options"));
                layerManager := This.createGameLayerManager;
                inGameOptionsFormFactory := InGameOptionsFormFactory_Package.getInstance;
                inGameOptionsFormFactory.init (This'Unchecked_Access, InGameFeatures_Package.Create, To_Unbounded_String ("Options In Game"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor);
                inGameOptionsForm := inGameOptionsFormFactory.get;
                inGameOptionsForm.setItemStateListener (allbinaryGameCanvasRunnableInterface);
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, inGameOptionsForm);
            elsif (command) = (InGameOptionsForm_Package.DEFAULT) then
                inGameOptionsForm := InGameOptionsForm_Access (InGameOptionsFormFactory_Package.getInstance.get);
                GameFeatureFormUtil_Package.getInstance.setDefault (inGameOptionsForm);
            elsif (command) = (gameCommandsFactory.DISPLAY_OPTIONS) then
                AllBinaryMediaManager_Package.setMuted (True);
                This.stopAll;
                mainFeatureFactory := MainFeatureFactory_Package.getInstance;
                This.isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
                ResizableListenerHandler_Package.getInstance.fireEvent (True);
                This.setResized (False);
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, This.getGameOptionsForm);
            elsif (command) = (gameCommandsFactory.CLOSE_OPTIONS) then
                ResizableListenerHandler_Package.getInstance.fireEvent (False);
                This.commandAction (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable_Case);
                stringBuffer := StringMaker_Package.Create;
                stringBuffer.append (To_Unbounded_String ("Close isFullScreen/change: "));
                stringBuffer.appendboolean (This.isFullScreen);
                stringBuffer.appendboolean (This.fullScreenUtil.isScreenChange (This.isFullScreen));
                stringBuffer.append (To_Unbounded_String (" isResized: "));
                stringBuffer.appendboolean (This.isResized);
                PreLogUtil_Package.put (stringBuffer.toString, This'Unchecked_Access, This.COMMAND_ACTION);
                if (This.isResized) or else (This.fullScreenUtil.isScreenChange (This.isFullScreen)) then
                    This.updateFullScreen;
                end if;
                AllBinaryMediaManager_Package.setMuted (False);
            elsif (command) = (gameCommandsFactory.DISPLAY_LOAD_FORM) then
                This.pauseAppBackground (False);
                keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                keyValuePersistance.clear;
                keyValuePersistance.loadAll (This.abeClientInformation);
                if (This.getLoadGameForm) = (CommandForm_Package.getNullCommandForm) then
                    layerManager := This.createGameLayerManager;
                    This.setLoadGameForm (LoadGameForm_Package.Create (This'Unchecked_Access, To_Unbounded_String ("Load Game"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor));
                else
                    This.getLoadGameForm.update;
                end if;
                This.commandAction (gameCommandsFactory.SET_MENU_DISPLAYABLE, This.getLoadGameForm);
            elsif (command) = (gameCommandsFactory.LOAD_FILE) then
                loadGameForm := LoadGameForm_Access (This.getLoadGameForm);
                index := loadGameForm.getSelectedId;
                if (index) /= (-(1)) then
                    keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                    This.setStartStateHashtable (keyValuePersistance.get (index));
                    menuListener := This.getLoadGameForm;
                    menuListener.close;
                    PreLogUtil_Package.put (BasicMotionGesturesHandler_Package.getInstance.toString, This'Unchecked_Access, This.COMMAND_ACTION);
                    This.commandAction (gameCommandsFactory.START_COMMAND, NullCanvas_Package.NULL_CANVAS);
                    PreLogUtil_Package.put (BasicMotionGesturesHandler_Package.getInstance.toString, This'Unchecked_Access, This.COMMAND_ACTION);
                end if;
            elsif (command) = (gameCommandsFactory.DELETE_FILE) then
                loadGameForm := LoadGameForm_Access (This.getLoadGameForm);
                index := loadGameForm.getSelectedText;
                if (index) /= (-(1)) then
                    keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                    keyValuePersistance.delete (This.abeClientInformation, index);
                    keyValuePersistance.clear;
                    keyValuePersistance.loadAllSize (This.abeClientInformation, 1);
                    This.getLoadGameForm.update;
                end if;
            elsif (command) = (gameCommandsFactory.SAVE) then
                keyValuePersistance := GamePersistanceSingleton_Package.getInstance;
                This.pauseAppBackground (False);
                keyValuePersistance.save (This.abeClientInformation, This.getCurrentStateHashtable);
                This.unPauseAppBackground (False);
            elsif (command) = (HighScoreUtil_Package.SUBMIT_TEXTBOX_COMMAND) then
                This.logUtil.putF (To_Unbounded_String ("Submitted Score"), This'Unchecked_Access, This.COMMAND_ACTION);
                if (displayable_Case.all in HighScoreTextBox_Package.HighScoreTextBox'Class) then
                    highScoreTextBox := HighScoreTextBox_Access (displayable_Case);
                    highScoreTextBox.submitted := True;
                end if;
                allbinaryGameCanvasRunnableInterface.setHighScoreSubmitted (True);
                This.commandAction (gameCommandsFactory.CLOSE_AND_SHOW_GAME_CANVAS, displayable_Case);
            elsif (command) = (gameCommandsFactory.DISPLAY_ABOUT) then
                This.aboutCommandProcessor.process (This'Unchecked_Access, gameCommandsFactory.SET_MENU_DISPLAYABLE, This.getAboutCanvas);
            elsif (command) = (gameCommandsFactory.OPEN_WEB_URL) then
                This.webCommandProcessor.process (This'Unchecked_Access, gameCommandsFactory.OPEN_WEB_URL, NullCanvas_Package.NULL_CANVAS);
            elsif (command) = (gameCommandsFactory.TOGGLE_KEYBOARD) then
                virtualKeyboardEventHandler := VirtualKeyboardEventHandler_Package.getInstance;
                virtualKeyboardEventHandler.fireEvent (virtualKeyboardEventHandler.SHOW_EVENT);
            elsif (This.tsUtil.compareTo (command.getLabel, gameCommandsFactory.TOGGLE_FULLSCREEN.getLabel)) = (0) then
                mainFeatureFactory := MainFeatureFactory_Package.getInstance;
                isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
                if isFullScreen then
                    This.features.removeDefault (mainFeatureFactory.FULL_SCREEN);
                else
                    This.features.addDefault (mainFeatureFactory.FULL_SCREEN);
                end if;
                This.updateFullScreen;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (StringMaker_Package.Create.append (This.commonStrings.EXCEPTION_LABEL).append (command.getLabel).toString, This'Unchecked_Access, This.midletStrings.COMMAND_ACTION, e);
            if (command) /= (GameCommandsFactory_Package.getInstance.EXIT_COMMAND) then
                This.exitProgress (False);
            end if;
                end;
        end;
   end commandAction;

   procedure updateFullScreen (This : in out GameMidlet) is
      mainFeatureFactory : MainFeatureFactory_Access;
      isFullScreen : Boolean;
      displayable_Case : Displayable_Access;
      canvas : Canvas_Access;
   begin
        mainFeatureFactory := MainFeatureFactory_Package.getInstance;
        isFullScreen := This.features.isFeature (mainFeatureFactory.FULL_SCREEN);
        displayable_Case := This.getDisplay.getCurrent;
        if (displayable_Case.all in Canvas_Package.Canvas'Class) then
            canvas := Canvas_Access (displayable_Case);
            canvas.setFullScreenMode (isFullScreen);
        end if;
   end updateFullScreen;

   procedure onEvent (This : in out GameMidlet; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   function getInputMappingInstructionsCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return GameInputMappingInstructionsCanvas_Package.Create (This'Unchecked_Access, This.createGameLayerManager);
   end getInputMappingInstructionsCanvas;

   --  throws Exception
   function getInputMappingCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return GameInputMappingCanvas_Package.Create (This.abeClientInformation, This'Unchecked_Access, This.createGameLayerManager, This.getHelpPaintable);
   end getInputMappingCanvas;

   --  throws Exception
   function getAboutCanvas (This : in out GameMidlet) return MyCanvas_Access is
   begin
        return BasicPaintablesCanvas_Package.Create (This'Unchecked_Access, CanvasStrings_Package.getInstance.ABOUT, This.createGameLayerManager, AboutPaintableFactory_Package.getInstance.paintableArray);
   end getAboutCanvas;

   --  throws Exception
   function getHelpPaintable (This : in out GameMidlet) return HelpPaintable_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end getHelpPaintable;

   --  throws Exception
   function createHighScoresCanvas (This : in out GameMidlet) return HighScoresCanvas_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end createHighScoresCanvas;

   --  throws Exception
   procedure startGameCanvasRunnableInterface (This : in out GameMidlet) is
      threadFactoryUtil : ThreadFactoryUtil_Access;
   begin
        threadFactoryUtil := ThreadFactoryUtil_Package.getInstance;
        This.thread := threadFactoryUtil.getInstanceGameCanvasRunnable (This.allbinaryGameCanvasRunnableInterface);
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Thread Priority: ")).appendint (Integer (This.thread.getPriority)).toString, This'Unchecked_Access, To_Unbounded_String ("startGameCanvasRunnableInterface"));
        This.allbinaryGameCanvasRunnableInterface.setThread (This.thread);
        threadFactoryUtil.start (This.thread);
   end startGameCanvasRunnableInterface;

   --  throws Exception
   procedure stopGameCanvasRunnableInterface (This : in out GameMidlet) is
      gameCanvasRunnableInterface : GameCanvasRunnableInterface_Access;
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        GameNotificationEventHandler_Package.getInstance.removeAllListeners;
        ColorChangeEventHandler_Package.getInstance.removeAllListeners;
        GameEventHandlerUtil_Package.removeAllListeners;
        gameCanvasRunnableInterface := This.allbinaryGameCanvasRunnableInterface;
        if (gameCanvasRunnableInterface) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Set Running False: ")).append (gameCanvasRunnableInterface.toString).toString, This'Unchecked_Access, This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
            gameCanvasRunnableInterface.setRunning (False);
        else
            This.logUtil.putF (To_Unbounded_String ("StopGame - Could Not Stop"), This'Unchecked_Access, This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
        end if;
        ThreadUtil_Package.getInstance.join (This.thread);
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ALL) then
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Stopped Game Runnable"));
        else
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Stopped Main Runnable"));
        end if;
        This.logUtil.putF (This.commonStrings.END_Id, This'Unchecked_Access, This.gameStrings.STOP_GAME_CANVAS_RUNNABLE_INTERFACE);
   end stopGameCanvasRunnableInterface;

   function getGameCanvasRunnableInterface (This : in out GameMidlet) return GameCanvasRunnableInterface_Access is
   begin
        return This.allbinaryGameCanvasRunnableInterface;
   end getGameCanvasRunnableInterface;

   procedure setGameCanvasRunnableInterface (This : in out GameMidlet; gameCanvasRunnableInterface : GameCanvasRunnableInterface_Access) is
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
        layerManager := This.createGameLayerManager;
        return GameOptionsFormFactory_Package.getInstance.init (This'Unchecked_Access, To_Unbounded_String ("Game Options"), layerManager.getBackgroundBasicColor, layerManager.getForegroundBasicColor);
   end getGameOptionsForm;

   --  throws Exception
   procedure save (This : in out GameMidlet) is
      hashtable : ABHashtable_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.SAVE);
        hashtable := This.getCurrentStateHashtable;
        GamePersistanceSingleton_Package.getInstance.save (This.abeClientInformation, hashtable);
   end save;

   --  throws Exception
   function getCurrentStateHashtable (This : in out GameMidlet) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
      currentHashtable : ABHashtable_Access;
      enumeration : Enumeration_Access;
      key : Java_Object_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("getCurrentStateHashtable"));
        hashtable := StdUtil_Package.getInstance.createHashtable;
        if (This.allbinaryGameCanvasRunnableInterface) /= (NullGameCanvasRunnable_Package.NULL_GAME_CANVAS_RUNNABLE) then
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

   procedure setLoadGameForm (This : in out GameMidlet; loadGameForm : LoadGameForm_Access) is
   begin
        This.loadGameForm := loadGameForm;
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
      displayable_Case : Displayable_Access;
      demoCanvas : DemoCanvas_Access;
   begin
        if This.startedBefore then
            return False;
        end if;
        displayable_Case := This.getDisplay.getCurrent;
        if (displayable_Case.all in DemoCanvas_Package.DemoCanvas'Class) then
            demoCanvas := DemoCanvas_Access (displayable_Case);
            if demoCanvas.isDemoLoading then
                return True;
            end if;
        end if;
        return False;
   end isDemoLoading;

end org.allbinary.game.midlet.GameMidlet_Package;


