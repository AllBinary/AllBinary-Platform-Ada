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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.layer.event.ScrollMapEvent_Package; use org.allbinary.layer.event.ScrollMapEvent_Package;
with org.allbinary.layer.event.ScrollMapEvent_Package_References;
with org.allbinary.layer.event.ScrollMapEventHandler_Package; use org.allbinary.layer.event.ScrollMapEventHandler_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.game.input.GameInputProcessor_Package; use org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessor_Package_References;
with org.allbinary.game.input.InputFactory_Package; use org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapDownGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapDownGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapLeftGameInputProcessor_Package; use org.allbinary.game.input.ScrollMapLeftGameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package; use org.allbinary.game.input.GameInputProcessorUtil_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputProcessor_Package;
with org.allbinary.game.input.GameInputProcessorUtil_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.InputFactory_Package;
with org.allbinary.game.configuration.feature.InputFeature_Package;
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
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.game.input.ScrollMapDownGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapLeftGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapRightGameInputProcessor_Package;
with org.allbinary.game.input.ScrollMapUpGameInputProcessor_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.TsUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.game.input.ScrollMapPlayerGameInput_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ScrollMapEventHandler_Package renames Standard.org.allbinary.layer.event.ScrollMapEventHandler_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   subtype ScrollMapEvent_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access;
   function "=" (Left, Right : ScrollMapEvent_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype ScrollMapEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.ScrollMapEvent_Package_References.ScrollMapEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollMapEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.ScrollMapEvent_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
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
   procedure Initialize_Fields (This : in out ScrollMapPlayerGameInput'Class) is
   begin
      null;
      This.inputProcessorArray := new GameInputProcessor_Access_Array'(0 .. (InputFactory_Package.getInstance.MAX) - 1 => null);
      This.border := 150;
      
      This.isSingleKeyProcessing := (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_REPEAT_PRESS)) or else (Features_Package.getInstance.isFeature (InputFeatureFactory_Package.getInstance.SINGLE_KEY_PRESS));
      
      This.maxBottom := 0;
      This.maxRight := 0;
      This.scrollMapEvent := ScrollMapEvent_Package.Create (ScrollMapPlayerGameInput_Access'(This'Unchecked_Access));
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapPlayerGameInput'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        PlayerGameInput_Package.Initialize (This, list, BasicArrayListD_Package.Create, playerInputId);
        Initialize_Fields (This);
        ScrollMapPlayerGameInput'Class (This).initInputProcessors;
        This.geographicMapInterface := geographicMapInterface;
        This.inputList := list;
        ScrollMapPlayerGameInput'Class (This).init;
   end Initialize;

   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; list_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer) return ScrollMapPlayerGameInput_Access is
      This : constant ScrollMapPlayerGameInput_Access := new ScrollMapPlayerGameInput;
   begin
      ScrollMapPlayerGameInput_Package.Initialize (This.all, geographicMapInterface_Param, list_Param, playerInputId);
      return This;
   end Create;

   --  throws Exception
   procedure move (This : in out ScrollMapPlayerGameInput; dx : Integer; dy : Integer) is
      terrainTiledLayer : AllBinaryTiledLayer_Access;
   begin
        terrainTiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        terrainTiledLayer.moveDXY (-(dx), -(dy));
        This.scrollMapEvent.setDxDy (-(dx), -(dy));
        ScrollMapEventHandler_Package.getInstance.fireEvent (This.scrollMapEvent);
   end move;

   procedure init (This : in out ScrollMapPlayerGameInput) is
   begin
        This.maxBottom := ScrollMapPlayerGameInput'Class (This).getSpecialHeight;
        This.maxRight := ScrollMapPlayerGameInput'Class (This).getSpecialWidth;
   end init;

   --  throws Exception
   procedure scrollMiddleX (This : in out ScrollMapPlayerGameInput) is
      terrainTiledLayer : AllBinaryTiledLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
      diffX : Integer;
   begin
        terrainTiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        ScrollMapPlayerGameInput'Class (This).move (-(terrainTiledLayer.getXP), 0);
        if (terrainTiledLayer.getWidth) < (displayInfo.getLastWidth) then
            diffX := (Java_Shift_Right_Arithmetic (((displayInfo.getLastWidth) - (terrainTiledLayer.getWidth)), 1));
            ScrollMapPlayerGameInput'Class (This).move (-(diffX), 0);
        else
            diffX := (Java_Shift_Right_Arithmetic (((terrainTiledLayer.getWidth) - (displayInfo.getLastWidth)), 1));
            ScrollMapPlayerGameInput'Class (This).move (diffX, 0);
        end if;
   end scrollMiddleX;

   --  throws Exception
   procedure scrollY (This : in out ScrollMapPlayerGameInput; anchor : Integer) is
      terrainTiledLayer : AllBinaryTiledLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
      diffY : Integer;
   begin
        terrainTiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (anchor) = (Graphics_Package.TOP) then
            This.logUtil.putF (To_Unbounded_String ("Top"), ScrollMapPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("scrollY"));
        elsif (anchor) = (Graphics_Package.BOTTOM) then
            This.logUtil.putF (To_Unbounded_String ("Bottom"), ScrollMapPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("scrollY"));
            diffY := ((terrainTiledLayer.getHeight) - (displayInfo.getLastHeight));
            ScrollMapPlayerGameInput'Class (This).move (0, diffY);
        elsif (anchor) = (Graphics_Package.VCENTER) then
            This.logUtil.putF (To_Unbounded_String ("Center"), ScrollMapPlayerGameInput_Access'(This'Unchecked_Access), To_Unbounded_String ("scrollY"));
            diffY := (((terrainTiledLayer.getHeight) - (displayInfo.getLastHeight))) / (2);
            ScrollMapPlayerGameInput'Class (This).move (0, diffY);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("No Such Anchor Supported")));
        end if;
   end scrollY;

   --  throws Exception
   procedure up (This : in out ScrollMapPlayerGameInput) is
      y : Integer;
   begin
        y := (This.geographicMapInterface.getAllBinaryTiledLayer.getYP) - (10);
        if ScrollMapPlayerGameInput'Class (This).keepOnMapMinY (y) then
            ScrollMapPlayerGameInput'Class (This).move (0, -(10));
        end if;
   end up;

   --  throws Exception
   procedure down (This : in out ScrollMapPlayerGameInput) is
      y : Integer;
   begin
        y := (-(This.geographicMapInterface.getAllBinaryTiledLayer.getYP)) + (10);
        if ScrollMapPlayerGameInput'Class (This).keepOnMapMaxY (y) then
            ScrollMapPlayerGameInput'Class (This).move (0, 10);
        end if;
   end down;

   --  throws Exception
   procedure right (This : in out ScrollMapPlayerGameInput) is
      x : Integer;
   begin
        x := (This.geographicMapInterface.getAllBinaryTiledLayer.getYP) + (10);
        if ScrollMapPlayerGameInput'Class (This).keepOnMapMinX (x) then
            ScrollMapPlayerGameInput'Class (This).move (10, 0);
        end if;
   end right;

   --  throws Exception
   procedure left (This : in out ScrollMapPlayerGameInput) is
      x : Integer;
   begin
        x := (-(This.geographicMapInterface.getAllBinaryTiledLayer.getYP)) - (10);
        if ScrollMapPlayerGameInput'Class (This).keepOnMapMaxX (x) then
            ScrollMapPlayerGameInput'Class (This).move (-(10), 0);
        end if;
   end left;

   procedure initInputProcessors (This : in out ScrollMapPlayerGameInput) is
   begin
        This.inputProcessorArray (Canvas_Package.UP) := GameInputProcessor_Access (ScrollMapUpGameInputProcessor_Package.Create (ScrollMapPlayerGameInput_Access'(This'Unchecked_Access)));
        This.inputProcessorArray (Canvas_Package.DOWN) := GameInputProcessor_Access (ScrollMapDownGameInputProcessor_Package.Create (ScrollMapPlayerGameInput_Access'(This'Unchecked_Access)));
        This.inputProcessorArray (Canvas_Package.KEY_NUM9) := GameInputProcessor_Access (ScrollMapRightGameInputProcessor_Package.Create (ScrollMapPlayerGameInput_Access'(This'Unchecked_Access)));
        This.inputProcessorArray (Canvas_Package.KEY_NUM7) := GameInputProcessor_Access (ScrollMapLeftGameInputProcessor_Package.Create (ScrollMapPlayerGameInput_Access'(This'Unchecked_Access)));
        GameInputProcessorUtil_Package.init (This.inputProcessorArray);
   end initInputProcessors;

   --  throws Exception
   procedure processInputKey (This : in out ScrollMapPlayerGameInput; key : Integer) is
   begin
        This.inputProcessorArray (key).processEvent (AllBinaryGameLayerManager_Package.getNullInstance, GameKeyEvent_Package.NONE);
   end processInputKey;

   --  throws Exception
   procedure processInput (This : in out ScrollMapPlayerGameInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            size := This.inputList.size;
            key := 0;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (This.inputList.get (index));
                key := gameKeyEvent.getKey;
                ScrollMapPlayerGameInput'Class (This).processInputKey (key);
            end loop;
            if This.isSingleKeyProcessing then
                ScrollMapPlayerGameInput'Class (This).clear;
            else
                ScrollMapPlayerGameInput'Class (This).update;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, ScrollMapPlayerGameInput_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_INPUT, e);
                end;
        end;
   end processInput;

   function getSpecialHeight (This : in out ScrollMapPlayerGameInput) return Integer is
      terrainTiledLayer : AllBinaryTiledLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        terrainTiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (terrainTiledLayer.getHeight) > (displayInfo.getLastHeight) then
            return (terrainTiledLayer.getHeight) - (displayInfo.getLastHeight);
        else
            return ((displayInfo.getLastHeight) - (terrainTiledLayer.getHeight)) + (terrainTiledLayer.getCellHeight);
        end if;
   end getSpecialHeight;

   function getSpecialWidth (This : in out ScrollMapPlayerGameInput) return Integer is
      terrainTiledLayer : AllBinaryTiledLayer_Access;
      displayInfo : DisplayInfoSingleton_Access;
   begin
        terrainTiledLayer := This.geographicMapInterface.getAllBinaryTiledLayer;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        if (terrainTiledLayer.getWidth) > (displayInfo.getLastWidth) then
            return (terrainTiledLayer.getWidth) - (displayInfo.getLastWidth);
        else
            return ((displayInfo.getLastWidth) - (terrainTiledLayer.getWidth)) + (terrainTiledLayer.getCellWidth);
        end if;
   end getSpecialWidth;

   function keepOnMapMaxY (This : in out ScrollMapPlayerGameInput; newY : Integer) return Boolean is
      y : Integer;
   begin
        y := This.geographicMapInterface.getAllBinaryTiledLayer.getYP;
        if (y) > ((This.maxBottom) + (This.border)) then
            return False;
        else
            return True;
        end if;
   end keepOnMapMaxY;

   function keepOnMapMinY (This : in out ScrollMapPlayerGameInput; newY : Integer) return Boolean is
      y : Integer;
   begin
        y := This.geographicMapInterface.getAllBinaryTiledLayer.getYP;
        if (y) < (-(This.border)) then
            return False;
        else
            return True;
        end if;
   end keepOnMapMinY;

   function keepOnMapMaxX (This : in out ScrollMapPlayerGameInput; newX : Integer) return Boolean is
      x : Integer;
   begin
        x := This.geographicMapInterface.getAllBinaryTiledLayer.getXP;
        if (x) < ((-(This.maxRight)) - (This.border)) then
            return False;
        else
            return True;
        end if;
   end keepOnMapMaxX;

   function keepOnMapMinX (This : in out ScrollMapPlayerGameInput; newX : Integer) return Boolean is
      x : Integer;
   begin
        x := This.geographicMapInterface.getAllBinaryTiledLayer.getXP;
        if (x) > (This.border) then
            return False;
        else
            return True;
        end if;
   end keepOnMapMinX;

   procedure keepOnMapMaxY (This : in out ScrollMapPlayerGameInput; newY : Integer) is
      Java_Result : constant Boolean := ScrollMapPlayerGameInput'Class (This).keepOnMapMaxY (newY => newY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapMaxY;

   procedure keepOnMapMinY (This : in out ScrollMapPlayerGameInput; newY : Integer) is
      Java_Result : constant Boolean := ScrollMapPlayerGameInput'Class (This).keepOnMapMinY (newY => newY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapMinY;

   procedure keepOnMapMaxX (This : in out ScrollMapPlayerGameInput; newX : Integer) is
      Java_Result : constant Boolean := ScrollMapPlayerGameInput'Class (This).keepOnMapMaxX (newX => newX);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapMaxX;

   procedure keepOnMapMinX (This : in out ScrollMapPlayerGameInput; newX : Integer) is
      Java_Result : constant Boolean := ScrollMapPlayerGameInput'Class (This).keepOnMapMinX (newX => newX);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end keepOnMapMinX;

end org.allbinary.game.input.ScrollMapPlayerGameInput_Package;


