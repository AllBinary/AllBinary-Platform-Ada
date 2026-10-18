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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.NullCommandListener_Package; use javax.microedition.lcdui.NullCommandListener_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package; use org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package; use org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
with org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package; use org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package; use org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;
with org.allbinary.graphics.form.FormPaintable_Package; use org.allbinary.graphics.form.FormPaintable_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package; use org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package; use org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package; use org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package; use org.allbinary.game.displayable.canvas.NoMenuInputProcessor_Package;
with org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package; use org.allbinary.game.displayable.canvas.ImmediateCommandFormInputProcessor_Package;

package body org.allbinary.game.displayable.canvas.GameCommandCanvas_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package NullCommandListener_Package renames Standard.javax.microedition.lcdui.NullCommandListener_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package CanvasStrings_Package renames Standard.org.allbinary.graphics.displayable.CanvasStrings_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package DisplayChangeEventHandler_Package renames Standard.org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;
   package ScreenRepaintProcessorFactory_Package renames Standard.org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package CommandCurrentSelectionFormFactory_Package renames Standard.org.allbinary.graphics.form.CommandCurrentSelectionFormFactory_Package;
   package FormPaintable_Package renames Standard.org.allbinary.graphics.form.FormPaintable_Package;
   package FormTypeFactory_Package renames Standard.org.allbinary.graphics.form.FormTypeFactory_Package;
   package ScrollSelectionFormNoneFactory_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionFormNoneFactory_Package;
   package CommandTextItemArrayFactory_Package renames Standard.org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package AllCommandsVisitor_Package renames Standard.org.allbinary.graphics.form.item.validation.AllCommandsVisitor_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   procedure Initialize_Fields (This : in out GameCommandCanvas'Class) is
   begin
      null;
      This.repaintProcessor := ScreenRepaintProcessorFactory_Package.getInstance.create (GameCommandCanvas_Access'(This'Unchecked_Access));
      This.gameInputStrings := GameInputStrings_Package.getInstance;
      
      
      This.inputToGameKeyMapping := PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping;
      This.gameKeyFactory := GameKeyFactory_Package.getInstance;
      This.gameKeyEventFactory := GameKeyEventFactory_Package.getInstance;
      This.downGameKeyEventHandler := DownGameKeyEventHandler_Package.getInstance;
      This.upGameKeyEventHandler := UpGameKeyEventHandler_Package.getInstance;
      
      This.updateMyFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (GameCommandCanvas_Access'(This'Unchecked_Access)));
      This.myFontProcessor := This.updateMyFontProcessor;
      
      
      This.menuInputProcessor := NoMenuInputProcessor_Package.getInstance;
      This.menuPaintable := NullPaintable_Package.getInstance;
      This.menuForm := PaintableForm_Package.getNullPaintableForm;
      This.isSingleKeyRepeatableProcessing := Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS);
      This.fontHeight := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out GameCommandCanvas'Class; cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        MyCanvas_Package.Initialize (This, name, CanvasStrings_Package.getInstance.EMPTY_CHILD_NAME_LIST);
        Initialize_Fields (This);
        This.repaintBehavior := RepaintBehavior_Package.getInstance;
        This.foregroundBasicColor := foregroundBasicColor;
        This.backgroundBasicColor := backgroundBasicColor;
        This.foregroundColor := This.foregroundBasicColor.intValue;
        This.backgroundColor := This.backgroundBasicColor.intValue;
        GameCommandCanvas'Class (This).initCommands (cmdListener);
        if (cmdListener) /= (NullCommandListener_Package.NULL_COMMAND_LISTENER) then
            begin
                GameCommandCanvas'Class (This).initMenu;
                This.repaintProcessor.process;
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                Java_Throw (Java_New_Exception ("RuntimeException"));
                    end;
            end;
        end if;
   end Initialize;

   function Create (cmdListener_Param : access CommandListener_Package.CommandListener'Class; name : Unbounded_String; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) return GameCommandCanvas_Access is
      This : constant GameCommandCanvas_Access := new GameCommandCanvas;
   begin
      GameCommandCanvas_Package.Initialize (This.all, cmdListener_Param, name, backgroundBasicColor_Param, foregroundBasicColor_Param);
      return This;
   end Create;

   procedure updateMeasurement (This : in out GameCommandCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
      rectangle : Rectangle_Access;
   begin
        begin
            font := graphics.getFont;
            This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (This.canvasStrings.FD_WIDTH).appendint (Integer (MyFontProcessor_Package.defaultCharWidth (font))).append (This.canvasStrings.FD_HEIGHT).appendint (Integer (font.getHeight)).toString, GameCommandCanvas_Access'(This'Unchecked_Access), This.canvasStrings.UPDATE_MEASUREMENT);
            This.fontHeight := font.getHeight;
            rectangle := GameCommandCanvas'Class (This).createRectangle (This.menuForm.size);
            This.menuForm.init (rectangle, FormTypeFactory_Package.getInstance.VERTICAL_CENTER_FORM);
            GameCommandCanvas'Class (This).update;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameCommandCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT, e);
                end;
        end;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   procedure onEvent (This : in out GameCommandCanvas; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GameCommandCanvas_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onDisplayChangeEvent (This : in out GameCommandCanvas; displayChangeEvent_Param : access DisplayChangeEvent_Package.DisplayChangeEvent'Class) is
      displayChangeEvent : constant DisplayChangeEvent_Access := DisplayChangeEvent_Access (displayChangeEvent_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (This.commonStrings.START).append (DisplayInfoSingleton_Package.getInstance.toString).toString, GameCommandCanvas_Access'(This'Unchecked_Access), This.canvasStrings.ON_DISPLAY_CHANGE_EVENT);
        This.myFontProcessor := This.updateMyFontProcessor;
   end onDisplayChangeEvent;

   procedure initCommands (This : in out GameCommandCanvas; cmdListener_Param : access CommandListener_Package.CommandListener'Class) is
      cmdListener : constant CommandListener_Access := CommandListener_Access (cmdListener_Param);
   begin
        GameCommandCanvas'Class (This).removeAllCommands;
        GameCommandCanvas'Class (This).addCommand (GameCommandsFactory_Package.getInstance.CLOSE_AND_SHOW_GAME_CANVAS);
        GameCommandCanvas'Class (This).setCommandListener (cmdListener);
   end initCommands;

   --  throws Exception
   procedure initMenu (This : in out GameCommandCanvas) is
      form : ScrollSelectionForm_Access;
   begin
        form := GameCommandCanvas'Class (This).createForm;
        This.menuForm := PaintableForm_Access (form);
        if (form) /= (ScrollSelectionFormNoneFactory_Package.getInstance) then
            GameCommandCanvas'Class (This).setMenuInputProcessor (ImmediateCommandFormInputProcessor_Package.Create (BasicArrayListD_Package.Create, -(1), GameCommandCanvas_Access'(This'Unchecked_Access), form));
            This.menuPaintable := Paintable_Access (FormPaintable_Package.Create (form));
        end if;
        This.repaintBehavior.onChangeRepaint (GameCommandCanvas_Access'(This'Unchecked_Access));
   end initMenu;

   --  throws Exception
   function createForm (This : in out GameCommandCanvas) return ScrollSelectionForm_Access is
      items : ABCustomItem_Access_Array_Access;
      rectangle : Rectangle_Access;
   begin
        items := CommandTextItemArrayFactory_Package.Create (AllCommandsVisitor_Package.Create).getInstance (GameCommandCanvas'Class (This).getCommandStack, This.backgroundBasicColor, This.foregroundBasicColor);
        rectangle := GameCommandCanvas'Class (This).createRectangle (items'Length);
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
        This.logUtil.putF (This.commonStrings.START, GameCommandCanvas_Access'(This'Unchecked_Access), To_Unbounded_String ("open"));
        BasicMotionGesturesHandler_Package.getInstance.addListenerInterface (GameCommandCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.addListener (GameCommandCanvas'Class (This).getMenuInputProcessor);
        DisplayChangeEventHandler_Package.getInstance.addListenerInterface (GameCommandCanvas_Access'(This'Unchecked_Access));
   end open;

   --  throws Exception
   procedure close (This : in out GameCommandCanvas) is
   begin
        This.logUtil.putF (This.commonStrings.START, GameCommandCanvas_Access'(This'Unchecked_Access), This.commonStrings.CLOSE);
        BasicMotionGesturesHandler_Package.getInstance.removeListener (GameCommandCanvas'Class (This).getMenuInputProcessor);
        GameKeyEventHandler_Package.getInstance.removeListener (GameCommandCanvas'Class (This).getMenuInputProcessor);
        DisplayChangeEventHandler_Package.getInstance.removeListener (GameCommandCanvas_Access'(This'Unchecked_Access));
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
        GameCommandCanvas'Class (This).keyPressedByDevice (keyCode, 0);
   end keyPressed;

   procedure keyReleased (This : in out GameCommandCanvas; keyCode : Integer) is
   begin
        GameCommandCanvas'Class (This).keyReleasedByDevice (keyCode, 0);
   end keyReleased;

   procedure keyRepeated (This : in out GameCommandCanvas; keyCode : Integer) is
   begin
        GameCommandCanvas'Class (This).keyRepeatedByDevice (keyCode, 0);
   end keyRepeated;

   procedure keyPressedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (CommonSeps_Package.getInstance.SPACE).appendint (keyCode).toString, GameCommandCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.KEY_PRESSED);
        GameCommandCanvas'Class (This).addGameKeyEvent (keyCode, 0, False);
   end keyPressedByDevice;

   procedure keyReleasedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        GameCommandCanvas'Class (This).removeGameKeyEvent (keyCode, deviceId, False);
   end keyReleasedByDevice;

   procedure keyRepeatedByDevice (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer) is
   begin
        if This.isSingleKeyRepeatableProcessing then
            GameCommandCanvas'Class (This).addGameKeyEvent (keyCode, deviceId, True);
        end if;
   end keyRepeatedByDevice;

   procedure addGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (GameCommandCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.gameKeyFactory.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (GameCommandCanvas_Access'(This'Unchecked_Access), gameKey);
                This.downGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.downGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, GameCommandCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), GameCommandCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.ADD_KEY_EVENT, e);
                end;
        end;
   end addGameKeyEvent;

   procedure removeGameKeyEvent (This : in out GameCommandCanvas; keyCode : Integer; deviceId : Integer; repeated : Boolean) is
      gameKey : GameKey_Access;
      gameKeyEvent : GameKeyEvent_Access;
   begin
        begin
            gameKey := This.inputToGameKeyMapping.getInstanceForCanvas (GameCommandCanvas_Access'(This'Unchecked_Access), keyCode);
            if (gameKey) /= (This.gameKeyFactory.NONE) then
                gameKeyEvent := This.gameKeyEventFactory.getInstanceForInput (GameCommandCanvas_Access'(This'Unchecked_Access), gameKey);
                This.upGameKeyEventHandler.fireEvent (gameKeyEvent);
                This.upGameKeyEventHandler.getInstanceForDevice (deviceId).fireEvent (gameKeyEvent);
            else
                This.logUtil.putF (StringMaker_Package.Create.append (This.gameInputStrings.NO_KEY).appendint (keyCode).toString, GameCommandCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (To_Unbounded_String ("Key Event Error"), GameCommandCanvas_Access'(This'Unchecked_Access), This.gameInputStrings.REMOVE_KEY_EVENT, e);
                end;
        end;
   end removeGameKeyEvent;

   procedure paint (This : in out GameCommandCanvas; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.myFontProcessor.process (graphics);
        This.menuPaintable.paint (graphics);
        This.repaintBehavior.repaint (GameCommandCanvas_Access'(This'Unchecked_Access));
   end paint;

   procedure setMenuInputProcessor (This : in out GameCommandCanvas; menuInputProcessor_Param : access BasicMenuInputProcessor_Package.BasicMenuInputProcessor'Class) is
      menuInputProcessor : constant BasicMenuInputProcessor_Access := BasicMenuInputProcessor_Access (menuInputProcessor_Param);
   begin
        This.menuInputProcessor := menuInputProcessor;
   end setMenuInputProcessor;

   function getMenuInputProcessor (This : in out GameCommandCanvas) return BasicMenuInputProcessor_Access is
   begin
        return This.menuInputProcessor;
   end getMenuInputProcessor;

   procedure createRectangle (This : in out GameCommandCanvas; size : Integer) is
      Java_Result : constant Rectangle_Access := GameCommandCanvas'Class (This).createRectangle (size => size);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRectangle;

begin
   null;
   id := 0;

end org.allbinary.game.displayable.canvas.GameCommandCanvas_Package;


