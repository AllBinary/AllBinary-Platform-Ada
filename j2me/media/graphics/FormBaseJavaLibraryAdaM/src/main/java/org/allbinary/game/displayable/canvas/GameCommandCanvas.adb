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


package body org.allbinary.game.displayable.canvas.GameCommandCanvas_Package is

   procedure Initialize_Fields (This : in out GameCommandCanvas'Class) is
   begin
      null;
      This.repaintProcessor := ScreenRepaintProcessorFactory_Package.getInstance.create (This'Unchecked_Access);
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      
      
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      
      This.updateMyFontProcessor := UpdateMyFontProcessor_Package.Create (This'Unchecked_Access);
      This.myFontProcessor := This.updateMyFontProcessor;
      
      
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuPaintable := NullPaintable_Package.getInstance;
      This.menuForm := PaintableForm_Package.getNullPaintableForm;
      This.isSingleKeyRepeatableProcessing := Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out GameCommandCanvas'Class; cmdListener : CommandListener_Access; name : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) is
   begin
        MyCanvas_Package.Initialize (This, name, CanvasStrings_Package.getInstance.EMPTY_CHILD_NAME_LIST);
        Initialize_Fields (This);
        This.repaintBehavior := RepaintBehavior_Package.getInstance;
        This.foregroundBasicColor := foregroundBasicColor;
        This.backgroundBasicColor := backgroundBasicColor;
        This.foregroundColor := This.foregroundBasicColor.intValue;
        This.backgroundColor := This.backgroundBasicColor.intValue;
        This.initCommands (cmdListener);
        if (cmdListener) /= (NullCommandListener_Package.NULL_COMMAND_LISTENER) then
            begin
                This.initMenu;
                This.repaintProcessor.process;
            exception
                when e : others =>
                Java_Throw (Java_New_Exception ("RuntimeException"));
            end;
        end if;
   end Initialize;

   function Create (cmdListener : CommandListener_Access; name : Unbounded_String; backgroundBasicColor : BasicColor_Access; foregroundBasicColor : BasicColor_Access) return GameCommandCanvas_Access is
      This : constant GameCommandCanvas_Access := new GameCommandCanvas;
   begin
      Initialize (This.all, cmdListener, name, backgroundBasicColor, foregroundBasicColor);
      return This;
   end Create;

   procedure updateMeasurement (This : in out GameCommandCanvas; graphics : Graphics_Access) is
      font : Font_Access;
      rectangle : Rectangle_Access;
   begin
        begin
            font := graphics.getFont;
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.canvasStrings.FD_WIDTH).appendint (Integer (MyFontProcessor_Package.defaultCharWidth (font))).append (This.canvasStrings.FD_HEIGHT).appendint (Integer (font.getHeight)).toString, This'Unchecked_Access, This.canvasStrings.UPDATE_MEASUREMENT);
            This.fontHeight := font.getHeight;
            rectangle := This.createRectangle (This.menuForm.size);
            This.menuForm.init (rectangle, FormTypeFactory_Package.getInstance.VERTICAL_CENTER_FORM);
            This.update;
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
        end;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out GameCommandCanvas; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onDisplayChangeEvent (This : in out GameCommandCanvas; displayChangeEvent : DisplayChangeEvent_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (DisplayInfoSingleton_Package.getInstance.toString).toString, This'Unchecked_Access, This.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   procedure initCommands (This : in out GameCommandCanvas; cmdListener : CommandListener_Access) is
   begin
        This.removeAllCommands;
        This.addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        This.setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure initMenu (This : in out GameCommandCanvas) is
      form : ScrollSelectionForm_Access;
   begin
        form := This.createForm;
        This.menuForm := form;
        if (form) /= (ScrollSelectionFormNoneFactory_Package.getInstance) then
            This.setMenuInputProcessor (ImmediateCommandFormInputProcessor_Package.Create (BasicArrayListD_Package.Create, -(1), This'Unchecked_Access, form));
            This.menuPaintable := FormPaintable_Package.Create (form);
        end if;
        This.repaintBehavior.onChangeRepaint (This'Unchecked_Access);
   end initMenu;

   --  throws Exception
   function createForm (This : in out GameCommandCanvas) return ScrollSelectionForm_Access is
      items : ABCustomItem_Access_Array_Access;
      rectangle : Rectangle_Access;
   begin
        items := CommandTextItemArrayFactory_Package.Create (AllCommandsVisitor_Package.Create).getInstance (This.getCommandStack, This.backgroundBasicColor, This.foregroundBasicColor);
        rectangle := This.createRectangle (items'Length);
        return CommandCurrentSelectionFormFactory_Package.getInstance (StringUtil_Package.getInstance.EMPTY_STRING, items, rectangle, FormTypeFactory_Package.getInstance.VERTICAL_CENTER_FORM, 15, False, This.backgroundBasicColor, This.foregroundBasicColor);
   end createForm;

   function createRectangle (This : in out GameCommandCanvas; size : Integer) return Rectangle_Access is
      height : Integer;
      startY : Integer;
      pointFactory : PointFactory_Access;
      rectangle : Rectangle_Access;
   begin
        height := (size) * (This.fontHeight);
        startY := ((((This.displayInfo.getLastHeight) * (2)) / (3))) - (height);
        pointFactory := PointFactory_Package.getInstance;
        rectangle := Rectangle_Package.Create (pointFactory.createXY (30, startY), (This.displayInfo.getLastWidth) - (30), startY);
        return rectangle;
   end createRectangle;

   procedure open (This : in out GameCommandCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("open"));
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (This.getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.addListener (This.getMenuInputProcessor);
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
   end open;

   --  throws Exception
   procedure close (This : in out GameCommandCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, This.commonStrings.CLOSE);
        BasicMotionGesturesHandler_Package.getInstance.removeListener (This.getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.removeListener (This.getMenuInputProcessor);
        DisplayChangeEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
   end close;

   --  throws Exception
   procedure update (This : in out GameCommandCanvas) is
   begin
        This.repaintProcessor.process;
   end update;

   function getSourceId (This : in out GameCommandCanvas) return Integer is
   begin
        return GameCommandCanvas_Package.id;
   end getSourceId;

   procedure keyPressed (This : in out GameCommandCanvas; keyCode : Integer) is
   begin
        This.keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out GameCommandCanvas; keyCode : Integer) is
   begin
        This.keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out GameCommandCanvas; keyCode : Integer) is
   begin
        This.keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.KEY_PRESSED);
        This.addGameKeyEvent (keyCode, 0, False);
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.removeGameKeyEvent (keyCode, deviceId, False);
   end keyReleasedByDevice;

   procedure keyRepeatedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            This.addGameKeyEvent (keyCode, deviceId, True);
        end if;
   end keyRepeatedByDevice;

   procedure addGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This'Unchecked_Access, keyCode);
            if (gameKey) /= (This.gameKeyFactory.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This'Unchecked_Access, gameKey);
                This.downGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.downGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT);
            end if;
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.ADD_KEY_EVENT, e);
        end;
   end addGameKeyEvent;

   procedure removeGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (This'Unchecked_Access, keyCode);
            if (gameKey) /= (This.gameKeyFactory.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (This'Unchecked_Access, gameKey);
                This.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when e : others =>
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), This'Unchecked_Access, This.gameInputStrings.REMOVE_KEY_EVENT, e);
        end;
   end removeGameKeyEvent;

   procedure paint (This : in out GameCommandCanvas; graphics : Graphics_Access) is
   begin
        This.myFontProcessor.process (graphics);
        This.menuPaintable.paint (graphics);
        This.repaintBehavior.repaint (This'Unchecked_Access);
   end paint;

   procedure setMenuInputProcessor (This : in out GameCommandCanvas; menuInputProcessor : BasicMenuInputProcessor_Access) is
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out GameCommandCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   procedure createForm (This : in out GameCommandCanvas) is
      Java_Result : constant ScrollSelectionForm_Access := GameCommandCanvas'Class (This).createForm;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createForm;

   procedure createRectangle (This : in out GameCommandCanvas; size : Integer) is
      Java_Result : constant Rectangle_Access := GameCommandCanvas'Class (This).createRectangle (size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRectangle;

   procedure getSourceId (This : in out GameCommandCanvas) is
      Java_Result : constant Integer := GameCommandCanvas'Class (This).getSourceId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSourceId;

   procedure getMenuInputProcessor (This : in out GameCommandCanvas) is
      Java_Result : constant BasicMenuInputProcessor_Access := GameCommandCanvas'Class (This).getMenuInputProcessor;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMenuInputProcessor;

begin
   null;
   id := 0;

end org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;


