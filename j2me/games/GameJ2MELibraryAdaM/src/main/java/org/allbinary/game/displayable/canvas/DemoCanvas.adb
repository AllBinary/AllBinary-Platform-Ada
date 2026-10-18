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


package body org.allbinary.game.displayable.canvas.DemoCanvas_Package is

   procedure Initialize_Fields (This : in out DemoCanvas'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.myCommandsFactory := MyCommandsFactory_Package.getInstance;
      This.gameAdStateFactory := GameAdStateFactory_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.threadFactoryUtil := ThreadFactoryUtil_Package.getInstance;
      This.formUtil := FormUtil_Package.getInstance;
      This.fullscreenPaintable := FullScreenPaintableFactory_Package.getInstance.paintable;
      This.basicGameDemoPaintable := StatePaintableFactory_Package.getInstance;
      This.specialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
      This.fullScreenUtil := FullScreenUtil_Package.getInstance;
      This.gameCanvas := NullGameCanvas_Package.getInstance;
      This.highScoresHelper := HighScoresHelper_Package.Create;
      This.realHighScoresPaintable := HighScoresPaintable_Package.Create;
      This.highScoresPaintable := NullPaintable_Package.getInstance;
      This.state := 0;
      This.canvasThread := NullThread_Package.NULL_THREAD;
      This.timeDelayHelper := TimeDelayHelper_Package.Create (6000);
      This.basicColor := This.basicColorFactory.RED;
      
      
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
      
      This.initialized := False;
      
      This.defaultPaintableInterface := NullPaintable_Package.getInstance;
      This.paintableInterface := NullPaintable_Package.getInstance;
      
      This.progressPaintable := ProgressCanvasFactory_Package.getLazyInstance;
      This.tempWait := NullWaitGameRunnable_Package.getInstance.WAIT;
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.gameRunnable := NullWaitGameRunnable_Package.getInstance;
      This.isSingleKeyRepeatableProcessing := Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.lastKeyNotMapped := -(1);
      This.SET_STATE := To_Unbounded_String ("setState");
      This.baseGameStatistics := GameStatisticsFactory_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoCanvas'Class; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      paintable : constant Paintable_Access := Paintable_Access (paintable_Param);
      overlayPaintable : constant InitUpdatePaintable_Access := InitUpdatePaintable_Access (overlayPaintable_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
   begin
        RunnableCanvas_Package.Initialize (This, commandListener, CurrentDisplayableFactory_Package.getInstance.DEFAULT_CHILD_NAME_LIST, True);
        Initialize_Fields (This);
        This.abeClientInformation := abeClientInformation;
        DemoCanvas'Class (This).setWait (NullWaitGameRunnable_Package.getInstance.WAIT);
        This.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        GameInitializationUtil_Package.getInstance.initDemo (abeClientInformation, DemoCanvas_Access'(This'Unchecked_Access), gameInitializationInterfaceFactoryInterface);
        ResizableListenerHandler_Package.getInstance.fireEvent (False);
        This.overlayPaintable := overlayPaintable;
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        DemoCanvas'Class (This).setDefaultPaintableInterface (paintable);
        DemoCanvas'Class (This).setPaintableInterface (DemoCanvas'Class (This).getDefaultPaintableInterface);
        if isContinue then
            DemoCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CONTINUE_COMMAND);
        end if;
        if ChangedGameFeatureListener_Package.getInstance.isChangedFeature (GameFeatureFactory_Package.getInstance.SOUND) then
            DemoCanvas'Class (This).mediaInit;
        end if;
        This.demoGameRunnable := DemoGameStartupRunnable_Package.Create (DemoCanvas_Access'(This'Unchecked_Access));
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (DemoCanvas_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; paintable_Param : access Paintable_Package.Paintable'Class; overlayPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; isContinue : Boolean) return DemoCanvas_Access is
      This : constant DemoCanvas_Access := new DemoCanvas;
   begin
      DemoCanvas_Package.Initialize (This.all, abeClientInformation_Param, commandListener_Param, highScoresFactoryInterface_Param, paintable_Param, overlayPaintable_Param, gameInitializationInterfaceFactoryInterface_Param, isContinue);
      return This;
   end Create;

   procedure onEvent (This : in out DemoCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, DemoCanvas_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out DemoCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
      formType : FormType_Access;
      rectangle : Rectangle_Access;
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonLabels.START_LABEL).append (This.displayInfo.toString).toString, DemoCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
            scrollSelectionForm := DemoCanvas'Class (This).getMenuForm;
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
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, DemoCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
   end onDisplayChangeEvent;

   function getCustomCommands (This : in out DemoCanvas) return Java_Object_Access_Array_Access is
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

   procedure initCommands (This : in out DemoCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      commandArray : Java_Object_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        DemoCanvas'Class (This).removeAllCommands;
        commandArray := DemoCanvas'Class (This).getCustomCommands;
        size := commandArray'Length;
        for index in 0 .. (size) - 1 loop
            DemoCanvas'Class (This).addCommand (Command_Access (commandArray (index)));
        end loop;
        CustomGameMenuUtil_Package.add (DemoCanvas_Access'(This'Unchecked_Access));
        DemoCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure initPostPaint (This : in out DemoCanvas) is
   begin
        null;
   end initPostPaint;

   --  throws Exception
   procedure mediaInit (This : in out DemoCanvas) is
   begin
        AllBinaryMediaManager_Package.init (EarlySoundsFactory_Package.getInstance);
   end mediaInit;

   procedure itemStateChanged (This : in out DemoCanvas; item_Param : access Item_Package.Item'Class) is
      item : constant Item_Access := Item_Access (item_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, DemoCanvas_Access'(This'Unchecked_Access));
   end itemStateChanged;

   --  throws Exception
   procedure initMenu (This : in out DemoCanvas) is
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
      items : ABCustomItem_Access_Array_Access;
      formType : FormType_Access;
      rectangle : Rectangle_Access;
      scrollSelectionForm : ScrollSelectionForm_Access;
      formType2 : FormType_Access;
      rectangle2 : Rectangle_Access;
   begin
        DemoCanvas'Class (This).close;
        commandTextItemArrayFactory := DemoLimitedCommandTextItemArrayFactory_Package.getInstance.getCommandTextItemArrayFactory;
        items := commandTextItemArrayFactory.getInstance (DemoCanvas'Class (This).getCommandStack, This.basicColorFactory.BLACK, This.basicColorFactory.WHITE);
        formType := FormTypeFactory_Package.getInstance.getFormType;
        rectangle := This.formUtil.createFormRectangle;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.commonLabels.START_LABEL).append (This.displayInfo.toString).toString, DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("initMenu"));
        scrollSelectionForm := CommandCurrentSelectionFormFactory_Package.getInstance (StringUtil_Package.getInstance.EMPTY_STRING, items, rectangle, formType, 15, True, This.basicColorFactory.BLACK, This.basicColorFactory.WHITE);
        DemoCanvas'Class (This).setMenuForm (scrollSelectionForm);
        formType2 := FormTypeFactory_Package.getInstance.getFormType;
        rectangle2 := This.formUtil.createFormRectangle;
        scrollSelectionForm.init (rectangle2, formType2);
        if (DemoCanvas'Class (This).getMenuForm) /= (ScrollSelectionFormNoneFactory_Package.getInstance) then
            DemoCanvas'Class (This).setMenuInputProcessor (CommandFormInputProcessor_Package.Create (BasicArrayListD_Package.Create, -(1), DemoCanvas_Access'(This'Unchecked_Access), DemoCanvas'Class (This).getMenuForm));
        end if;
        DemoCanvas'Class (This).open;
   end initMenu;

   procedure open (This : in out DemoCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (DemoCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.addListener (DemoCanvas'Class (This).getMenuInputProcessor);
   end open;

   procedure close (This : in out DemoCanvas) is
   begin
        BasicMotionGesturesHandler_Package.getInstance.removeListener (DemoCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.removeListener (DemoCanvas'Class (This).getMenuInputProcessor);
   end close;

   function getSourceId (This : in out DemoCanvas) return Integer is
   begin
        return DemoCanvas_Package.id;
   end getSourceId;

   procedure keyPressed (This : in out DemoCanvas; keyCode : Integer) is
   begin
        DemoCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out DemoCanvas; keyCode : Integer) is
   begin
        DemoCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out DemoCanvas; keyCode : Integer) is
   begin
        DemoCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        DemoCanvas'Class (This).addGameKeyEvent (keyCode, False);
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        DemoCanvas'Class (This).removeGameKeyEvent (keyCode, False);
   end keyReleasedByDevice;

   procedure keyRepeatedByDevice (This : in out DemoCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            DemoCanvas'Class (This).addGameKeyEvent (keyCode, True);
        end if;
   end keyRepeatedByDevice;

   procedure addGameKeyEvent (This : in out DemoCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (DemoCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (DemoCanvas_Access'(This'Unchecked_Access), gameKey);
                DownGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                if (This.lastKeyNotMapped) /= (keyCode) then
                    This.lastKeyNotMapped := keyCode;
                    This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, DemoCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), DemoCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKeyEvent;

   procedure removeGameKeyEvent (This : in out DemoCanvas; keyCode : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (DemoCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (DemoCanvas_Access'(This'Unchecked_Access), gameKey);
                UpGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, DemoCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), DemoCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT, e);
                end;
        end;
   end removeGameKeyEvent;

   procedure pause (This : in out DemoCanvas) is
   begin
        DemoCanvas'Class (This).close;
        DemoCanvas'Class (This).setPaused (True);
        This.gameRunnable := NullWaitGameRunnable_Package.getInstance;
        This.gameCanvas.pause;
   end pause;

   procedure unPause (This : in out DemoCanvas) is
   begin
        DemoCanvas'Class (This).open;
        This.gameCanvas.unPause;
        This.gameRunnable := This.gameCanvas.gameRunnable;
        DemoCanvas'Class (This).setPaused (False);
   end unPause;

   function isPausable (This : in out DemoCanvas) return Boolean is
   begin
        if (CurrentDisplayableFactory_Package.getInstance.getUsedRunnable) = (NullWaitGameRunnable_Package.getInstance) then
            return True;
        else
            return False;
        end if;
   end isPausable;

   function isGameOver (This : in out DemoCanvas) return Boolean is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.NOT_IMPLEMENTED).append (To_Unbounded_String (" since not a game")).toString, DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("isGameOver"));
        return False;
   end isGameOver;

   --  throws Exception
   procedure setLoadStateHashtable (This : in out DemoCanvas; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setLoadStateHashtable"));
   end setLoadStateHashtable;

   --  throws Exception
   function getLoadStateHashtable (This : in out DemoCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to continue a demo lol - only continue a game canvas not the demo"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getLoadStateHashtable"));
        return This.stdUtil.NULL_TABLE;
   end getLoadStateHashtable;

   --  throws Exception
   function getCurrentStateHashtable (This : in out DemoCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (To_Unbounded_String ("Trying to save the AI lol"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getCurrentStateHashtable"));
        return This.stdUtil.NULL_TABLE;
   end getCurrentStateHashtable;

   procedure setHighScoreSubmitted (This : in out DemoCanvas; isNotUsed : Boolean) is
   begin
        null;
   end setHighScoreSubmitted;

   procedure paint (This : in out DemoCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintableInterface.paint (graphics);
        This.paintedSpecialAnimationInterface.paintXY (graphics, 0, 0);
        This.highScoresPaintable.paint (graphics);
        DemoCanvas'Class (This).getBasicGameDemoPaintable.paint (graphics);
        This.overlayPaintable.paint (graphics);
        This.fullscreenPaintable.paint (graphics);
        This.progressPaintable.paint (graphics);
   end paint;

   procedure paintThreed (This : in out DemoCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.paintableInterface.paintThreed (graphics);
        This.paintedSpecialAnimationInterface.paintThreedXYZ (graphics, 0, 0, 0);
   end paintThreed;

   procedure processGameOver (This : in out DemoCanvas) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Not Implemented since not a game"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setGameOver"));
   end processGameOver;

   procedure demoStateChange (This : in out DemoCanvas) is
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
                    DemoCanvas'Class (This).getRealHighScoresPaintable.setHighScores (highScores);
                end if;
            end if;
        end if;
        DemoCanvas'Class (This).setState (newState);
        DemoCanvas'Class (This).updateDemoState;
   end demoStateChange;

   procedure updateDemoState (This : in out DemoCanvas) is
      gameAdState : GameAdState_Access;
   begin
        PreLogUtil_Package.put (SmallIntegerSingletonFactory_Package.getInstance.createInstance (This.state).toString, DemoCanvas_Access'(This'Unchecked_Access), This.SET_STATE);
        DemoCanvas'Class (This).getBasicGameDemoPaintable.setState (This.state);
        if (This.state) = (0) then
            This.highScoresPaintable := NullPaintable_Package.getInstance;
            This.paintedSpecialAnimationInterface := DemoCanvas'Class (This).getSpecialAnimationInterface;
            if (not (This.demoGameRunnable.isRunning)) and then (This.gameCanvas.isInitialized) then
                DemoCanvas'Class (This).getSpecialAnimationInterface.reset;
            end if;
        elsif (This.state) = (1) then
            This.paintedSpecialAnimationInterface := SpecialAnimation_Package.getInstance;
        elsif (This.state) = (2) then
            This.highScoresPaintable := DemoCanvas'Class (This).getRealHighScoresPaintable;
        end if;
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.processPageAdState;
   end updateDemoState;

   --  throws Exception
   function getNextRandom (This : in out DemoCanvas) return Integer is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return 0;
   end getNextRandom;

   --  throws Exception
   function createGameLayerManager (This : in out DemoCanvas; randomValue : Integer) return AllBinaryGameLayerManager_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createGameLayerManager;

   --  throws Exception
   function createRunnable (This : in out DemoCanvas; randomLevel : Integer) return GameCanvasRunnableInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("Exception", This.commonStrings.NOT_IMPLEMENTED));
        return null;
   end createRunnable;

   --  throws Exception
   procedure create (This : in out DemoCanvas) is
      randomLevel : Integer;
      gameInfo : GameInfo_Access;
   begin
        PreLogUtil_Package.put (This.commonStrings.START, DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("create"));
        This.highScoresPaintable := NullPaintable_Package.getInstance;
        randomLevel := DemoCanvas'Class (This).getNextRandom;
        This.gameCanvas := AllBinaryGameCanvas_Access (DemoCanvas'Class (This).createRunnable (randomLevel));
        This.basicColor := This.gameCanvas.getLayerManager.getForegroundBasicColor;
        DemoCanvas'Class (This).getRealHighScoresPaintable.setBasicColorP (This.basicColor);
        This.gameCanvas.setGameCanvasStartListener (DemoCanvas_Access'(This'Unchecked_Access));
        gameInfo := This.gameCanvas.getLayerManager.getGameInfo;
        DemoCanvas'Class (This).getHighScoresFactoryInterface.fetchHighScores (gameInfo, This.highScoresHelper);
   end create;

   --  throws Exception
   procedure start (This : in out DemoCanvas) is
      gameCanvas : AllBinaryGameCanvas_Access;
   begin
        gameCanvas := This.gameCanvas;
        PreLogUtil_Package.put (StringMaker_Package.Create.append (To_Unbounded_String ("Game Thread in DemoCanvas: ")).append (This.stringUtil.toString (gameCanvas)).toString, DemoCanvas_Access'(This'Unchecked_Access), This.commonStrings.START);
        This.canvasThread := This.threadFactoryUtil.getInstanceGameCanvasRunnable (gameCanvas);
        This.gameCanvas.setThread (This.canvasThread);
        This.threadFactoryUtil.start (This.canvasThread);
        if (DemoCanvas'Class (This).getWait) = (NullWaitGameRunnable_Package.getInstance.WAIT) then
            DemoCanvas'Class (This).setWait (DemoCanvas'Class (This).getTempWait);
        end if;
   end start;

   procedure preDemoProcess (This : in out DemoCanvas) is
   begin
        if (not (This.gameCanvas.isInitialized)) or else ((This.gameCanvas.getTitle) = (NullGameCanvas_Package.NO_GAME)) then
            if AllBinaryMediaManager_Package.update then
                if not (PrimaryPlayerQueueFactory_Package.getInstance.process) then
                    SecondaryPlayerQueueFactory_Package.getInstance.process;
                end if;
            end if;
        end if;
        This.overlayPaintable.update;
   end preDemoProcess;

   --  throws Exception
   procedure process (This : in out DemoCanvas) is
      indexedAnimationBehavior : IndexedAnimationBehavior_Access;
      demoGameMidlet : DemoGameMidlet_Access;
      thread : Thread_Access;
      randomLevel : Integer;
      gameInfo : GameInfo_Access;
   begin
        RunnableCanvas (This).process;
        DemoCanvas'Class (This).getMenuInputProcessor.processInputList;
        DemoCanvas'Class (This).preDemoProcess;
        if (This.state) = (0) then
            indexedAnimationBehavior := (IndexedAnimationBehavior_Access (DemoCanvas'Class (This).getSpecialAnimationInterface.getAnimationBehavior));
            if (indexedAnimationBehavior.loopIndex) < (1) then
                This.timeDelayHelper.setStartTimeTNT;
            end if;
            demoGameMidlet := DemoGameMidlet_Access (DemoCanvas'Class (This).getCustomCommandListener);
            if ((This.gameCanvas) /= (NullGameCanvas_Package.getInstance)) and then (This.gameCanvas.isGameOver) then
                DemoCanvas'Class (This).stopGameDemo;
                randomLevel := DemoCanvas'Class (This).getNextRandom;
                gameInfo := This.gameCanvas.getLayerManager.getGameInfo;
                gameInfo.setCurrentLevel (randomLevel);
                This.gameCanvas.setGameOver (False);
                DemoCanvas'Class (This).start;
            elsif ((This.gameCanvas) = (NullGameCanvas_Package.getInstance)) and then (demoGameMidlet.isReady) then
                if not (This.demoGameRunnable.isRunning) then
                    DemoCanvas'Class (This).startDemoGame;
                    This.demoGameRunnable.setRunning (True);
                    thread := This.threadFactoryUtil.getInstanceForRunnable (This.demoGameRunnable);
                    This.demoGameRunnable.setThread (thread);
                    This.threadFactoryUtil.start (thread);
                end if;
            end if;
        end if;
   end process;

   --  throws Exception
   procedure startDemoGame (This : in out DemoCanvas) is
   begin
        DemoCanvasProgressUtil_Package.showProgress (DemoCanvas_Access'(This'Unchecked_Access));
   end startDemoGame;

   --  throws Exception
   procedure stopGameDemo (This : in out DemoCanvas) is
   begin
        if (This.gameCanvas) /= (NullGameCanvas_Package.getInstance) then
            This.logUtil.putF (To_Unbounded_String ("Set Running False"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("stopGameDemo"));
            This.gameCanvas.setRunning (False);
        end if;
        ThreadUtil_Package.getInstance.join (This.canvasThread);
   end stopGameDemo;

   procedure showGamePaintable (This : in out DemoCanvas) is
      METHOD_NAME : Unbounded_String;
      isDefault : Boolean;
   begin
        METHOD_NAME := To_Unbounded_String ("showGamePaintable");
        PreLogUtil_Package.put (This.commonStrings.START, DemoCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
        isDefault := J2MEUtil_Package.isHTML;
        if (((This.gameCanvas) /= (NullGameCanvas_Package.getInstance)) and then ((((This.gameCanvas.isRunning) or else (isDefault)) or else (SWTUtil_Package.isSWT)))) and then (not (((This.gameCanvas.getType) = (NullGameCanvas_Package.TYPE_Id)))) then
            This.gameRunnable := This.gameCanvas.gameRunnable;
            PreLogUtil_Package.put (To_Unbounded_String ("Showing Game"), DemoCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            DemoCanvas'Class (This).setPaintableInterface (This.gameCanvas);
        else
            This.gameRunnable := NullWaitGameRunnable_Package.getInstance;
            PreLogUtil_Package.put (To_Unbounded_String ("Not Showing Game"), DemoCanvas_Access'(This'Unchecked_Access), METHOD_NAME);
            DemoCanvas'Class (This).setPaintableInterface (DemoCanvas'Class (This).getDefaultPaintableInterface);
        end if;
   end showGamePaintable;

   function isReadyForStateChange (This : in out DemoCanvas) return Boolean is
   begin
        return (not (This.demoGameRunnable.isRunning)) and then (This.gameCanvas.isInitialized);
   end isReadyForStateChange;

   --  throws Exception
   procedure processGame (This : in out DemoCanvas) is
   begin
        This.gameRunnable.run;
        if (not (This.specialAnimationInterface.isComplete)) and then (DemoCanvas'Class (This).isReadyForStateChange) then
            This.specialAnimationInterface.nextFrame;
        end if;
        if (This.timeDelayHelper.isTimeTNT) and then (DemoCanvas'Class (This).isReadyForStateChange) then
            DemoCanvas'Class (This).demoStateChange;
        else
            DemoCanvas'Class (This).process;
        end if;
   end processGame;

   procedure run (This : in out DemoCanvas) is
      progressCanvas : ProgressCanvas_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      demoGameRunnable : DemoGameRunnable_Access;
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        This.logUtil.putF (This.commonStrings.START_RUNNABLE, DemoCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        begin
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            features := Features_Package.getInstance;
            openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread"));
            DemoCanvas'Class (This).setCurrentThread;
            DemoCanvas'Class (This).setRunning (True);
            if features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
                progressCanvas.end_Id;
            else
                progressCanvas.addNormalPortion (50, To_Unbounded_String ("Demo Thread Running"));
            end if;
            This.fullScreenUtil.initOnRun (DemoCanvas_Access'(This'Unchecked_Access), DemoCanvas'Class (This).getCustomCommandListener);
            DemoCanvas'Class (This).initMenu;
            DemoCanvas'Class (This).initPostPaint;
            DemoCanvas'Class (This).updateDemoState;
            if features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
                while ((This.gameCanvas) = (NullGameCanvas_Package.getInstance)) or else (not (This.gameCanvas.isInitialized)) loop
                    This.loopTimeHelper.setStartTimeTNT;
                    DemoCanvas'Class (This).processGame;
                    DemoCanvas'Class (This).processLoopSleep;
                end loop;
                demoGameRunnable := DemoGameRunnable_Package.Create (DemoCanvas_Access'(This'Unchecked_Access));
                currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                currentDisplayableFactory.setRunnable (demoGameRunnable);
                currentDisplayableFactory.setMyCanvas (DemoCanvas_Access'(This'Unchecked_Access));
                OpenGLThreadUtil_Package.getInstance.onResume;
            end if;
            if (features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or else (J2MEUtil_Package.isHTML) then
                demoGameRunnable := DemoGameRunnable_Package.Create (DemoCanvas_Access'(This'Unchecked_Access));
                currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                currentDisplayableFactory.setRunnable (demoGameRunnable);
                currentDisplayableFactory.setMyCanvas (DemoCanvas_Access'(This'Unchecked_Access));
            else
                while DemoCanvas'Class (This).isRunning loop
                    DemoCanvas'Class (This).run3;
                end loop;
                DemoCanvas'Class (This).end_Id;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, DemoCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
        This.logUtil.putF (This.commonStrings.END_RUNNABLE, DemoCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
   end run;

   --  throws Exception
   procedure run3 (This : in out DemoCanvas) is
   begin
        This.loopTimeHelper.setStartTimeTNT;
        DemoCanvas'Class (This).processGame;
        DemoCanvas'Class (This).processLoopSleep;
   end run3;

   procedure setRunning (This : in out DemoCanvas; running : Boolean) is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        RunnableCanvas (This).setRunning (running);
        begin
            features := Features_Package.getInstance;
            openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
            if running then
                null;
            else
                if (((features.isDefault (openGLFeatureFactory.OPENGL)) or else (J2MEUtil_Package.isHTML))) or else (SWTUtil_Package.isSWT) then
                    currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                    currentDisplayableFactory.clearRunnable;
                    DemoCanvas'Class (This).end_Id;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, DemoCanvas_Access'(This'Unchecked_Access), This.SET_RUNNING, e);
                end;
        end;
   end setRunning;

   --  throws Exception
   procedure end_Id (This : in out DemoCanvas) is
      progressCanvas : ProgressCanvas_Access;
      features : Features_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        features := Features_Package.getInstance;
        This.baseGameStatistics.add (StringMaker_Package.Create.append (DemoCanvas_Package.BOT_GAME_STATS).append (This.baseGameStatistics.toString).append (CommonSeps_Package.getInstance.NEW_LINE).toString);
        This.baseGameStatistics.init;
        if features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
            progressCanvas.start;
        end if;
        This.logUtil.putF (To_Unbounded_String ("Demo End"), DemoCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        DemoCanvas'Class (This).close;
        DisplayChangeEventHandler_Package.getInstance.removeListener (DemoCanvas_Access'(This'Unchecked_Access));
        DemoCanvas'Class (This).stopGameDemo;
   end end_Id;

   procedure setGameState (This : in out DemoCanvas; gameState_Param : access GameState_Package.GameState'Class) is
      gameState : constant GameState_Access := GameState_Access (gameState_Param);
   begin
        null;
   end setGameState;

   function getGameState (This : in out DemoCanvas) return GameState_Access is
   begin
        return This.gameStateFactory.PLAYING_GAME_STATE;
   end getGameState;

   function getGameCanvasRunnableInterface (This : in out DemoCanvas) return AllBinaryGameCanvas_Access is
   begin
        return This.gameCanvas;
   end getGameCanvasRunnableInterface;

   function isDemoLoading (This : in out DemoCanvas) return Boolean is
      gameCanvas : AllBinaryGameCanvas_Access;
   begin
        gameCanvas := This.gameCanvas;
        if (gameCanvas) = (NullGameCanvas_Package.getInstance) then
            return True;
        elsif gameCanvas.isInitialized then
            return False;
        end if;
        return True;
   end isDemoLoading;

   function getState (This : in out DemoCanvas) return Integer is
   begin
        return This.state;
   end getState;

   procedure setState (This : in out DemoCanvas; state : Integer) is
   begin
        This.state := state;
   end setState;

   function isHighScoreSubmitted (This : in out DemoCanvas) return Boolean is
   begin
        This.logUtil.putF (To_Unbounded_String ("Wow the AI got a high score!"), DemoCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("isHighScoreSubmitted"));
        return False;
   end isHighScoreSubmitted;

   function getRealHighScoresPaintable (This : in out DemoCanvas) return HighScoresPaintable_Access is
   begin
        return This.realHighScoresPaintable;
   end getRealHighScoresPaintable;

   procedure setSpecialAnimationInterface (This : in out DemoCanvas; specialAnimationInterface_Param : access SpecialAnimation_Package.SpecialAnimation'Class) is
      specialAnimationInterface : constant SpecialAnimation_Access := SpecialAnimation_Access (specialAnimationInterface_Param);
   begin
        specialAnimationInterface.setFrame (0);
        This.specialAnimationInterface := specialAnimationInterface;
   end setSpecialAnimationInterface;

   function getSpecialAnimationInterface (This : in out DemoCanvas) return SpecialAnimation_Access is
   begin
        return This.specialAnimationInterface;
   end getSpecialAnimationInterface;

   procedure setPaintableInterface (This : in out DemoCanvas; paintableInterface_Param : access PaintableInterface_Package.PaintableInterface'Class) is
      paintableInterface : constant PaintableInterface_Access := PaintableInterface_Access (paintableInterface_Param);
   begin
        This.paintableInterface := paintableInterface;
   end setPaintableInterface;

   function getPaintableInterface (This : in out DemoCanvas) return PaintableInterface_Access is
   begin
        return This.paintableInterface;
   end getPaintableInterface;

   procedure setDefaultPaintableInterface (This : in out DemoCanvas; defaultPaintableInterface_Param : access Paintable_Package.Paintable'Class) is
      defaultPaintableInterface : constant Paintable_Access := Paintable_Access (defaultPaintableInterface_Param);
   begin
        This.defaultPaintableInterface := defaultPaintableInterface;
   end setDefaultPaintableInterface;

   function getDefaultPaintableInterface (This : in out DemoCanvas) return Paintable_Access is
   begin
        return This.defaultPaintableInterface;
   end getDefaultPaintableInterface;

   function getHighScoresFactoryInterface (This : in out DemoCanvas) return HighScoresFactoryInterface_Access is
   begin
        return This.highScoresFactoryInterface;
   end getHighScoresFactoryInterface;

   procedure setMenuInputProcessor (This : in out DemoCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class) is
      menuInputProcessor : constant BasicMenuInputProcessor_Access := BasicMenuInputProcessor_Access (menuInputProcessor_Param);
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out DemoCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   function getMenuForm (This : in out DemoCanvas) return ScrollSelectionForm_Access is
   begin
        return This.menuForm;
   end getMenuForm;

   procedure setMenuForm (This : in out DemoCanvas; menuForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      menuForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (menuForm_Param);
   begin
        This.menuForm := menuForm;
   end setMenuForm;

   function isInitialized (This : in out DemoCanvas) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   function getOverlayPaintable (This : in out DemoCanvas) return Paintable_Access is
   begin
        return This.overlayPaintable;
   end getOverlayPaintable;

   procedure setBasicGameDemoPaintable (This : in out DemoCanvas; basicGameDemoPaintable_Param : access StatePaintable_Package.StatePaintable'Class) is
      basicGameDemoPaintable : constant StatePaintable_Access := StatePaintable_Access (basicGameDemoPaintable_Param);
   begin
        This.basicGameDemoPaintable := basicGameDemoPaintable;
   end setBasicGameDemoPaintable;

   function getBasicGameDemoPaintable (This : in out DemoCanvas) return StatePaintable_Access is
   begin
        return This.basicGameDemoPaintable;
   end getBasicGameDemoPaintable;

   procedure setTempWait (This : in out DemoCanvas; tempWait : Integer) is
   begin
        This.tempWait := tempWait;
   end setTempWait;

   function getTempWait (This : in out DemoCanvas) return Integer is
   begin
        return This.tempWait;
   end getTempWait;

   function isSingleThread (This : in out DemoCanvas) return Boolean is
   begin
        return (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) or else (SWTUtil_Package.isSWT);
   end isSingleThread;

   function isRunningInAnotherThread (This : in out DemoCanvas) return Boolean is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
            return True;
        else
            return DemoCanvas'Class (This).isRunning;
        end if;
   end isRunningInAnotherThread;

   function getGameInitializationInterfaceFactoryInterface (This : in out DemoCanvas) return BasicBuildGameInitializerFactory_Access is
   begin
        return This.gameInitializationInterfaceFactoryInterface;
   end getGameInitializationInterfaceFactoryInterface;

   function getType (This : in out DemoCanvas) return Integer is
   begin
        return DemoCanvas_Package.TYPE_Id;
   end getType;

   procedure createGameLayerManager (This : in out DemoCanvas; randomValue : Integer) is
      Java_Result : constant AllBinaryGameLayerManager_Access := DemoCanvas'Class (This).createGameLayerManager (randomValue);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createGameLayerManager;

   procedure createRunnable (This : in out DemoCanvas; randomLevel : Integer) is
      Java_Result : constant GameCanvasRunnableInterface_Access := DemoCanvas'Class (This).createRunnable (randomLevel);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRunnable;

begin
   null;
   id := 0;
   BOT_GAME_STATS := To_Unbounded_String ("Bot Game Statistics: ");
   TYPE_Id := 3;

end org.allbinary.game.displayable.canvas.DemoCanvas_Package;


