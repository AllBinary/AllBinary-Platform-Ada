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


package body org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package is

   procedure Initialize_Fields (This : in out AllBinaryGameCanvas'Class) is
   begin
      null;
      This.basicColorFactory := BasicColorFactory_Package.getInstance;
      This.basicSetColorUtil := BasicColorSetUtil_Package.getInstance;
      This.touchFeatureFactory := TouchFeatureFactory_Package.getInstance;
      This.openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
      This.touchButtonFactory := TouchButtonFactory_Package.getInstance;
      This.gameAdStateFactory := GameAdStateFactory_Package.getInstance;
      This.gameStrings := GameStrings_Package.getInstance;
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      This.gameStateFactory := GameStateFactory_Package.getInstance;
      This.gameTickTimeDelayHelper := GameTickTimeDelayHelperFactory_Package.getInstance;
      This.gameTickDisplayInfoSingleton := GameTickDisplayInfoSingleton_Package.getInstance;
      This.gameRunnable := GameCanvasRunnable_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
      This.gamePauseRunnable := GameCanvasPauseRunnable_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
      This.formUtil := FormUtil_Package.getInstance;
      This.myFormUtil := MyFormUtil_Package.getInstance;
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
      This.myFontProcessor := This.updateMyFontProcessor;
      This.gameSpecificPaintable := NullPaintable_Package.getInstance;
      This.sensorGameUpdateProcessor := SingleSensorGameUpdateProcessor_Package.Create;
      This.endGameInfo := EndGameInfo_Package.Create;
      This.startIntermissionInterface := Intermission_Package.Create;
      This.endLevelIntermissionInterface := Intermission_Package.Create;
      This.gameLayerManager := AllBinaryGameLayerManager_Package.getNullInstance;
      This.gameState := This.gameStateFactory.NO_GAME_STATE;
      This.gameOver := False;
      This.initialized := False;
      This.gameStateTimeHelper := TimeDelayHelper_Package.Create (0);
      
      This.highScoreSubmitted := False;
      This.realHighScoresPaintable := HighScoresPaintable_Package.Create;
      This.highScoresPaintable := NullPaintable_Package.getInstance;
      This.localPlayerGameInputList := BasicArrayListD_Package.Create;
      This.isCheating := False;
      This.hashtable := This.stdUtil.NULL_TABLE;
      This.isSingleKeyRepeatableProcessing := False;
      This.gameInitializationInterfaceFactoryInterface := BasicBuildGameInitializerFactory_Package.NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY;
      This.touchButtonsPaintable := NullPaintable_Package.getInstance;
      This.touchPaintable := NullPaintable_Package.getInstance;
      This.cheatProcessor := NoPlayerGameInput_Package.getInstance;
      This.gameInputProcessor := Processor_Package.getInstance;
      This.endGameProcessor := Processor_Package.getInstance;
      This.realEndGameProcessor := Processor_Package.getInstance;
      This.startIntermissionProcessor := Processor_Package.getInstance;
      This.realStartIntermissionProcessor := Processor_Package.getInstance;
      This.endGamePaintable := NullPaintable_Package.getInstance;
      This.endGameStatePaintable := NullPaintable_Package.getInstance;
      This.nonBotPaintable := NullPaintable_Package.getInstance;
      This.intermissionPaintable := NullPaintable_Package.getInstance;
      This.startIntermissionPaintable := NullInitUpdatePaintable_Package.getInstance;
      This.mainStateProcessor := Processor_Package.getInstance;
      This.processGameProcessor := Processor_Package.getInstance;
      
      This.startLevel := 0;
      This.mainMenuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.popupMenuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
      This.formPaintable := NullPaintable_Package.getInstance;
      This.openMenuPaintable := NullPaintable_Package.getInstance;
      This.menuPaintable := NullPaintable_Package.getInstance;
      This.currentTouchInputFactory := NoButtonsTouchInputFactory_Package.getInstance;
      This.colorFillPaintable := ColorFillPaintableFactory_Package.getInstance.getInstance (This.basicColorFactory.BLACK, True);
      This.baseGameStatistics := GameStatisticsFactory_Package.getInstance;
      This.primaryPlayerQueue := PrimaryPlayerQueueFactory_Package.getInstance;
      This.secondaryPlayerQueue := SecondaryPlayerQueueFactory_Package.getInstance;
      This.BUILD_GAME := To_Unbounded_String ("buildGame");
      This.gameTypeFactory := GameTypeFactory_Package.getInstance;
      This.screenCapture := ScreenCaptureFactory_Package.getInstance;
      This.basicMotionGesturesHandler := BasicMotionGesturesHandler_Package.getInstance;
      This.gameKeyEventHandler := GameKeyEventHandler_Package.getInstance;
      This.gameBehavior := null;
      This.menuBehavior := null;
      This.progressPaintable := ProgressCanvasFactory_Package.getLazyInstance;
      This.fontHeightP := 0;
      This.gameCanvasStartListener := NullDemoPaintable_Package.NULL_DEMO_PAINTABLE;
      This.rawGameInputProcessor := GameCanvasInputProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
      This.rawInputProcessor := FormInputProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
      This.inputProcessor := AllBinaryGameCanvas'Class (This).getRawGameInputProcessor;
      This.YIELD_SLEEP := 100;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryGameCanvas'Class; commandListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean) is
      commandListener : constant CommandListener_Access := CommandListener_Access (commandListener_Param);
      gameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (gameLayerManager_Param);
      highScoresFactoryInterface : constant HighScoresFactoryInterface_Access := HighScoresFactoryInterface_Access (highScoresFactoryInterface_Param);
      gameInitializationInterfaceFactoryInterface : constant BasicBuildGameInitializerFactory_Access := BasicBuildGameInitializerFactory_Access (gameInitializationInterfaceFactoryInterface_Param);
   begin
        RunnableCanvas_Package.Initialize (This, commandListener, CanvasStrings_Package.getInstance.EMPTY_CHILD_NAME_LIST, True);
        Initialize_Fields (This);
        This.highScoresHelper := highScoresFactoryInterface.createHighScoresHelper;
        This.gameInitializationInterfaceFactoryInterface := gameInitializationInterfaceFactoryInterface;
        AllBinaryGameCanvas'Class (This).init (gameLayerManager, buffered);
        This.highScoresFactoryInterface := highScoresFactoryInterface;
        if ((This.gameLayerManager.getGameInfo.getGameType) = (This.gameTypeFactory.BOT)) or else ((This.gameLayerManager.getGameInfo.getGameType) = (This.gameTypeFactory.NONE)) then
            This.gameBehavior := DemoGameBehavior_Package.getInstance;
            This.menuBehavior := BaseMenuBehavior_Package.getInstance;
        else
            This.gameBehavior := BaseGameBehavior_Package.getInstance;
            This.menuBehavior := AllBinaryGameCanvas'Class (This).getInGameMenuBehavior;
        end if;
        AllBinaryGameCanvas'Class (This).initPopupMenu;
        AllBinaryGameCanvas'Class (This).initMenu;
        AllBinaryGameCanvas'Class (This).initSpecialPaint;
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (commandListener_Param : access CommandListener_Package.CommandListener'Class; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; highScoresFactoryInterface_Param : access HighScoresFactoryInterface_Package.HighScoresFactoryInterface'Class; gameInitializationInterfaceFactoryInterface_Param : access BasicBuildGameInitializerFactory_Package.BasicBuildGameInitializerFactory'Class; buffered : Boolean) return AllBinaryGameCanvas_Access is
      This : constant AllBinaryGameCanvas_Access := new AllBinaryGameCanvas;
   begin
      AllBinaryGameCanvas_Package.Initialize (This.all, commandListener_Param, gameLayerManager_Param, highScoresFactoryInterface_Param, gameInitializationInterfaceFactoryInterface_Param, buffered);
      return This;
   end Create;

   procedure updateMeasurement (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      popupMenuRectangle : Rectangle_Access;
      basicPopupMenuPaintable : BasicPopupMenuPaintable_Access;
      popupMenuInputProcessor : PopupMenuInputProcessor_Access;
   begin
        begin
            font := graphics.getFont;
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.canvasStrings.FD_WIDTH).appendint (Integer (MyFontProcessor_Package.defaultCharWidth (font))).append (This.canvasStrings.FD_HEIGHT).appendint (Integer (font.getHeight)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.canvasStrings.UPDATE_MEASUREMENT);
            This.fontHeightP := font.getHeight;
            This.myFormUtil.updateMeasurement (graphics);
            popupMenuRectangle := This.myFormUtil.getPopupMenuRectangle;
            basicPopupMenuPaintable := (BasicPopupMenuPaintable_Access (AllBinaryGameCanvas'Class (This).getOpenMenuPaintable));
            basicPopupMenuPaintable.init (popupMenuRectangle);
            if (AllBinaryGameCanvas'Class (This).getPopupMenuInputProcessor) /= (NoMenuInputProcessor_Package.getInstance) then
                popupMenuInputProcessor := (PopupMenuInputProcessor_Access (AllBinaryGameCanvas'Class (This).getPopupMenuInputProcessor));
                popupMenuInputProcessor.init (popupMenuRectangle);
            end if;
            This.myFontProcessor := MyFontProcessor_Package.getInstance;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
   end updateMeasurement;

   function getInGameMenuBehavior (This : in out AllBinaryGameCanvas) return BaseMenuBehavior_Access is
   begin
        return InGameMenuBehavior_Package.getInstance;
   end getInGameMenuBehavior;

   procedure setCurrentThread (This : in out AllBinaryGameCanvas) is
   begin
        if J2MEUtil_Package.isHTML then
            RunnableCanvas (This).setCurrentThreadFake;
        else
            RunnableCanvas (This).setCurrentThread;
        end if;
   end setCurrentThread;

   procedure onEvent (This : in out AllBinaryGameCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out AllBinaryGameCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        begin
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (DisplayInfoSingleton_Package.getInstance.toString).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.canvasStrings.UPDATE_MEASUREMENT);
            This.myFontProcessor := This.updateMyFontProcessor;
            This.menuBehavior.onDisplayChangeEvent (AllBinaryGameCanvas_Access'(This'Unchecked_Access), displayChangeEvent);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
   end onDisplayChangeEvent;

   --  throws Exception
   procedure updateMenuFromEvent (This : in out AllBinaryGameCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
      formType : FormType_Access;
      rectangle : Rectangle_Access;
   begin
        formType := FormTypeFactory_Package.getInstance.getFormType;
        rectangle := This.formUtil.createFormRectangle;
        This.menuForm.init (rectangle, formType);
        if (This.currentTouchInputFactory) /= (NoButtonsTouchInputFactory_Package.getInstance) then
            This.touchButtonFactory.toggle (AllBinaryGameCanvas'Class (This).isPaused, This.currentTouchInputFactory.getList);
        end if;
        This.myFontProcessor := This.updateMyFontProcessor;
   end updateMenuFromEvent;

   --  throws Exception
   procedure processSleep (This : in out AllBinaryGameCanvas) is
   begin
        RunnableCanvas (This).processSleep;
        if AllBinaryMediaManager_Package.update then
            if not (This.primaryPlayerQueue.process) then
                This.secondaryPlayerQueue.process;
            end if;
        end if;
        if (This.menuInputProcessor.processInputList) /= (-(1)) then
            This.runnableCanvasRefreshHelper.process;
        end if;
   end processSleep;

   --  throws Exception
   procedure initPopupMenu (This : in out AllBinaryGameCanvas) is
      features : Features_Access;
      popupMenuRectangle : Rectangle_Access;
   begin
        if (This.popupMenuInputProcessor) = (NoMenuInputProcessor_Package.getInstance) then
            features := Features_Package.getInstance;
            popupMenuRectangle := This.myFormUtil.getPopupMenuRectangle;
            if features.isFeature (This.touchFeatureFactory.TOUCH_ENABLED) then
                AllBinaryGameCanvas'Class (This).setOpenMenuPaintable (BasicPopupMenuPaintable_Package.Create (popupMenuRectangle, This.gameLayerManager.getBackgroundBasicColor, This.gameLayerManager.getForegroundBasicColor));
                AllBinaryGameCanvas'Class (This).setPopupMenuInputProcessor (PopupMenuInputProcessor_Package.Create (BasicArrayListD_Package.Create, -(1), AllBinaryGameCanvas_Access'(This'Unchecked_Access), popupMenuRectangle));
            end if;
        else
            null;
        end if;
   end initPopupMenu;

   procedure initMenu (This : in out AllBinaryGameCanvas) is
   begin
        begin
            This.menuBehavior.initMenu (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("initMenu"), e);
                end;
        end;
   end initMenu;

   --  throws Exception
   procedure initMenu2 (This : in out AllBinaryGameCanvas) is
      formType : FormType_Access;
      gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory_Access;
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
      items : ABCustomItem_Access_Array_Access;
      rectangle : Rectangle_Access;
      scrollSelectionForm : ScrollSelectionForm_Access;
      features : Features_Access;
   begin
        AllBinaryGameCanvas'Class (This).closeMenu;
        formType := FormTypeFactory_Package.getInstance.getFormType;
        gameLimitedCommandTextItemArrayFactory := GameLimitedCommandTextItemArrayFactory_Package.getInstance;
        commandTextItemArrayFactory := gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory;
        items := commandTextItemArrayFactory.getInstance (AllBinaryGameCanvas'Class (This).getCommandStack, This.gameLayerManager.getBackgroundBasicColor, This.gameLayerManager.getForegroundBasicColor);
        rectangle := This.formUtil.createFormRectangle;
        AllBinaryGameCanvas'Class (This).setMenuForm (CommandCurrentSelectionFormFactory_Package.getInstance (StringUtil_Package.getInstance.EMPTY_STRING, items, rectangle, formType, 25, False, This.gameLayerManager.getBackgroundBasicColor, This.gameLayerManager.getForegroundBasicColor));
        scrollSelectionForm := AllBinaryGameCanvas'Class (This).getMenuForm;
        features := Features_Package.getInstance;
        if features.isFeature (This.touchFeatureFactory.TOUCH_ENABLED) then
            This.mainMenuInputProcessor := PopupCommandFormInputProcessor_Package.Create (BasicArrayListD_Package.Create, -(1), AllBinaryGameCanvas_Access'(This'Unchecked_Access), scrollSelectionForm, PopupMenuInputProcessor_Access (AllBinaryGameCanvas'Class (This).getPopupMenuInputProcessor));
        else
            null;
        end if;
        AllBinaryGameCanvas'Class (This).setMenuInputProcessor (AllBinaryGameCanvas'Class (This).getPopupMenuInputProcessor);
        if (scrollSelectionForm) /= (ScrollSelectionFormNoneFactory_Package.getInstance) then
            AllBinaryGameCanvas'Class (This).setFormPaintable (FormPaintable_Package.Create (scrollSelectionForm));
        else
            null;
        end if;
        AllBinaryGameCanvas'Class (This).closeMenu;
   end initMenu2;

   procedure updateMenu (This : in out AllBinaryGameCanvas) is
   begin
        begin
            This.menuBehavior.updateMenu (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("initMenu"), e);
                end;
        end;
   end updateMenu;

   --  throws Exception
   procedure updateMenu2 (This : in out AllBinaryGameCanvas) is
      scrollSelectionForm : ScrollSelectionForm_Access;
      gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory_Access;
      commandTextItemArrayFactory : CommandTextItemArrayFactory_Access;
      items : ABCustomItem_Access_Array_Access;
      size : Integer;
      index : Integer;
      formType : FormType_Access;
      rectangle : Rectangle_Access;
   begin
        scrollSelectionForm := AllBinaryGameCanvas'Class (This).getMenuForm;
        scrollSelectionForm.deleteAll;
        gameLimitedCommandTextItemArrayFactory := GameLimitedCommandTextItemArrayFactory_Package.getInstance;
        commandTextItemArrayFactory := gameLimitedCommandTextItemArrayFactory.getCommandTextItemArrayFactory;
        items := commandTextItemArrayFactory.getInstance (AllBinaryGameCanvas'Class (This).getCommandStack, This.gameLayerManager.getBackgroundBasicColor, This.gameLayerManager.getForegroundBasicColor);
        size := items'Length;
        for index in 0 .. (size) - 1 loop
            scrollSelectionForm.append (items (index));
        end loop;
        formType := FormTypeFactory_Package.getInstance.getFormType;
        rectangle := This.formUtil.createFormRectangle;
        scrollSelectionForm.init (rectangle, formType);
   end updateMenu2;

   procedure pause (This : in out AllBinaryGameCanvas) is
   begin
        This.gameBehavior.pause (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        AllBinaryGameCanvas'Class (This).closeMenu;
        RunnableCanvas (This).pause;
        This.touchButtonFactory.toggle (AllBinaryGameCanvas'Class (This).isPaused, BasicArrayListUtil_Package.getInstance.getImmutableInstance);
        This.tsUtil.gc;
   end pause;

   procedure unPause (This : in out AllBinaryGameCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameStrings.UNPAUSE);
        AllBinaryGameCanvas'Class (This).closeMenu;
        This.tsUtil.gc;
        RunnableCanvas (This).unPause;
        This.touchButtonFactory.toggle (AllBinaryGameCanvas'Class (This).isPaused, BasicArrayListUtil_Package.getInstance.getImmutableInstance);
        This.gameBehavior.unPause (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end unPause;

   function isPausable (This : in out AllBinaryGameCanvas) return Boolean is
   begin
        if (CurrentDisplayableFactory_Package.getInstance.getUsedRunnable) = (NullWaitGameRunnable_Package.getInstance) then
            return True;
        else
            return False;
        end if;
   end isPausable;

   --  throws Exception
   procedure popupMenu (This : in out AllBinaryGameCanvas) is
   begin
        This.menuBehavior.popupMenu (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end popupMenu;

   --  throws Exception
   procedure popupMenu2 (This : in out AllBinaryGameCanvas) is
   begin
        This.primaryPlayerQueue.add (SelectSound_Package.getInstance);
        AllBinaryGameCanvas'Class (This).setMenuPaintable (AllBinaryGameCanvas'Class (This).getFormPaintable);
        AllBinaryGameCanvas'Class (This).setMenuInputProcessor (This.mainMenuInputProcessor);
        This.basicMotionGesturesHandler.addListenerInterface (This.mainMenuInputProcessor);
        This.gameKeyEventHandler.addListener (This.mainMenuInputProcessor);
   end popupMenu2;

   --  throws Exception
   procedure toggleMenu (This : in out AllBinaryGameCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameStrings.TOGGLE_MENU);
        if (AllBinaryGameCanvas'Class (This).getMenuPaintable) = (AllBinaryGameCanvas'Class (This).getOpenMenuPaintable) then
            AllBinaryGameCanvas'Class (This).pause;
            AllBinaryGameCanvas'Class (This).updateMenu;
            AllBinaryGameCanvas'Class (This).popupMenu;
        elsif (AllBinaryGameCanvas'Class (This).getMenuPaintable) = (AllBinaryGameCanvas'Class (This).getFormPaintable) then
            This.primaryPlayerQueue.add (SelectSound_Package.getInstance);
            AllBinaryGameCanvas'Class (This).unPause;
        end if;
   end toggleMenu;

   procedure closeMenu (This : in out AllBinaryGameCanvas) is
   begin
        This.menuBehavior.closeMenu (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end closeMenu;

   procedure closeMenu2 (This : in out AllBinaryGameCanvas) is
   begin
        AllBinaryGameCanvas'Class (This).setMenuPaintable (AllBinaryGameCanvas'Class (This).getOpenMenuPaintable);
        This.basicMotionGesturesHandler.removeListener (This.mainMenuInputProcessor);
        This.gameKeyEventHandler.removeListener (This.mainMenuInputProcessor);
        AllBinaryGameCanvas'Class (This).setMenuInputProcessor (AllBinaryGameCanvas'Class (This).getPopupMenuInputProcessor);
   end closeMenu2;

   procedure open (This : in out AllBinaryGameCanvas) is
   begin
        This.basicMotionGesturesHandler.addListenerInterface (This.menuInputProcessor);
        This.gameKeyEventHandler.addListener (This.menuInputProcessor);
   end open;

   procedure close (This : in out AllBinaryGameCanvas) is
   begin
        This.basicMotionGesturesHandler.removeListener (This.menuInputProcessor);
        This.gameKeyEventHandler.removeListener (This.menuInputProcessor);
        This.primaryPlayerQueue.clear;
        This.secondaryPlayerQueue.clear;
   end close;

   --  throws Exception
   procedure processorInit (This : in out AllBinaryGameCanvas) is
   begin
        AllBinaryGameCanvas'Class (This).setMainStateProcessor (Processor_Package.getInstance);
        AllBinaryGameCanvas'Class (This).setProcessGameProcessorInit;
   end processorInit;

   procedure setProcessGameProcessorInit (This : in out AllBinaryGameCanvas) is
   begin
        AllBinaryGameCanvas'Class (This).setProcessGameProcessor (GameProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access)));
   end setProcessGameProcessorInit;

   procedure initSpecialPaint (This : in out AllBinaryGameCanvas) is
   begin
        This.menuBehavior.initSpecialPaint (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end initSpecialPaint;

   --  throws Exception
   procedure init (This : in out AllBinaryGameCanvas; gameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; buffered : Boolean) is
      gameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (gameLayerManager_Param);
      BUFF_MESSAGE : Unbounded_String;
      features : Features_Access;
   begin
        This.gameStateTimeHelper.setStartTimeTNT;
        AllBinaryGameCanvas'Class (This).setHighScoreSubmitted (False);
        AllBinaryGameCanvas'Class (This).setLayerManager (gameLayerManager);
        if not (buffered) then
            BUFF_MESSAGE := To_Unbounded_String ("XXX Not Buffering Causes Concurrency Issues XXX");
            This.logUtil.putF (BUFF_MESSAGE, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Buffering is disabled")));
        end if;
        AllBinaryGameCanvas'Class (This).setGameInputProcessor (Processor_Package.getInstance);
        features := Features_Package.getInstance;
        if features.isFeature (GameFeatureFactory_Package.getInstance.CHEATING) then
            This.isCheating := True;
            This.cheatProcessor := CheatGameInputProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
            This.gameKeyEventHandler.addListener (This.cheatProcessor);
        else
            This.isCheating := False;
            This.cheatProcessor := NoPlayerGameInput_Package.getInstance;
        end if;
        This.realEndGameProcessor := EndGameProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        AllBinaryGameCanvas'Class (This).setEndGameProcessor (Processor_Package.getInstance);
        This.realStartIntermissionProcessor := StartIntermissionProcessor_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        This.startIntermissionProcessor := Processor_Package.getInstance;
        AllBinaryGameCanvas'Class (This).setEndGameStatePaintable (EndGamePaintable_Package.Create (AllBinaryGameCanvas_Access'(This'Unchecked_Access)));
        AllBinaryGameCanvas'Class (This).setEndGamePaintable (NullPaintable_Package.getInstance);
        AllBinaryGameCanvas'Class (This).setIntermissionPaintable (NullPaintable_Package.getInstance);
        AllBinaryGameCanvas'Class (This).getStartIntermissionInterface.setListener (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end init;

   procedure notifyIntermission (This : in out AllBinaryGameCanvas; enable : Boolean) is
   begin
        if enable then
            This.startIntermissionProcessor := This.realStartIntermissionProcessor;
        else
            This.startIntermissionProcessor := Processor_Package.getInstance;
        end if;
        if enable then
            AllBinaryGameCanvas'Class (This).setIntermissionPaintable (AllBinaryGameCanvas'Class (This).getStartIntermissionPaintable);
        else
            AllBinaryGameCanvas'Class (This).setIntermissionPaintable (NullPaintable_Package.getInstance);
        end if;
   end notifyIntermission;

   --  throws Exception
   procedure mediaInit (This : in out AllBinaryGameCanvas) is
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end mediaInit;

   --  throws Exception
   procedure initConfigurable (This : in out AllBinaryGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      progressCanvas : ProgressCanvas_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
      changedGameFeatureListener : ChangedGameFeatureListener_Access;
      features : Features_Access;
      sensorFeatureFactory : SensorFeatureFactory_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.addNormalPortion (50, To_Unbounded_String ("Setting Configurables"));
        GameInitializationUtil_Package.getInstance.initGame (abeClientInformation, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameInitializationInterfaceFactoryInterface);
        gameFeatureFactory := GameFeatureFactory_Package.getInstance;
        changedGameFeatureListener := ChangedGameFeatureListener_Package.getInstance;
        if changedGameFeatureListener.isChangedFeature (gameFeatureFactory.SOUND) then
            features := Features_Package.getInstance;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Sound Changing To: ")).appendboolean (features.isFeature (gameFeatureFactory.SOUND)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("initConfigurable"));
            AllBinaryGameCanvas'Class (This).mediaInit;
            changedGameFeatureListener.remove (gameFeatureFactory.SOUND);
        end if;
        sensorFeatureFactory := SensorFeatureFactory_Package.getInstance;
        if ((changedGameFeatureListener.isChangedFeature (sensorFeatureFactory.ORIENTATION_SENSORS)) or else (changedGameFeatureListener.isChangedFeature (sensorFeatureFactory.NO_ORIENTATION))) or else (changedGameFeatureListener.isChangedFeature (sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS)) then
            changedGameFeatureListener.remove (sensorFeatureFactory.NO_ORIENTATION);
            changedGameFeatureListener.remove (sensorFeatureFactory.ORIENTATION_SENSORS);
            changedGameFeatureListener.remove (sensorFeatureFactory.SIMULATED_ORIENTATION_SENSORS);
        end if;
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        AllBinaryGameCanvas'Class (This).loadResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_GAME);
   end initConfigurable;

   --  throws Exception
   procedure initApp (This : in out AllBinaryGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        AllBinaryGameCanvas'Class (This).initConfigurable (abeClientInformation);
        AllBinaryGameCanvas'Class (This).processorInit;
        This.sensorGameUpdateProcessor.process (This.gameLayerManager);
        This.sensorGameUpdateProcessor.sendNotifications (This.gameLayerManager);
        AllBinaryGameCanvas'Class (This).initTouch;
   end initApp;

   --  throws Exception
   procedure initTouch (This : in out AllBinaryGameCanvas) is
      gameInitializedEvent : GameInitializedEvent_Access;
      resourceLoadingLevelFactory : ResourceLoadingLevelFactory_Access;
   begin
        gameInitializedEvent := GameInitializationUtil_Package.getInstance.EVENT;
        resourceLoadingLevelFactory := ResourceLoadingLevelFactory_Package.getInstance;
        gameInitializedEvent.setResourceLoadingLevel (resourceLoadingLevelFactory.LOAD_TOUCH);
        GameInitializedEventHandler_Package.getInstance.fireEvent (gameInitializedEvent);
        This.touchButtonFactory.defaultList;
        AllBinaryGameCanvas'Class (This).updateTouch;
        AllBinaryGameCanvas'Class (This).postInitTouch;
   end initTouch;

   --  throws Exception
   procedure updateCurrentTouchInputFactory (This : in out AllBinaryGameCanvas; nextTouchInput_Param : access BaseTouchInput_Package.BaseTouchInput'Class) is
      nextTouchInput : constant BaseTouchInput_Access := BaseTouchInput_Access (nextTouchInput_Param);
   begin
        if (nextTouchInput) /= (This.currentTouchInputFactory) then
            This.currentTouchInputFactory := nextTouchInput;
            PreLogUtil_Package.put (This.currentTouchInputFactory.toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.UDPATE_CURRENT_TOUCH_INPUT_FACTORY);
            This.touchButtonFactory.toggle (AllBinaryGameCanvas'Class (This).isPaused, This.currentTouchInputFactory.getList);
        end if;
   end updateCurrentTouchInputFactory;

   --  throws Exception
   procedure updateTouch (This : in out AllBinaryGameCanvas) is
   begin
        This.gameBehavior.updateTouch (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end updateTouch;

   --  throws Exception
   procedure updateTouch2 (This : in out AllBinaryGameCanvas) is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if features.isFeature (This.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then
            if ((This.gameLayerManager.getGameInfo.getCurrentLevel) - (AllBinaryGameCanvas'Class (This).getStartLevel)) = (1) then
                AllBinaryGameCanvas'Class (This).setTouchPaintableP (NullPaintable_Package.getInstance);
            end if;
        end if;
   end updateTouch2;

   --  throws Exception
   procedure postInitTouch (This : in out AllBinaryGameCanvas) is
   begin
        AllBinaryGameCanvas'Class (This).setTouchButtonsPaintable (TouchButtonsPaintableFactory_Package.getInstance (This.gameLayerManager.getForegroundBasicColor));
        AllBinaryGameCanvas'Class (This).updateScreenButtonPaintable;
   end postInitTouch;

   procedure initCommands (This : in out AllBinaryGameCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        AllBinaryGameCanvas'Class (This).removeAllCommands;
        AllBinaryGameCanvas'Class (This).addCommands;
        AllBinaryGameCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   procedure addCommands (This : in out AllBinaryGameCanvas) is
      gameCommandsFactory : GameCommandsFactory_Access;
      myCommandsFactory : MyCommandsFactory_Access;
      isOverScan : Boolean;
   begin
        gameCommandsFactory := GameCommandsFactory_Package.getInstance;
        myCommandsFactory := MyCommandsFactory_Package.getInstance;
        if (DebugFactory_Package.getInstance) /= (NoDebug_Package.getInstance) then
            AllBinaryGameCanvas'Class (This).addCommand (gameCommandsFactory.START_TRACE);
        end if;
        AllBinaryGameCanvas'Class (This).addCommand (gameCommandsFactory.RESTART_COMMAND);
        AllBinaryGameCanvas'Class (This).addCommand (myCommandsFactory.PAUSE_COMMAND);
        AllBinaryGameCanvas'Class (This).addCommand (gameCommandsFactory.QUIT_COMMAND);
        isOverScan := OperatingSystemFactory_Package.getInstance.getOperatingSystemInstance.isOverScan;
        if J2MEUtil_Package.isHTML then
            null;
        elsif SWTUtil_Package.isSWT then
            null;
        elsif not (isOverScan) then
            if (TouchScreenFactory_Package.getInstance.isTouch) and then (InGameFeatures_Package.Create.isAny) then
                AllBinaryGameCanvas'Class (This).addCommand (InGameOptionsForm_Package.DISPLAY);
            end if;
            AllBinaryGameCanvas'Class (This).addCommand (gameCommandsFactory.SAVE);
            AllBinaryGameCanvas'Class (This).addCommand (gameCommandsFactory.DISPLAY_LOAD_FORM);
        end if;
   end addCommands;

   procedure itemStateChanged (This : in out AllBinaryGameCanvas; item_Param : access Item_Package.Item'Class) is
      item : constant Item_Access := Item_Access (item_Param);
      itemLabel : Unbounded_String;
      gameFeatureUtil : GameFeatureUtil_Access;
   begin
        begin
            itemLabel := item.getLabel;
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonLabels.ITEM_LABEL).append (itemLabel).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("itemStateChanged"));
            if (item.all in ChoiceGroup_Package.ChoiceGroup'Class) then
                gameFeatureUtil := GameFeatureUtil_Package.getInstance;
                if gameFeatureUtil.isExclusive (itemLabel) then
                    gameFeatureUtil.updateExclusiveForChoiceGroup (ChoiceGroup_Access (item));
                else
                    gameFeatureUtil.updateMultiple (ChoiceGroup_Access (item));
                end if;
            end if;
            This.sensorGameUpdateProcessor.process (This.gameLayerManager);
            AllBinaryGameCanvas'Class (This).updateTouch;
            AllBinaryGameCanvas'Class (This).updateScreenButtonPaintable;
            This.sensorGameUpdateProcessor.sendNotifications (This.gameLayerManager);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("itemStateChanged"), e);
                end;
        end;
   end itemStateChanged;

   --  throws Exception
   procedure updateScreenButtonPaintable (This : in out AllBinaryGameCanvas) is
   begin
        This.gameBehavior.updateScreenButtonPaintable (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end updateScreenButtonPaintable;

   procedure updateScreenButtonPaintable2 (This : in out AllBinaryGameCanvas) is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if features.isFeature (This.touchFeatureFactory.AUTO_HIDE_SHOW_SCREEN_BUTTONS) then
            AllBinaryGameCanvas'Class (This).setTouchPaintableP (AllBinaryGameCanvas'Class (This).getTouchButtonsPaintable);
            AllBinaryGameCanvas'Class (This).setStartLevel (This.gameLayerManager.getGameInfo.getCurrentLevel);
        elsif features.isFeature (This.touchFeatureFactory.SHOW_SCREEN_BUTTONS) then
            AllBinaryGameCanvas'Class (This).setTouchPaintableP (AllBinaryGameCanvas'Class (This).getTouchButtonsPaintable);
        elsif features.isFeature (This.touchFeatureFactory.HIDE_SCREEN_BUTTONS) then
            AllBinaryGameCanvas'Class (This).setTouchPaintableP (NullPaintable_Package.getInstance);
        else
            AllBinaryGameCanvas'Class (This).setTouchPaintableP (NullPaintable_Package.getInstance);
        end if;
   end updateScreenButtonPaintable2;

   function getLayerManager (This : in out AllBinaryGameCanvas) return AllBinaryGameLayerManager_Access is
   begin
        return This.gameLayerManager;
   end getLayerManager;

   procedure setLayerManager (This : in out AllBinaryGameCanvas; layerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      layerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (layerManager_Param);
   begin
        This.gameLayerManager := layerManager;
   end setLayerManager;

   function isGameOver (This : in out AllBinaryGameCanvas) return Boolean is
   begin
        return This.gameOver;
   end isGameOver;

   procedure setGameOver (This : in out AllBinaryGameCanvas; gameOver : Boolean) is
   begin
        This.gameOver := gameOver;
   end setGameOver;

   --  throws Exception
   procedure processGameOver (This : in out AllBinaryGameCanvas) is
   begin
        PreLogUtil_Package.put (This.commonStrings.START, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameStrings.SET_GAME_OVER);
        AllBinaryGameCanvas'Class (This).setGameOver (True);
        AllBinaryGameCanvas'Class (This).removePauseCommand;
        AllBinaryGameCanvas'Class (This).setGameState (This.gameStateFactory.SHOW_END_RESULT_GAME_STATE);
        AllBinaryGameCanvas'Class (This).setEndGamePaintable (AllBinaryGameCanvas'Class (This).getEndGameStatePaintable);
   end processGameOver;

   function isHighScoreSubmitted (This : in out AllBinaryGameCanvas) return Boolean is
   begin
        return This.highScoreSubmitted;
   end isHighScoreSubmitted;

   --  throws Exception
   procedure setHighScoreSubmitted (This : in out AllBinaryGameCanvas; highScoreSubmitted : Boolean) is
   begin
        This.highScoreSubmitted := highScoreSubmitted;
        if highScoreSubmitted then
            This.highScoresHelper.setSelectedHighScores (NullHighScoresSingletonFactory_Package.getInstance);
        end if;
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("isHighScoreSubmitted: ")).appendboolean (highScoreSubmitted).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setHighScoreSubmitted"));
   end setHighScoreSubmitted;

   function getGameState (This : in out AllBinaryGameCanvas) return GameState_Access is
   begin
        return This.gameState;
   end getGameState;

   --  throws Exception
   procedure setGameState (This : in out AllBinaryGameCanvas; gameState_Param : access GameState_Package.GameState'Class) is
      gameState : constant GameState_Access := GameState_Access (gameState_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.gameStrings.GAME_STATE).append (This.stringUtil.toString (gameState)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.gameStrings.SET_GAME_STATE);
        This.gameState := gameState;
        This.gameStateTimeHelper.setStartTimeTNT;
        AllBinaryGameCanvas'Class (This).updateEndGameProcessor;
        AllBinaryGameCanvas'Class (This).updateGameKeyEventProcessor;
        This.gameBehavior.setGameState (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end setGameState;

   --  throws Exception
   procedure updateGameState (This : in out AllBinaryGameCanvas) is
      gameAdState : GameAdState_Access;
   begin
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.processAdState (This.gameState, This.gameLayerManager.getGameInfo.getGameType);
        if (This.gameState) /= (This.gameStateFactory.PLAYING_GAME_STATE) then
            gameAdState.processPageAdState;
        end if;
   end updateGameState;

   procedure updateGameKeyEventProcessor (This : in out AllBinaryGameCanvas) is
   begin
        if ((AllBinaryGameCanvas'Class (This).getGameState) /= (This.gameStateFactory.PLAYING_GAME_STATE)) or else (This.isCheating) then
            null;
        else
            null;
        end if;
   end updateGameKeyEventProcessor;

   procedure removeAllGameKeyInputListenersOnBuild (This : in out AllBinaryGameCanvas) is
   begin
        AllBinaryGameCanvas'Class (This).removeAllGameKeyInputListeners;
   end removeAllGameKeyInputListenersOnBuild;

   procedure removeAllGameKeyInputListeners (This : in out AllBinaryGameCanvas) is
   begin
        This.gameBehavior.removeAllGameKeyInputListeners (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end removeAllGameKeyInputListeners;

   procedure removeAllGameKeyInputListeners2 (This : in out AllBinaryGameCanvas) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        This.logUtil.putF (To_Unbounded_String ("Remove PlayerInput Listeners"), AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("removeAllGameKeyInputListeners"));
        for index in reverse 0 .. (This.localPlayerGameInputList.size) - (1) loop
            playerGameInput := PlayerGameInput_Access (This.localPlayerGameInputList.get (index));
            AllBinaryGameCanvas'Class (This).removeKeyInputListener (playerGameInput);
            playerGameInput.removeNonAIInputGameKeyEvents;
        end loop;
   end removeAllGameKeyInputListeners2;

   procedure removeKeyInputListener (This : in out AllBinaryGameCanvas; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        This.gameKeyEventHandler.removeListener (playerGameInput);
   end removeKeyInputListener;

   --  throws Exception
   procedure updateEndGameProcessor (This : in out AllBinaryGameCanvas) is
   begin
        This.gameBehavior.updateEndGameProcessor (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end updateEndGameProcessor;

   --  throws Exception
   procedure updateEndGameProcessor2 (This : in out AllBinaryGameCanvas) is
   begin
        if ((AllBinaryGameCanvas'Class (This).getGameState) = (This.gameStateFactory.SHOW_END_RESULT_GAME_STATE)) or else ((AllBinaryGameCanvas'Class (This).getGameState) = (This.gameStateFactory.SHOW_HIGH_SCORE_GAME_STATE)) then
            AllBinaryGameCanvas'Class (This).setEndGameProcessor (This.realEndGameProcessor);
        else
            AllBinaryGameCanvas'Class (This).setEndGameProcessor (Processor_Package.getInstance);
        end if;
   end updateEndGameProcessor2;

   --  throws Exception
   procedure buildGameInit (This : in out AllBinaryGameCanvas; isPortion : Boolean) is
   begin
        null;
   end buildGameInit;

   --  throws Exception
   procedure cleanupGame (This : in out AllBinaryGameCanvas) is
      progressCanvas : ProgressCanvas_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.CLEANUP);
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        progressCanvas.addNormalPortion (10, To_Unbounded_String ("Cleaning Up"));
        This.primaryPlayerQueue.clear;
        This.secondaryPlayerQueue.clear;
        GameLevelDisplayChangeEventListenersFactory_Package.getInstance.clear;
   end cleanupGame;

   --  throws Exception
   procedure loadResourceLoadingLevel (This : in out AllBinaryGameCanvas; resourceLoadingLevel_Param : access ResourceLoadingLevel_Package.ResourceLoadingLevel'Class) is
      resourceLoadingLevel : constant ResourceLoadingLevel_Access := ResourceLoadingLevel_Access (resourceLoadingLevel_Param);
      gameInitializedEvent : GameInitializedEvent_Access;
   begin
        gameInitializedEvent := GameInitializationUtil_Package.getInstance.EVENT;
        gameInitializedEvent.setResourceLoadingLevel (resourceLoadingLevel);
        GameInitializedEventHandler_Package.getInstance.fireEvent (gameInitializedEvent);
   end loadResourceLoadingLevel;

   --  throws Exception
   procedure loadResources (This : in out AllBinaryGameCanvas; level : Integer) is
      gameInitializedEvent : GameInitializedEvent_Access;
   begin
        gameInitializedEvent := GameInitializationUtil_Package.getInstance.EVENT;
        gameInitializedEvent.setLevel (level);
        GameInitializedEventHandler_Package.getInstance.fireEvent (gameInitializedEvent);
   end loadResources;

   --  throws Exception
   procedure updateColor (This : in out AllBinaryGameCanvas) is
   begin
        null;
   end updateColor;

   --  throws Exception
   procedure buildGame (This : in out AllBinaryGameCanvas; portion : Integer) is
      progressCanvas : ProgressCanvas_Access;
      features : Features_Access;
   begin
        This.screenCapture.endRecording;
        This.screenCapture.startRecording;
        progressCanvas := ProgressCanvasFactory_Package.getInstance;
        features := Features_Package.getInstance;
        progressCanvas.addNormalPortion (portion, To_Unbounded_String ("Generic Build"));
        AllBinaryGameCanvas'Class (This).removeAllGameKeyInputListenersOnBuild;
        AllBinaryGameCanvas'Class (This).updateTouch;
        progressCanvas.addNormalPortion (portion, To_Unbounded_String ("High Scores"));
        This.highScoresFactoryInterface.fetchHighScores (This.gameLayerManager.getGameInfo, This.highScoresHelper);
        AllBinaryGameCanvas'Class (This).setHighScoresPaintable (NullPaintable_Package.getInstance);
        progressCanvas.addNormalPortion (portion, To_Unbounded_String ("Finishing."));
        AllBinaryGameCanvas'Class (This).getEndGameInfoP.update (AllBinaryGameCanvas'Class (This).getLayerManager.getGameInfo, AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        This.isSingleKeyRepeatableProcessing := features.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
        AllBinaryGameCanvas'Class (This).setGameOver (False);
        progressCanvas.addNormalPortion (portion, To_Unbounded_String ("Finishing.."));
        AllBinaryGameCanvas'Class (This).updateColor;
        AllBinaryGameCanvas'Class (This).getStartIntermissionPaintable.update;
        if not (AllBinaryGameCanvas'Class (This).isRunningInAnotherThread) then
            return;
        end if;
        progressCanvas.addNormalPortion (portion, To_Unbounded_String ("Finishing..."));
        if (AllBinaryGameCanvas'Class (This).isMainCanvas) or else (not (AllBinaryGameCanvas'Class (This).isInitialized)) then
            if features.isFeature (MainFeatureFactory_Package.getInstance.LOAD_ONDEMAND) then
                if (AllBinaryGameCanvas'Class (This).getCustomCommandListener) /= (null) then
                    progressCanvas.end_Id;
                end if;
            else
                progressCanvas.end_Id;
            end if;
            AllBinaryGameCanvas'Class (This).setInitialized (True);
        end if;
        if (AllBinaryGameCanvas'Class (This).getCustomCommandListener) = (NullCommandListener_Package.NULL_COMMAND_LISTENER) then
            This.logUtil.putF (To_Unbounded_String ("Show Game Paintable in DemoCanvas Thread"), AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.BUILD_GAME);
            This.gameCanvasStartListener.showGamePaintable;
        else
            This.logUtil.putF (To_Unbounded_String ("No GameCanvasStartListener"), AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.BUILD_GAME);
        end if;
        This.colorFillPaintable.setBasicColorP (This.gameLayerManager.getBackgroundBasicColor);
        This.gameBehavior.buildGame (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end buildGame;

   procedure buildGame2 (This : in out AllBinaryGameCanvas) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        PreLogUtil_Package.put (StringMaker_Package.Create.append (This.gameInputStrings.ENABLE_PLAYER_GAME_INPUTS).appendint (This.localPlayerGameInputList.size).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.BUILD_GAME);
        playerGameInput := null;
        for index in reverse 0 .. (This.localPlayerGameInputList.size) - (1) loop
            playerGameInput := PlayerGameInput_Access (This.localPlayerGameInputList.get (index));
            PreLogUtil_Package.put (StringMaker_Package.Create.append (This.gameInputStrings.ENABLE_PLAYER_GAME_INPUT).append (playerGameInput.toString).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.BUILD_GAME);
            playerGameInput.removeNonAIInputGameKeyEvents;
            AllBinaryGameCanvas'Class (This).addKeyInputListener (playerGameInput);
        end loop;
   end buildGame2;

   procedure addKeyInputListener (This : in out AllBinaryGameCanvas; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        GameKeyEventHandler_Package.getInstance.addListenerForPlayer (playerGameInput, playerGameInput.getPlayerInputId);
   end addKeyInputListener;

   procedure setGameCanvasStartListener (This : in out AllBinaryGameCanvas; gameCanvasStartListener_Param : access DemoPaintableInterface_Package.DemoPaintableInterface'Class) is
      gameCanvasStartListener : constant DemoPaintableInterface_Access := DemoPaintableInterface_Access (gameCanvasStartListener_Param);
   begin
        This.gameCanvasStartListener := gameCanvasStartListener;
   end setGameCanvasStartListener;

   --  throws Exception
   procedure loadState (This : in out AllBinaryGameCanvas) is
      hashtable : ABHashtable_Access;
      levelAsString : Unbounded_String;
      level : Integer;
      gameInfo : GameInfo_Access;
   begin
        This.logUtil.putF (This.commonStrings.START, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.LOAD);
        hashtable := AllBinaryGameCanvas'Class (This).getLoadStateHashtable;
        if ((hashtable) /= (null)) and then ((hashtable.size) > (0)) then
            levelAsString := Java_Unbox (hashtable.get (Java_Object_Access (GameInfo_Package.LEVEL_NAME)));
            level := To_Unbounded_String (Java_Image (levelAsString)).intValue;
            gameInfo := This.gameLayerManager.getGameInfo;
            gameInfo.setCurrentLevel (level);
        end if;
   end loadState;

   --  throws Exception
   function getLoadStateHashtable (This : in out AllBinaryGameCanvas) return ABHashtable_Access is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonLabels.START_LABEL).append (This.stringUtil.toString (This.hashtable)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getLoadStateHashtable"));
        return This.hashtable;
   end getLoadStateHashtable;

   procedure setLoadStateHashtable (This : in out AllBinaryGameCanvas; hashtable_Param : access ABHashtable_Package.ABHashtable'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonLabels.START_LABEL).append (This.stringUtil.toString (hashtable)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("setLoadStateHashtable"));
        This.hashtable := hashtable;
   end setLoadStateHashtable;

   function getCurrentStateHashtable (This : in out AllBinaryGameCanvas) return ABHashtable_Access is
      hashtable : ABHashtable_Access;
      level : Integer;
   begin
        hashtable := This.stdUtil.createHashtable;
        level := This.gameLayerManager.getGameInfo.getCurrentLevel;
        hashtable.put (GameInfo_Package.LEVEL_NAME.toString, To_Unbounded_String (Java_Image (level)));
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("End: ")).append (This.stringUtil.toString (hashtable)).toString, AllBinaryGameCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("getCurrentStateHashtable"));
        return hashtable;
   end getCurrentStateHashtable;

   procedure paintGameOver (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        ForcedLogUtil_Package.log (This.commonStrings.NOT_IMPLEMENTED, AllBinaryGameCanvas_Access'(This'Unchecked_Access));
   end paintGameOver;

   procedure draw (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
        This.basicSetColorUtil.setBasicColorP (graphics, This.gameLayerManager.getForegroundBasicColor);
        This.gameSpecificPaintable.paint (graphics);
   end draw;

   procedure clear (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.colorFillPaintable.paint (graphics);
   end clear;

   procedure paint (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        This.baseGameStatistics.nextRefresh;
        AllBinaryGameCanvas'Class (This).draw (graphics);
        This.menuPaintable.paint (graphics);
        This.progressPaintable.paint (graphics);
   end paint;

   procedure paintThreed (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   --  throws Exception
   procedure processEndLevelIntermissionGameState (This : in out AllBinaryGameCanvas) is
   begin
        null;
   end processEndLevelIntermissionGameState;

   procedure nonBotPaint (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.endGamePaintable.paint (graphics);
        This.intermissionPaintable.paint (graphics);
        AllBinaryGameCanvas'Class (This).paintIntermission (graphics);
        This.touchPaintable.paint (graphics);
   end nonBotPaint;

   procedure paintIntermission (This : in out AllBinaryGameCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintIntermission;

   procedure keyPressed (This : in out AllBinaryGameCanvas; keyCode : Integer) is
   begin
        AllBinaryGameCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out AllBinaryGameCanvas; keyCode : Integer) is
   begin
        AllBinaryGameCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out AllBinaryGameCanvas; keyCode : Integer) is
   begin
        AllBinaryGameCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out AllBinaryGameCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.inputProcessor.keyPressedByDevice (keyCode, deviceId);
   end keyPressedByDevice;

   procedure keyRepeatedByDevice (This : in out AllBinaryGameCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            This.inputProcessor.keyPressedByDevice (keyCode, deviceId);
        end if;
   end keyRepeatedByDevice;

   procedure keyReleasedByDevice (This : in out AllBinaryGameCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.inputProcessor.keyReleasedByDevice (AllBinaryGameCanvas_Access'(This'Unchecked_Access), keyCode, deviceId);
   end keyReleasedByDevice;

   --  throws Exception
   procedure handleRawKey (This : in out AllBinaryGameCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
   begin
        null;
   end handleRawKey;

   function endProgress (This : in out AllBinaryGameCanvas; isProgress : Boolean) return Integer is
      portion : Integer;
      myCommandsFactory : MyCommandsFactory_Access;
      progressCanvas : ProgressCanvas_Access;
   begin
        portion := 30;
        if (isProgress) and then (AllBinaryGameCanvas'Class (This).isMainCanvas) then
            myCommandsFactory := MyCommandsFactory_Package.getInstance;
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.start;
            AllBinaryGameCanvas'Class (This).getCustomCommandListener.commandAction (myCommandsFactory.SET_DISPLAYABLE, progressCanvas);
            portion := 4;
        end if;
        return portion;
   end endProgress;

   --  throws Exception
   procedure processPlayingGame (This : in out AllBinaryGameCanvas) is
   begin
        This.cheatProcessor.update;
        This.sensorGameUpdateProcessor.getInputSensor.update;
        This.gameInputProcessor.process;
        This.gameLayerManager.process;
        This.startIntermissionProcessor.process;
   end processPlayingGame;

   --  throws Exception
   procedure threadInit (This : in out AllBinaryGameCanvas) is
   begin
        null;
   end threadInit;

   --  throws Exception
   procedure processGame (This : in out AllBinaryGameCanvas) is
   begin
        RunnableCanvas (This).process;
        if AllBinaryMediaManager_Package.update then
            if not (This.primaryPlayerQueue.process) then
                This.secondaryPlayerQueue.process;
            end if;
        end if;
        This.mainStateProcessor.process;
        This.menuInputProcessor.processInputList;
        This.endGameProcessor.process;
        This.baseGameStatistics.nextFrame;
   end processGame;

   procedure notifyDonePainting (This : in out AllBinaryGameCanvas) is
   begin
        begin  --  synchronized
            This.threadObjectUtil.notifyObject (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        end;
   end notifyDonePainting;

   --  throws Exception
   procedure shouldWait (This : in out AllBinaryGameCanvas) is
      features : Features_Access;
      openGLImageSpecificFactory : OpenGLImageSpecificFactory_Access;
   begin
        features := Features_Package.getInstance;
        if AndroidUtil_Package.isAndroid then
            null;
        elsif features.isFeature (This.openGLFeatureFactory.OPENGL_2D) then
            null;
        else
            if features.isDefault (This.openGLFeatureFactory.OPENGL) then
                openGLImageSpecificFactory := OpenGLImageSpecificFactory_Package.getInstance;
                while openGLImageSpecificFactory.updating loop
                    Java_Sleep (This.YIELD_SLEEP);
                end loop;
            end if;
        end if;
   end shouldWait;

   procedure run (This : in out AllBinaryGameCanvas) is
      progressCanvas : ProgressCanvas_Access;
      gameAdState : GameAdState_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START_RUNNABLE, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            progressCanvas := ProgressCanvasFactory_Package.getInstance;
            progressCanvas.addNormalPortion (50, To_Unbounded_String ("Game Thread"));
            AllBinaryGameCanvas'Class (This).setCurrentThread;
            AllBinaryGameCanvas'Class (This).setRunning (True);
            if (AllBinaryGameCanvas'Class (This).getCustomCommandListener) = (NullCommandListener_Package.NULL_COMMAND_LISTENER) then
                Java_Sleep (This.YIELD_SLEEP);
            end if;
            AllBinaryGameCanvas'Class (This).shouldWait;
            AllBinaryGameCanvas'Class (This).threadInit;
            if (AllBinaryGameCanvas'Class (This).getCustomCommandListener) = (NullCommandListener_Package.NULL_COMMAND_LISTENER) then
                Java_Sleep (This.YIELD_SLEEP);
            end if;
            AllBinaryGameCanvas'Class (This).open;
            gameAdState := This.gameAdStateFactory.getCurrentInstance;
            gameAdState.init;
            gameAdState.setGameIsReady (True);
            This.gameBehavior.run (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
            This.logUtil.putF (This.commonStrings.END_RUNNABLE, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN, e);
                end;
        end;
   end run;

   --  throws Exception
   procedure run2 (This : in out AllBinaryGameCanvas) is
      features : Features_Access;
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        features := Features_Package.getInstance;
        if (features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD)) or else (J2MEUtil_Package.isHTML) then
            if features.isDefault (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
                This.logUtil.putF (This.openGLFeatureFactory.OPENGL_AS_GAME_THREAD.getName, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            end if;
            if J2MEUtil_Package.isHTML then
                This.logUtil.putF (GraphicsStrings_Package.getInstance.HTML, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            end if;
            currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
            currentDisplayableFactory.setRunnable (This.gameRunnable);
            currentDisplayableFactory.setDisplayable (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
            OpenGLThreadUtil_Package.getInstance.onResume;
        elsif features.isDefault (This.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS) then
            This.logUtil.putF (This.openGLFeatureFactory.OPENGL_AND_GAME_HAVE_DIFFERENT_THREADS.getName, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            OpenGLThreadUtil_Package.getInstance.onResume;
            while AllBinaryGameCanvas'Class (This).isRunning loop
                AllBinaryGameCanvas'Class (This).run3;
            end loop;
            AllBinaryGameCanvas'Class (This).end_Id;
        else
            This.logUtil.putF (To_Unbounded_String ("this thread"), AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.commonStrings.RUN);
            while AllBinaryGameCanvas'Class (This).isRunning loop
                AllBinaryGameCanvas'Class (This).run3;
            end loop;
            AllBinaryGameCanvas'Class (This).end_Id;
        end if;
   end run2;

   --  throws Exception
   procedure run3 (This : in out AllBinaryGameCanvas) is
   begin
        This.loopTimeHelper.setStartTime (This.gameTickTimeDelayHelper.setStartTime);
        This.gameTickDisplayInfoSingleton.update;
        AllBinaryGameCanvas'Class (This).processGame;
        AllBinaryGameCanvas'Class (This).processLoopSleep;
   end run3;

   procedure setRunning (This : in out AllBinaryGameCanvas; running : Boolean) is
      features : Features_Access;
      currentDisplayableFactory : CurrentDisplayableFactory_Access;
   begin
        RunnableCanvas (This).setRunning (running);
        begin
            features := Features_Package.getInstance;
            if running then
                null;
            else
                if (features.isDefault (This.openGLFeatureFactory.OPENGL)) or else (SWTUtil_Package.isSWT) then
                    if (This.gameLayerManager.getGameInfo.getGameType) /= (This.gameTypeFactory.BOT) then
                        currentDisplayableFactory := CurrentDisplayableFactory_Package.getInstance;
                        currentDisplayableFactory.clearRunnable;
                    end if;
                    AllBinaryGameCanvas'Class (This).end_Id;
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, AllBinaryGameCanvas_Access'(This'Unchecked_Access), This.SET_RUNNING, e);
                end;
        end;
   end setRunning;

   --  throws Exception
   procedure end_Id (This : in out AllBinaryGameCanvas) is
   begin
        This.screenCapture.endRecording;
        This.baseGameStatistics.add (StringMaker_Package.Create.append (This.baseGameStatistics.toString).append (CommonSeps_Package.getInstance.NEW_LINE).toString);
        This.baseGameStatistics.init;
        This.gameKeyEventHandler.removeListener (This.cheatProcessor);
        AllBinaryGameCanvas'Class (This).close;
        AllBinaryGameCanvas'Class (This).removeAllGameKeyInputListeners;
        AllBinaryGameCanvas'Class (This).endGameThread;
   end end_Id;

   --  throws Exception
   procedure endGameThread (This : in out AllBinaryGameCanvas) is
      gameAdState : GameAdState_Access;
   begin
        DisplayChangeEventHandler_Package.getInstance.removeListener (AllBinaryGameCanvas_Access'(This'Unchecked_Access));
        GameLevelDisplayChangeEventListenersFactory_Package.getInstance.clear;
        gameAdState := This.gameAdStateFactory.getCurrentInstance;
        gameAdState.notPlayingAdState;
   end endGameThread;

   function createHighScore (This : in out AllBinaryGameCanvas; score : Long_Long_Integer) return HighScore_Access is
      gameInfo : GameInfo_Access;
   begin
        gameInfo := This.gameLayerManager.getGameInfo;
        return HighScore_Package.Create (0, To_Unbounded_String ("NONE"), GameInfo_Package.Create (gameInfo.getGameType, gameInfo.getGameMode, PlayerTypesFactory_Package.getInstance.PLAYER_TYPE_ONE, 0, 0), score);
   end createHighScore;

   --  throws Exception
   procedure setHighScore (This : in out AllBinaryGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
   begin
        This.gameBehavior.setHighScore (abeClientInformation, AllBinaryGameCanvas_Access'(This'Unchecked_Access), name, score, autoSubmit, isLast);
   end setHighScore;

   --  throws Exception
   procedure setHighScore2 (This : in out AllBinaryGameCanvas; abeClientInformation_Param : access AbeClientInformationInterface_Package.AbeClientInformationInterface'Class; name : Unbounded_String; score : Long_Long_Integer; autoSubmit : Boolean; isLast : Boolean) is
      abeClientInformation : constant AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      highScore : HighScore_Access;
      textBox : HighScoreTextBox_Access;
   begin
        highScore := AllBinaryGameCanvas'Class (This).createHighScore (score);
        textBox := HighScoreTextBox_Package.Create (This.highScoresFactoryInterface, This.highScoresHelper, abeClientInformation, This.gameLayerManager.getGameInfo, AllBinaryGameCanvas'Class (This).getCustomCommandListener, name, highScore, This.gameLayerManager.getBackgroundBasicColor, This.gameLayerManager.getForegroundBasicColor);
        if isLast then
            AllBinaryGameCanvas'Class (This).getCustomCommandListener.commandAction (GameCommandsFactory_Package.getInstance.SET_MENU_DISPLAYABLE, textBox);
        end if;
        if autoSubmit then
            --  Java nested class SaveHighScoreRunnable: move it to its own package
            SecondaryThreadPool_Package.getInstance.runTask (SaveHighScoreRunnable_Package.Create);
        end if;
   end setHighScore2;

   function getGameStateTimeHelper (This : in out AllBinaryGameCanvas) return TimeDelayHelper_Access is
   begin
        return This.gameStateTimeHelper;
   end getGameStateTimeHelper;

   procedure setInitialized (This : in out AllBinaryGameCanvas; initialized : Boolean) is
   begin
        This.initialized := initialized;
   end setInitialized;

   function isInitialized (This : in out AllBinaryGameCanvas) return Boolean is
   begin
        return This.initialized;
   end isInitialized;

   function getSourceId (This : in out AllBinaryGameCanvas) return Integer is
   begin
        return AllBinaryGameCanvas_Package.id;
   end getSourceId;

   procedure setProgressPaintable (This : in out AllBinaryGameCanvas; paintable_Param : access PaintableInterface_Package.PaintableInterface'Class) is
      paintable : constant PaintableInterface_Access := PaintableInterface_Access (paintable_Param);
   begin
        This.progressPaintable := paintable;
   end setProgressPaintable;

   function getStartIntermissionInterface (This : in out AllBinaryGameCanvas) return IntermissionInterface_Access is
   begin
        return This.startIntermissionInterface;
   end getStartIntermissionInterface;

   function getEndLevelIntermissionInterface (This : in out AllBinaryGameCanvas) return IntermissionInterface_Access is
   begin
        return This.endLevelIntermissionInterface;
   end getEndLevelIntermissionInterface;

   procedure setTouchPaintableP (This : in out AllBinaryGameCanvas; paintable_Param : access Paintable_Package.Paintable'Class) is
      paintable : constant Paintable_Access := Paintable_Access (paintable_Param);
   begin
        This.touchPaintable := paintable;
   end setTouchPaintableP;

   function getTouchPaintableP (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.touchPaintable;
   end getTouchPaintableP;

   procedure setEndGamePaintable (This : in out AllBinaryGameCanvas; endGamePaintable_Param : access Paintable_Package.Paintable'Class) is
      endGamePaintable : constant Paintable_Access := Paintable_Access (endGamePaintable_Param);
   begin
        This.endGamePaintable := endGamePaintable;
   end setEndGamePaintable;

   function getEndGamePaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.endGamePaintable;
   end getEndGamePaintable;

   procedure setIntermissionPaintable (This : in out AllBinaryGameCanvas; intermissionPaintable_Param : access Paintable_Package.Paintable'Class) is
      intermissionPaintable : constant Paintable_Access := Paintable_Access (intermissionPaintable_Param);
   begin
        This.intermissionPaintable := intermissionPaintable;
   end setIntermissionPaintable;

   function getIntermissionPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.intermissionPaintable;
   end getIntermissionPaintable;

   function getEndGameInfoP (This : in out AllBinaryGameCanvas) return EndGameInfo_Access is
   begin
        return This.endGameInfo;
   end getEndGameInfoP;

   procedure setHighScoresPaintable (This : in out AllBinaryGameCanvas; highScoresPaintable_Param : access Paintable_Package.Paintable'Class) is
      highScoresPaintable : constant Paintable_Access := Paintable_Access (highScoresPaintable_Param);
   begin
        This.highScoresPaintable := highScoresPaintable;
   end setHighScoresPaintable;

   function getHighScoresPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.highScoresPaintable;
   end getHighScoresPaintable;

   function getRealHighScoresPaintable (This : in out AllBinaryGameCanvas) return HighScoresPaintable_Access is
   begin
        return This.realHighScoresPaintable;
   end getRealHighScoresPaintable;

   procedure clearPlayerGameInputList (This : in out AllBinaryGameCanvas) is
      playerGameInput : PlayerGameInput_Access;
      index : Integer;
   begin
        playerGameInput := null;
        for index in reverse 0 .. (This.localPlayerGameInputList.size) - (1) loop
            playerGameInput := PlayerGameInput_Access (This.localPlayerGameInputList.get (index));
            This.gameKeyEventHandler.removeListener (playerGameInput);
        end loop;
        This.localPlayerGameInputList.clear;
   end clearPlayerGameInputList;

   procedure addPlayerGameInput (This : in out AllBinaryGameCanvas; playerGameInput_Param : access PlayerGameInput_Package.PlayerGameInput'Class) is
      playerGameInput : constant PlayerGameInput_Access := PlayerGameInput_Access (playerGameInput_Param);
   begin
        This.localPlayerGameInputList.add (playerGameInput);
   end addPlayerGameInput;

   procedure setMenuInputProcessor (This : in out AllBinaryGameCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class) is
      menuInputProcessor : constant BasicMenuInputProcessor_Access := BasicMenuInputProcessor_Access (menuInputProcessor_Param);
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out AllBinaryGameCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   function getMenuForm (This : in out AllBinaryGameCanvas) return ScrollSelectionForm_Access is
   begin
        return This.menuForm;
   end getMenuForm;

   procedure setMenuForm (This : in out AllBinaryGameCanvas; menuForm_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      menuForm : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (menuForm_Param);
   begin
        This.menuForm := menuForm;
   end setMenuForm;

   function getStartLevel (This : in out AllBinaryGameCanvas) return Integer is
   begin
        return This.startLevel;
   end getStartLevel;

   procedure setStartLevel (This : in out AllBinaryGameCanvas; startLevel : Integer) is
   begin
        This.startLevel := startLevel;
   end setStartLevel;

   procedure setTouchButtonsPaintable (This : in out AllBinaryGameCanvas; touchButtonsPaintable_Param : access Paintable_Package.Paintable'Class) is
      touchButtonsPaintable : constant Paintable_Access := Paintable_Access (touchButtonsPaintable_Param);
   begin
        This.touchButtonsPaintable := touchButtonsPaintable;
   end setTouchButtonsPaintable;

   function getTouchButtonsPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.touchButtonsPaintable;
   end getTouchButtonsPaintable;

   procedure setGameInputProcessor (This : in out AllBinaryGameCanvas; gameInputProcessor_Param : access Processor_Package.Processor'Class) is
      gameInputProcessor : constant Processor_Access := Processor_Access (gameInputProcessor_Param);
   begin
        This.gameInputProcessor := gameInputProcessor;
   end setGameInputProcessor;

   function getGameInputProcessor (This : in out AllBinaryGameCanvas) return Processor_Access is
   begin
        return This.gameInputProcessor;
   end getGameInputProcessor;

   procedure setEndGameProcessor (This : in out AllBinaryGameCanvas; endGameProcessor_Param : access Processor_Package.Processor'Class) is
      endGameProcessor : constant Processor_Access := Processor_Access (endGameProcessor_Param);
   begin
        This.endGameProcessor := endGameProcessor;
   end setEndGameProcessor;

   function getEndGameProcessor (This : in out AllBinaryGameCanvas) return Processor_Access is
   begin
        return This.endGameProcessor;
   end getEndGameProcessor;

   procedure setEndGameStatePaintable (This : in out AllBinaryGameCanvas; endGameStatePaintable_Param : access Paintable_Package.Paintable'Class) is
      endGameStatePaintable : constant Paintable_Access := Paintable_Access (endGameStatePaintable_Param);
   begin
        This.endGameStatePaintable := endGameStatePaintable;
   end setEndGameStatePaintable;

   function getEndGameStatePaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.endGameStatePaintable;
   end getEndGameStatePaintable;

   procedure setNonBotPaintableP (This : in out AllBinaryGameCanvas; nonBotPaintable_Param : access Paintable_Package.Paintable'Class) is
      nonBotPaintable : constant Paintable_Access := Paintable_Access (nonBotPaintable_Param);
   begin
        This.nonBotPaintable := nonBotPaintable;
   end setNonBotPaintableP;

   function getNonBotPaintableP (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.nonBotPaintable;
   end getNonBotPaintableP;

   procedure setStartIntermissionPaintable (This : in out AllBinaryGameCanvas; startIntermissionPaintable_Param : access InitUpdatePaintable_Package.InitUpdatePaintable'Class) is
      startIntermissionPaintable : constant InitUpdatePaintable_Access := InitUpdatePaintable_Access (startIntermissionPaintable_Param);
   begin
        This.startIntermissionPaintable := startIntermissionPaintable;
   end setStartIntermissionPaintable;

   function getStartIntermissionPaintable (This : in out AllBinaryGameCanvas) return InitUpdatePaintable_Access is
   begin
        return This.startIntermissionPaintable;
   end getStartIntermissionPaintable;

   procedure setMainStateProcessor (This : in out AllBinaryGameCanvas; mainStateProcessor_Param : access Processor_Package.Processor'Class) is
      mainStateProcessor : constant Processor_Access := Processor_Access (mainStateProcessor_Param);
   begin
        This.mainStateProcessor := mainStateProcessor;
   end setMainStateProcessor;

   function getMainStateProcessor (This : in out AllBinaryGameCanvas) return Processor_Access is
   begin
        return This.mainStateProcessor;
   end getMainStateProcessor;

   procedure setProcessGameProcessor (This : in out AllBinaryGameCanvas; processGameProcessor_Param : access Processor_Package.Processor'Class) is
      processGameProcessor : constant Processor_Access := Processor_Access (processGameProcessor_Param);
   begin
        This.processGameProcessor := processGameProcessor;
   end setProcessGameProcessor;

   function getProcessGameProcessor (This : in out AllBinaryGameCanvas) return Processor_Access is
   begin
        return This.processGameProcessor;
   end getProcessGameProcessor;

   procedure setOpenMenuPaintable (This : in out AllBinaryGameCanvas; openMenuPaintable_Param : access Paintable_Package.Paintable'Class) is
      openMenuPaintable : constant Paintable_Access := Paintable_Access (openMenuPaintable_Param);
   begin
        This.openMenuPaintable := openMenuPaintable;
   end setOpenMenuPaintable;

   function getOpenMenuPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.openMenuPaintable;
   end getOpenMenuPaintable;

   procedure setPopupMenuInputProcessor (This : in out AllBinaryGameCanvas; popupMenuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class) is
      popupMenuInputProcessor : constant BasicMenuInputProcessor_Access := BasicMenuInputProcessor_Access (popupMenuInputProcessor_Param);
   begin
        This.popupMenuInputProcessor := popupMenuInputProcessor;
   end setPopupMenuInputProcessor;

   function getPopupMenuInputProcessor (This : in out AllBinaryGameCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.popupMenuInputProcessor;
   end getPopupMenuInputProcessor;

   function getSensorGameUpdateProcessor (This : in out AllBinaryGameCanvas) return SensorGameUpdateProcessor_Access is
   begin
        return This.sensorGameUpdateProcessor;
   end getSensorGameUpdateProcessor;

   function getRawGameInputProcessor (This : in out AllBinaryGameCanvas) return InputProcessor_Access is
   begin
        return This.rawGameInputProcessor;
   end getRawGameInputProcessor;

   function getRawInputProcessor (This : in out AllBinaryGameCanvas) return InputProcessor_Access is
   begin
        return This.rawInputProcessor;
   end getRawInputProcessor;

   procedure setInputProcessor (This : in out AllBinaryGameCanvas; inputProcessor_Param : access InputProcessor_Package.InputProcessor'Class) is
      inputProcessor : constant InputProcessor_Access := InputProcessor_Access (inputProcessor_Param);
   begin
        This.inputProcessor := inputProcessor;
   end setInputProcessor;

   function getInputProcessor (This : in out AllBinaryGameCanvas) return InputProcessor_Access is
   begin
        return This.inputProcessor;
   end getInputProcessor;

   procedure setMenuPaintable (This : in out AllBinaryGameCanvas; menuPaintable_Param : access Paintable_Package.Paintable'Class) is
      menuPaintable : constant Paintable_Access := Paintable_Access (menuPaintable_Param);
   begin
        This.menuPaintable := menuPaintable;
   end setMenuPaintable;

   function getMenuPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.menuPaintable;
   end getMenuPaintable;

   procedure setFormPaintable (This : in out AllBinaryGameCanvas; formPaintable_Param : access Paintable_Package.Paintable'Class) is
      formPaintable : constant Paintable_Access := Paintable_Access (formPaintable_Param);
   begin
        This.formPaintable := formPaintable;
   end setFormPaintable;

   function getFormPaintable (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.formPaintable;
   end getFormPaintable;

   procedure setGameSpecificPaintableP (This : in out AllBinaryGameCanvas; gameSpecificPaintable_Param : access Paintable_Package.Paintable'Class) is
      gameSpecificPaintable : constant Paintable_Access := Paintable_Access (gameSpecificPaintable_Param);
   begin
        This.gameSpecificPaintable := gameSpecificPaintable;
   end setGameSpecificPaintableP;

   function getGameSpecificPaintableP (This : in out AllBinaryGameCanvas) return Paintable_Access is
   begin
        return This.gameSpecificPaintable;
   end getGameSpecificPaintableP;

   function isSingleThread (This : in out AllBinaryGameCanvas) return Boolean is
   begin
        return (OpenGLFeatureUtil_Package.getInstance.isAnyThreed) or else (SWTUtil_Package.isSWT);
   end isSingleThread;

   function isRunningInAnotherThread (This : in out AllBinaryGameCanvas) return Boolean is
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if features.isDefault (openGLFeatureFactory.OPENGL_AS_GAME_THREAD) then
            return True;
        else
            return AllBinaryGameCanvas'Class (This).isRunning;
        end if;
   end isRunningInAnotherThread;

   function getType (This : in out AllBinaryGameCanvas) return Integer is
   begin
        return AllBinaryGameCanvas_Package.TYPE_Id;
   end getType;

   procedure endProgress (This : in out AllBinaryGameCanvas; isProgress : Boolean) is
      Java_Result : constant Integer := AllBinaryGameCanvas'Class (This).endProgress (isProgress);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end endProgress;

   procedure createHighScore (This : in out AllBinaryGameCanvas; score : Long_Long_Integer) is
      Java_Result : constant HighScore_Access := AllBinaryGameCanvas'Class (This).createHighScore (score);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createHighScore;

begin
   null;
   id := 0;
   TYPE_Id := 2;

end org.allbinary.game.displayable.canvas.AllBinaryGameCanvas_Package;


