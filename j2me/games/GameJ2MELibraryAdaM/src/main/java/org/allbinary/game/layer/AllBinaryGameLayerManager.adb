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


with org.allbinary.game.GameInfo_Package; use org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfo_Package_References;
with org.allbinary.game.input.NullPlayerGameInputComposite_Package; use org.allbinary.game.input.NullPlayerGameInputComposite_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package; use org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References;
with org.allbinary.graphics.ItemColorFactory_Package; use org.allbinary.graphics.ItemColorFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
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
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
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
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
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

package body org.allbinary.game.layer.AllBinaryGameLayerManager_Package is

   package NullPlayerGameInputComposite_Package renames Standard.org.allbinary.game.input.NullPlayerGameInputComposite_Package;
   package ItemColorFactory_Package renames Standard.org.allbinary.graphics.ItemColorFactory_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package LayerProcessor_Package renames Standard.org.allbinary.layer.LayerProcessor_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   subtype GameInfo_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access;
   function "=" (Left, Right : GameInfo_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype GameInfo_Access_Array_Access_Array_Access is org.allbinary.game.GameInfo_Package_References.GameInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.GameInfo_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References.PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PlayerGameInputCompositeInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.PlayerGameInputCompositeInterface_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
   procedure Initialize_Fields (This : in out AllBinaryGameLayerManager'Class) is
   begin
      null;
      
      
      
      This.playerGameInputCompositeInterface := PlayerGameInputCompositeInterface_Access (NullPlayerGameInputComposite_Package.NULL_PLAYER_GAME_INPUT_COMPOSITE);
   end Initialize_Fields;


   function getNullInstance return AllBinaryGameLayerManager_Access is
   begin
        if (AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER := Java_Object_Access (AllBinaryGameLayerManager_Package.Create (BasicColorFactory_Package.getInstance.BLACK, BasicColorFactory_Package.getInstance.WHITE, GameInfo_Package.NONE));
        end if;
        return AllBinaryGameLayerManager_Access (AllBinaryGameLayerManager_Package.NULL_ALLBINARY_LAYER_MANAGER);
   end getNullInstance;

   procedure Initialize (This : in out AllBinaryGameLayerManager'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
      itemColorFactory : ItemColorFactory_Access;
   begin
      AllBinaryLayerManager_Package.Initialize (This);
      Initialize_Fields (This);
        This.backgroundBasicColor := backgroundBasicColor;
        This.foregroundBasicColor := foregroundBasicColor;
        itemColorFactory := ItemColorFactory_Package.getInstance;
        itemColorFactory.INVERT_PAINT := This.backgroundBasicColor.intValue;
        itemColorFactory.PAINT := This.foregroundBasicColor.intValue;
        This.gameInfo := gameInfo;
   end Initialize;

   function Create (backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; gameInfo_Param : access GameInfo_Package.GameInfo'Class) return AllBinaryGameLayerManager_Access is
      This : constant AllBinaryGameLayerManager_Access := new AllBinaryGameLayerManager;
   begin
      AllBinaryGameLayerManager_Package.Initialize (This.all, backgroundBasicColor_Param, foregroundBasicColor_Param, gameInfo_Param);
      return This;
   end Create;

   function getLayerManager (This : in out AllBinaryGameLayerManager) return AllBinaryLayerManager_Access is
   begin
        return AllBinaryLayerManager_Access (AllBinaryGameLayerManager_Access'(This'Unchecked_Access));
   end getLayerManager;

   procedure init (This : in out AllBinaryGameLayerManager) is
   begin
        null;
   end init;

   function getBackgroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access is
   begin
        return This.backgroundBasicColor;
   end getBackgroundBasicColor;

   procedure setBackgroundBasicColor (This : in out AllBinaryGameLayerManager; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
   begin
        This.backgroundBasicColor := backgroundBasicColor;
        ItemColorFactory_Package.getInstance.INVERT_PAINT := This.backgroundBasicColor.intValue;
   end setBackgroundBasicColor;

   function getForegroundBasicColor (This : in out AllBinaryGameLayerManager) return BasicColor_Access is
   begin
        return This.foregroundBasicColor;
   end getForegroundBasicColor;

   procedure setForegroundBasicColor (This : in out AllBinaryGameLayerManager; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class) is
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
   begin
        This.foregroundBasicColor := foregroundBasicColor;
        ItemColorFactory_Package.getInstance.PAINT := This.foregroundBasicColor.intValue;
   end setForegroundBasicColor;

   function getGameInfo (This : in out AllBinaryGameLayerManager) return GameInfo_Access is
   begin
        return This.gameInfo;
   end getGameInfo;

   procedure setGameInfo (This : in out AllBinaryGameLayerManager; gameInfo_Param : access GameInfo_Package.GameInfo'Class) is
      gameInfo : constant GameInfo_Access := GameInfo_Access (gameInfo_Param);
   begin
        This.gameInfo := gameInfo;
   end setGameInfo;

   procedure setLayerProcessorList (This : in out AllBinaryGameLayerManager; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      layerProcessorInterfaceArray : LayerProcessor_Access_Array_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterfaceArray := new LayerProcessor_Access_Array'(0 .. (list.size) - 1 => null);
        size := layerProcessorInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterfaceArray (index) := LayerProcessor_Access (list.objectArray (index));
        end loop;
        AllBinaryGameLayerManager'Class (This).setLayerProcessorArray (layerProcessorInterfaceArray);
   end setLayerProcessorList;

   procedure setPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager; playerGameInputCompositeInterface_Param : access PlayerGameInputCompositeInterface_Package.PlayerGameInputCompositeInterface'Class) is
      playerGameInputCompositeInterface : constant PlayerGameInputCompositeInterface_Access := PlayerGameInputCompositeInterface_Access (playerGameInputCompositeInterface_Param);
   begin
        This.playerGameInputCompositeInterface := playerGameInputCompositeInterface;
   end setPlayerGameInputCompositeInterface;

   function getPlayerGameInputCompositeInterface (This : in out AllBinaryGameLayerManager) return PlayerGameInputCompositeInterface_Access is
   begin
        return This.playerGameInputCompositeInterface;
   end getPlayerGameInputCompositeInterface;

begin
   null;
   NULL_ALLBINARY_LAYER_MANAGER := NullUtil_Package.getInstance.NULL_OBJECT;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (22);

end org.allbinary.game.layer.AllBinaryGameLayerManager_Package;


