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


with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package; use org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.game.displayable.canvas.AllBinaryGameCanvasInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.graphics.CellPosition_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with org.allbinary.animation.vector.CircleFilledAnimation_Package;
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
with org.allbinary.game.GameInfo_Package;
with org.allbinary.game.GameInfoData_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.GameMode_Package;
with org.allbinary.game.GameType_Package;
with javax.microedition.lcdui.Gauge_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package;
with org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
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
with org.allbinary.layer.LayerProcessor_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.layer.geographic.map.MiniMapLayer_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.allbinary.game.input.PlayerGameInputCompositeInterface_Package;
with org.allbinary.game.PlayerType_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
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
with org.allbinary.graph.V_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;

package body org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package is

   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   subtype GeographicMapCellPositionTracking_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionTracking_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References.GeographicMapCellPositionTracking_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionTracking_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionTracking_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEvent_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References.GeographicMapCellPositionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   subtype GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References.GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapCellPositionEventUtil'Class) is
   begin
      null;
      
      This.geographicMapCellPositionEventHandler := GeographicMapCellPositionEventHandler_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellPositionEventUtil'Class; anyType_Param : access Java_Object'Class) is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
      Initialize_Fields (This);
        This.geographicMapCellPositionEvent := GeographicMapCellPositionEvent_Package.Create (anyType, CellPositionFactory_Package.getInstance.NONE);
   end Initialize;

   function Create (anyType_Param : access Java_Object'Class) return GeographicMapCellPositionEventUtil_Access is
      This : constant GeographicMapCellPositionEventUtil_Access := new GeographicMapCellPositionEventUtil;
   begin
      GeographicMapCellPositionEventUtil_Package.Initialize (This.all, anyType_Param);
      return This;
   end Create;

   --  throws Exception
   procedure update (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class) is
      geographicMapCellPositionTracking : constant GeographicMapCellPositionTracking_Access := GeographicMapCellPositionTracking_Access (geographicMapCellPositionTracking_Param);
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireEvent (This.geographicMapCellPositionEvent);
   end update;

   --  throws Exception
   procedure remove (This : in out GeographicMapCellPositionEventUtil; geographicMapCellPositionTracking_Param : access GeographicMapCellPositionTracking_Package.GeographicMapCellPositionTracking'Class) is
      geographicMapCellPositionTracking : constant GeographicMapCellPositionTracking_Access := GeographicMapCellPositionTracking_Access (geographicMapCellPositionTracking_Param);
   begin
        This.geographicMapCellPositionEvent.setGeographicMapCellPosition (geographicMapCellPositionTracking.getCurrentGeographicMapCellPosition);
        This.geographicMapCellPositionEventHandler.fireRemoveEvent (This.geographicMapCellPositionEvent);
   end remove;

end org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventUtil_Package;


