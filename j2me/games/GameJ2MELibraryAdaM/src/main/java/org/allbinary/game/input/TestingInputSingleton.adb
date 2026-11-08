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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AllBinaryGameLayer_Package; use org.allbinary.game.layer.AllBinaryGameLayer_Package;
with org.allbinary.graphics.RectangleFactory_Package; use org.allbinary.graphics.RectangleFactory_Package;
with org.allbinary.graphics.paint.NullPaintable_Package; use org.allbinary.graphics.paint.NullPaintable_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package; use org.allbinary.graphics.paint.PaintableInterface_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package; use org.allbinary.game.input.GameInputProcessorUtil_Package;
with org.allbinary.game.input.TestInputInterface_Package; use org.allbinary.game.input.TestInputInterface_Package;
with org.allbinary.game.input.TestInputInterface_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.image.opengles.OpenGLSurfaceChangedInterface_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.Paintable_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.thread.SynchObject_Package;
with org.allbinary.game.input.TestInputInterface_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.view.event.ViewPositionEventListenerInterface_Package;

package body org.allbinary.game.input.TestingInputSingleton_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package RectangleFactory_Package renames Standard.org.allbinary.graphics.RectangleFactory_Package;
   package NullPaintable_Package renames Standard.org.allbinary.graphics.paint.NullPaintable_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype GameInputProcessor_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access;
   function "=" (Left, Right : GameInputProcessor_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype GameInputProcessor_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInputProcessor_Package_References.GameInputProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInputProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInputProcessor_Package_References."=";
   subtype TestInputInterface_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access;
   function "=" (Left, Right : TestInputInterface_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array;
   function "=" (Left, Right : TestInputInterface_Access_Array) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array_Access_Array is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   subtype TestInputInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.TestInputInterface_Package_References.TestInputInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TestInputInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.TestInputInterface_Package_References."=";
   procedure Initialize_Fields (This : in out TestingInputSingleton'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.TestingInputSingleton_Field_paintable := PaintableInterface_Access (NullPaintable_Package.getInstance);
   end Initialize_Fields;


   function getInstance return TestingInputSingleton_Access is
   begin
        return TestingInputSingleton_Access (TestingInputSingleton_Package.instance);
   end getInstance;

   procedure Initialize (This : in out TestingInputSingleton'Class) is
   begin
        AllBinaryGameLayer_Package.Initialize (This, StringUtil_Package.getInstance.EMPTY_STRING, RectangleFactory_Package.SINGLETON, ViewPosition_Package.getInstanceD);
        Initialize_Fields (This);
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end Initialize;

   function Create return TestingInputSingleton_Access is
      This : constant TestingInputSingleton_Access := new TestingInputSingleton;
   begin
      TestingInputSingleton_Package.Initialize (This.all);
      return This;
   end Create;

   procedure initInputProcessors (This : in out TestingInputSingleton) is
   begin
        null;
   end initInputProcessors;

   procedure initInputProcessorsForTestInput (This : in out TestingInputSingleton; aTestInputInterface_Param : access TestInputInterface_Package.TestInputInterface'Class) is
      aTestInputInterface : constant TestInputInterface_Access := TestInputInterface_Access (aTestInputInterface_Param);
      testInputInterface : TestInputInterface_Access;
   begin
        testInputInterface := aTestInputInterface;
        This.TestingInputSingleton_Field_paintable := PaintableInterface_Access (testInputInterface);
        This.inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.up;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.down;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.LEFT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.left;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.RIGHT) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.right;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM7) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.strafeLeft;
--     end processEvent;
;
        This.inputProcessorArray (Canvas_Package.KEY_NUM9) := GameInputProcessor_Package.Create  --  Java anonymous class body: implement it as a named type
--              
--     --  throws Exception
--     procedure processEvent (This : in out ; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
--        allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
--        gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
--     begin
--                  testInputInterface.strafeRight;
--     end processEvent;
;
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessorsForTestInput;

   --  throws Exception
   procedure processInputList (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      size : Integer;
      index : Integer;
   begin
        key := 0;
        gameKeyEvent := null;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            gameKeyEvent := (GameKeyEvent_Access (list.objectArray (index)));
            key := gameKeyEvent.getKey;
            This.inputProcessorArray (key).processEvent (allbinaryLayerManager, GameKeyEvent_Package.NONE);
        end loop;
   end processInputList;

   --  throws Exception
   procedure processInput (This : in out TestingInputSingleton; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
   begin
        TestingInputSingleton'Class (This).processInputList (allbinaryLayerManager, TestingInputSingleton'Class (This).getGameKeyEventList);
        TestingInputSingleton'Class (This).getGameKeyEventList.clear;
   end processInput;

   procedure paint (This : in out TestingInputSingleton; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        This.TestingInputSingleton_Field_paintable.paint (graphics);
   end paint;

   function implmentsGameInputInterface (This : in out TestingInputSingleton) return Boolean is
   begin
        return True;
   end implmentsGameInputInterface;

begin
   null;
   instance := TestingInputSingleton_Package.Create;

end org.allbinary.game.input.TestingInputSingleton_Package;


