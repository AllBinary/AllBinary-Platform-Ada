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


package body org.allbinary.game.displayable.canvas.StartCanvas_Package is

   procedure Initialize_Fields (This : in out StartCanvas'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
      This.myCommandsFactory := MyCommandsFactory_Package.getInstance;
      This.gameAdStateFactory := GameAdStateFactory_Package.getInstance;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.formUtil := FormUtil_Package.getInstance;
      This.basicGameDemoPaintable := StatePaintableFactory_Package.getInstance;
      This.specialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.fullScreenUtil := FullScreenUtil_Package.getInstance;
      This.highScoresHelper := HighScoresHelper_Package.Create;
      This.realHighScoresPaintable := HighScoresPaintable_Package.Create;
      This.highScoresPaintable := NullPaintable_Package.getInstance;
      This.state := 0;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (6000);
      
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
      
      This.initialized := False;
      This.defaultPaintableInterface := NullPaintable_Package.getInstance;
      This.paintableInterface := NullPaintable_Package.getInstance;
      
      This.tempWait := NullWaitGameRunnable_Package.getInstance.WAIT;
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.gameRunnable := NullWaitGameRunnable_Package.getInstance;
      This.progressPaintable := ProgressCanvasFactory_Package.getLazyInstance;
      This.isSingleKeyRepeatableProcessing := This.features.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.SET_STATE := To_Unbounded_String ("setState");
      This.baseGameStatistics := GameStatisticsFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out StartCanvas'Class; abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; highScoresFactoryInterface : HighScoresFactoryInterface_Access; paintable : Paintable_Access; overlayPaintable : InitUpdatePaintable_Access; gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access; isContinue : Boolean) is
   begin
        RunnableCanvas_Package.Initialize (This, commandListener, CurrentDisplayableFactory_Package.getInstance.DEFAULT_CHILD_NAME_LIST, True);
        Initialize_Fields (This);
        This.setWait (NullWaitGameRunnable_Package.getInstance.WAIT);
        This.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil_Package.getInstance.initDemo (abeClientInformation, This'Unchecked_Access, gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler_Package.getInstance.fireEvent (False);
        This.overlayPaintable := overlayPaintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        This.setDefaultPaintableInterface (paintable);
        This.setPaintableInterface (This.getDefaultPaintableInterface);
        if isContinue then
            This.addCommand (GameCommandsFactory_Package.getInstance.CONTINUE_COMMAND);
        end if;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            This.mediaInit;
        end if;
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
   end Initialize;

   function Create (abeClientInformation : AbeClientInformationInterface_Access; commandListener : CommandListener_Access; highScoresFactoryInterface : HighScoresFactoryInterface_Access; paintable : Paintable_Access; overlayPaintable : InitUpdatePaintable_Access; gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory_Access; isContinue : Boolean) return StartCanvas_Access is
      This : constant StartCanvas_Access := new StartCanvas;
   begin
      StartCanvas_Package.Initialize (This.all, abeClientInformation, commandListener, highScoresFactoryInterface, paintable, overlayPaintable, gameInitializationInterfaceFactoryInterface, isContinue);
      return This;
   end Create;

   procedure onEvent (This : in out StartCanvas; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onDisplayChangeEvent (This : in out StartCanvas; displayChangeEvent : DisplayChangeEvent_Access) is
      scrollSelectionForm : ScrollSelectionForm_Access;
      formType : FormType_Access;
      rectangle : Rectangle_Access;
   begin
        begin
            scrollSelectionForm := This.getMenuForm;
            if (scrollSelectionForm) /= (null) then
                formType := FormTypeFactory_Package.getInstance.getFormType;
                rectangle := This.formUtil.createFormRectangle;
                scrollSelectionForm.init (rectangle, formType);
            end if;
            This.overlayPaintable.init;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
   end onDisplayChangeEvent;

   function getCustomCommands (This : in out StartCanvas) return Java_Object_Access_Array_Access is
      gameCommandsFactory : GameCommandsFactory_Access;
      commandList : BasicArrayList_Access;
      inApplicationPurchaseFactory : InApplicationPurchaseFactory_Access;
      list : BasicArrayList_Access;
      isOverScan : Boolean;
      commandArray : Java_Object_Access_Array_Access;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        if J2MEUtil_Package.isHTML then
            commandArray := new Java_Object_Access_Array'(gameCommandsFactory.START_COMMAND, HighScoreCommands_Package.getInstance.DISPLAY, GameInputMappingCanvas_Package.DISPLAY, gameCommandsFactory.DISPLAY_ABOUT);
            return commandArray;
        else
            commandList := BasicArrayListD_Package.Create;
            commandList.add (gameCommandsFactory.START_COMMAND);
            inApplicationPurchaseFactory := InApplicationPurchaseFactory_Package.getInstance;
            if inApplicationPurchaseFactory.isEnabled then
                list := LockableFeatureFactory_Package.getInstance.getList;
                if ((list.size) > (0)) and then (not (inApplicationPurchaseFactory.isPurchased (LockableFeature_Access (list.get (0))))) then
                    commandList.add (gameCommandsFactory.BUY_COMMAND);
                end if;
            end if;
            commandList.add (HighScoreCommands_Package.getInstance.DISPLAY);
            begin
                isOverScan := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan;
                if SWTUtil_Package.isSWT then
                    commandList.add (GameInputMappingCanvas_Package.DISPLAY);
                elsif not (isOverScan) then
                    commandList.add (gameCommandsFactory.DISPLAY_OPTIONS);
                    commandList.add (gameCommandsFactory.DISPLAY_LOAD_FORM);
                    commandList.add (GameInputMappingCanvas_Package.DISPLAY);
                end if;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                null;
                    end;
            end;
            commandList.add (gameCommandsFactory.DISPLAY_ABOUT);
            commandArray := commandList.toArray;
            return commandArray;
        end if;
   end getCustomCommands;

   procedure initCommands (This : in out StartCanvas; cmdListener : CommandListener_Access) is
      commandArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        This.removeAllCommands;
        commandArray := This.getCustomCommands;
        size := commandArray'Length;
        for index in 0 .. (size) - 1 loop
            This.addCommand (Command_Access (commandArray (index)));
        end loop;
        CustomGameMenuUtil_Package.add (This'Unchecked_Access);
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure initPostPaint (This : in out StartCanvas) is
   begin
        null;
   end initPostPaint;

   --  throws Exception
   procedure mediaInit (This : in out StartCanvas) is
   begin
        AllBinaryMediaManager_Package.init (EarlySoundsFactory_Package.getInstance);
   end mediaInit;

   procedure itemStateChanged (This : in out StartCanvas; item : Item_Access) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, This'Unchecked_Access);
   end itemStateChanged;

   --  throws Exception
   procedure initMenu (This : in out StartCanvas) is
   begin
        This.close;
        This.open;
   end initMenu;

   procedure open (This : in out StartCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (This.getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.addListener (This.getMenuInputProcessor);
   end open;

   procedure close (This : in out StartCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.removeListener (This.getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.removeListener (This.getMenuInputProcessor);
   end close;

   function getSourceId (This : in out StartCanvas) return Integer is
   begin
        return StartCanvas_Package.id;
   end getSourceId;

   procedure keyPressed (This : in out StartCanvas; keyCode : Integer) is
   begin
        This.keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out StartCanvas; keyCode : Integer) is
   begin
        This.keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out StartCanvas; keyCode : Integer) is
   begin
        This.keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.addGameKeyEvent (keyCode, False);
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.removeGameKeyEvent (keyCode, False);
   end keyReleasedByDevice;

   procedure keyRepeatedByDevice (This : in out StartCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            This.addGameKeyEvent (keyCode, True);
        end if;
   end keyRepeatedByDevice;

   procedure addGameKeyEvent (This : in out StartCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This'Unchecked_Access, keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This'Unchecked_Access, gameKey);
                DownGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKeyEvent;

   procedure removeGameKeyEvent (This : in out StartCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This'Unchecked_Access, keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This'Unchecked_Access, gameKey);
                UpGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT, e);
                end;
        end;
   end removeGameKeyEvent;

   procedure pause (This : in out StartCanvas) is
   begin
        This.close;
        This.setPaused (True);
   end pause;

   procedure unPause (This : in out StartCanvas) is
   begin
        This.open;
        This.setPaused (False);
   end unPause;

   function isPausable (This : in out StartCanvas) return Boolean is
   begin
        if (CurrentDisplayableFactory_Package.getInstance.getUsedRunnable) = (NullWaitGameRunnable_Package.getInstance) then
            return True;
        else
            return False;
        end if;
   end isPausable;

   function isGameOver (This : in out StartCanvas) return Boolean is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.NOT_IMPLEMENTED).append (To_Unbounded_String (" since not a game")).toString, This'Unchecked_Access, To_Unbounded_String ("isGameOver"));
        return False;
   end isGameOver;

   --  throws Exception
   procedure setLoadStateHashtable (This : in out StartCanvas; hashtable : ABHashtable_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), This'Unchecked_Access, To_Unbounded_String ("setLoadStateHashtable"));
   end setLoadStateHashtable;

   --  throws Exception
   function getLoadStateHashtable (This : in out StartCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), This'Unchecked_Access, To_Unbounded_String ("getLoadStateHashtable"));
        return This.stdUtil.NULL_TABLE;
   end getLoadStateHashtable;

   --  throws Exception
   function getCurrentStateHashtable (This : in out StartCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to save the AI lol"), This'Unchecked_Access, To_Unbounded_String ("getCurrentStateHashtable"));
        return This.stdUtil.NULL_TABLE;
   end getCurrentStateHashtable;

   procedure setHighScoreSubmitted (This : in out StartCanvas; isNotUsed : Boolean) is
   begin
        null;
   end setHighScoreSubmitted;

   procedure paint (This : in out StartCanvas; graphics : Graphics_Access) is
   begin
        This.paintableInterface.paint (graphics);
        This.paintedSpecialAnimationInterface.paintXY (graphics, 0, 0);
        This.highScoresPaintable.paint (graphics);
        This.getBasicGameDemoPaintable.paint (graphics);
        This.overlayPaintable.paint (graphics);
        This.progressPaintable.paint (graphics);
   end paint;

   procedure paintThreed (This : in out StartCanvas; graphics : Graphics_Access) is
   begin
        This.paintableInterface.paintThreed (graphics);
        This.paintedSpecialAnimationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure processGameOver (This : in out StartCanvas) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Not Implemented since not a game"), This'Unchecked_Access, To_Unbounded_String ("setGameOver"));
   end processGameOver;

   procedure demoStateChange (This : in out StartCanvas) is
      newState : Integer;
      highScores : HighScores_Access;
   begin
        newState := (This.state) + (1);
        if (newState) > (2) then
            newState := 0;
        elsif (newState) = (2) then
            if not (This.highScoresHelper.isAnyHighScores) then
                newState := 0;
            else
                highScores := This.highScoresHelper.getNextHighScores;
                if (highScores) = (NullHighScoresSingletonFactory_Package.getInstance) then
                    newState := 0;
                else
                    This.getRealHighScoresPaintable.setHighScores (highScores);
                end if;
            end if;
        end if;
        This.setState (newState);
        This.updateDemoState;
   end demoStateChange;

   procedure updateDemoState (This : in out StartCanvas) is
      gameAdState : GameAdState_Access;
   begin
        PreLogUtil_Package.put (SmallIntegerSingletonFactory_Package.getInstance.createInstance (This.state).toString, This'Unchecked_Access, This.SET_STATE);
        This.getBasicGameDemoPaintable.setState (This.state);
        if (This.state) = (0) then
            This.highScoresPaintable := NullPaintable_Package.getInstance;
            This.paintedSpecialAnimationInterface := This.getSpecialAnimationInterface;
            This.getSpecialAnimationInterface.reset;
        elsif (This.state) = (1) then
            This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
        elsif (This.state) = (2) then
            This.highScoresPaintable := This.getRealHighScoresPaintable;
        end if;
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.processPageAdState;
   end updateDemoState;

   --  throws Exception
   function getNextRandom (This : in out StartCanvas) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end getNextRandom;

   --  throws Exception
   function createGameLayerManager (This : in out StartCanvas; randomValue : Integer) return AllBinaryGameLayerManager_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end createGameLayerManager;

   --  throws Exception
   function createRunnable (This : in out StartCanvas; randomLevel : Integer) return GameCanvasRunnableInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
   end createRunnable;

   --  throws Exception
   procedure createCanvas (This : in out StartCanvas) is
      randomLevel : Integer;
   begin
        This.highScoresPaintable := NullPaintable_Package.getInstance;
        randomLevel := This.getNextRandom;
   end createCanvas;

   --  throws Exception
   procedure start (This : in out StartCanvas) is
   begin
        null;
   end start;

   procedure preDemoProcess (This : in out StartCanvas) is
   begin
        This.overlayPaintable.update;
   end preDemoProcess;

   --  throws Exception
   procedure process (This : in out StartCanvas) is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
      demoGameMidlet : DemoGameMidlet_Access;
   begin
        This.getMenuInputProcessor.processInputList;
        This.preDemoProcess;
        if (This.state) = (0) then
            indexedAnimationBehavior := IndexedAnimationBehavior_Access (This.getSpecialAnimationInterface.getAnimationBehavior);
            if (indexedAnimationBehavior.loopIndex) < (1) then
                This.timeDelayHelper.setStartTimeTNT;
            end if;
            demoGameMidlet := DemoGameMidlet_Access (This.getCustomCommandListener);
        end if;
   end process;

   --  throws Exception
   procedure startDemoGame (This : in out StartCanvas) is
   begin
        null;
   end startDemoGame;

   --  throws Exception
   procedure processGame (This : in out StartCanvas) is
   begin
        This.gameRunnable.run;
        This.specialAnimationInterface.nextFrame;
        This.process;
   end processGame;

   procedure run (This : in out StartCanvas) is
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
        begin
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread"));
            This.setCurrentThread;
            This.setRunning (True);
            if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
                progressCanvas.end_Id;
            else
                progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread Running"));
            end if;
            This.fullScreenUtil.initOnRun (This'Unchecked_Access, This.getCustomCommandListener);
            This.initMenu;
            This.initPostPaint;
            This.updateDemoState;
            if This.features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
                OpenGLThreadUtil_Package.getInstance.onResume;
            end if;
            if (This.features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or else (J2MEUtil_Package.isHTML) then
                null;
            else
                while This.isRunning loop
                    This.loopTimeHelper.setStartTimeTNT;
                    This.processGame;
                    This.processLoopSleep;
                end loop;
                This.end_Id;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.commonStrings.RUN, e);
                end;
        end;
        This.logUtil.putF (This.commonStrings.END_RUNNABLE, This'Unchecked_Access, This.commonStrings.RUN);
   end run;

   procedure setRunning (This : in out StartCanvas; running : Boolean) is
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        RunnableCanvas (This).setRunning (running);
        begin
            if (((This.features.isDefault (This.openGLFeatureFactory.OPENGL)) or else (J2MEUtil_Package.isHTML))) and then (not (running)) then
                currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                currentDisplayableFactory.clearRunnable;
                This.end_Id;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.SET_RUNNING, e);
                end;
        end;
   end setRunning;

   --  throws Exception
   procedure end_Id (This : in out StartCanvas) is
      progressCanvas : ProgressCanvas_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        This.baseGameStatistics.add (StringMaker_Package.Create.append (StartCanvas_Package.BOT_GAME_STATS).append (This.baseGameStatistics.toString).append (CommonSeps_Package.getInstance.NEW_LINE).toString);
        This.baseGameStatistics.init;
        if This.features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
            progressCanvas.start;
        end if;
        This.logUtil.putF (To_Unbounded_String ("Demo End"), This'Unchecked_Access, This.commonStrings.RUN);
        This.close;
        DisplayChangeEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
   end end_Id;

   procedure setGameState (This : in out StartCanvas; gameState : GameState_Access) is
   begin
        null;
   end setGameState;

   function getGameState (This : in out StartCanvas) return GameState_Access is
   begin
        return This.gameStateFactory.PLAYING_GAME_STATE;
   end getGameState;

   function getState (This : in out StartCanvas) return Integer is
   begin
        return This.state;
   end getState;

   procedure setState (This : in out StartCanvas; state : Integer) is
   begin
        This.state := state;
   end setState;

   function isHighScoreSubmitted (This : in out StartCanvas) return Boolean is
   begin
        This.logUtil.putF (To_Unbounded_String ("Wow the AI got a high score!"), This'Unchecked_Access, To_Unbounded_String ("isHighScoreSubmitted"));
        return False;
   end isHighScoreSubmitted;

   function getRealHighScoresPaintable (This : in out StartCanvas) return HighScoresPaintable_Access is
   begin
        return This.realHighScoresPaintable;
   end getRealHighScoresPaintable;

   procedure setSpecialAnimationInterface (This : in out StartCanvas; specialAnimationInterface : SpecialAnimation_Access) is
   begin
        specialAnimationInterface.setFrame (0);
        This.specialAnimationInterface := specialAnimationInterface;
   end setSpecialAnimationInterface;

   function getSpecialAnimationInterface (This : in out StartCanvas) return SpecialAnimation_Access is
   begin
        return This.specialAnimationInterface;
   end getSpecialAnimationInterface;

   procedure setPaintableInterface (This : in out StartCanvas; paintableInterface : PaintableInterface_Access) is
   begin
        This.paintableInterface := paintableInterface;
   end setPaintableInterface;

   function getPaintableInterface (This : in out StartCanvas) return PaintableInterface_Access is
   begin
        return This.paintableInterface;
   end getPaintableInterface;

   procedure setDefaultPaintableInterface (This : in out StartCanvas; defaultPaintableInterface : Paintable_Access) is
   begin
        This.defaultPaintableInterface := defaultPaintableInterface;
   end setDefaultPaintableInterface;

   function getDefaultPaintableInterface (This : in out StartCanvas) return Paintable_Access is
   begin
        return This.defaultPaintableInterface;
   end getDefaultPaintableInterface;

   function getHighScoresFactoryInterface (This : in out StartCanvas) return HighScoresFactoryInterface_Access is
   begin
        return This.highScoresFactoryInterface;
   end getHighScoresFactoryInterface;

   procedure setMenuInputProcessor (This : in out StartCanvas; menuInputProcessor : BasicMenuInputProcessor_Access) is
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out StartCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   function getMenuForm (This : in out StartCanvas) return ScrollSelectionForm_Access is
   begin
        return This.menuForm;
   end getMenuForm;

   procedure setMenuForm (This : in out StartCanvas; menuForm : ScrollSelectionForm_Access) is
   begin
        This.menuForm := menuForm;
   end setMenuForm;

   function isInitialized (This : in out StartCanvas) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   function getOverlayPaintable (This : in out StartCanvas) return Paintable_Access is
   begin
        return This.overlayPaintable;
   end getOverlayPaintable;

   procedure setBasicGameDemoPaintable (This : in out StartCanvas; basicGameDemoPaintable : StatePaintable_Access) is
   begin
        This.basicGameDemoPaintable := basicGameDemoPaintable;
   end setBasicGameDemoPaintable;

   function getBasicGameDemoPaintable (This : in out StartCanvas) return StatePaintable_Access is
   begin
        return This.basicGameDemoPaintable;
   end getBasicGameDemoPaintable;

   procedure setTempWait (This : in out StartCanvas; tempWait : Integer) is
   begin
        This.tempWait := tempWait;
   end setTempWait;

   function getTempWait (This : in out StartCanvas) return Integer is
   begin
        return This.tempWait;
   end getTempWait;

   function isSingleThread (This : in out StartCanvas) return Boolean is
   begin
        return (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) or else (SWTUtil_Package.isSWT);
   end isSingleThread;

   function isRunningInAnotherThread (This : in out StartCanvas) return Boolean is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
            return True;
        else
            return This.isRunning;
        end if;
   end isRunningInAnotherThread;

   function getGameInitializationInterfaceFactoryInterface (This : in out StartCanvas) return BasicBuildGameInitializerFactory_Access is
   begin
        return This.gameInitializationInterfaceFactoryInterface;
   end getGameInitializationInterfaceFactoryInterface;

   procedure createGameLayerManager (This : in out StartCanvas; randomValue : Integer) is
      Java_Result : constant AllBinaryGameLayerManager_Access := StartCanvas'Class (This).createGameLayerManager (randomValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameLayerManager;

   procedure createRunnable (This : in out StartCanvas; randomLevel : Integer) is
      Java_Result : constant GameCanvasRunnableInterface_Access := StartCanvas'Class (This).createRunnable (randomLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRunnable;

begin
   null;
   id := 0;
   BOT_GAME_STATS := To_Unbounded_String ("Bot Game Statistics: ");

end org.allbinary.game.displayable.canvas.StartCanvas_Package;


