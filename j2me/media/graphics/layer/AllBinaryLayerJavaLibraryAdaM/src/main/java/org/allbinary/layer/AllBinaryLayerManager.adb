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


with org.allbinary.layer.event.LayerManagerEvent_Package; use org.allbinary.layer.event.LayerManagerEvent_Package;
with org.allbinary.layer.event.LayerManagerEvent_Package_References;
with org.allbinary.layer.event.LayerManagerEventHandler_Package; use org.allbinary.layer.event.LayerManagerEventHandler_Package;
with org.allbinary.layer.event.LayerManagerEventHandler_Package_References;
with org.allbinary.layer.LayerProcessor_Package; use org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.layer.LayerProcessor_Package_References;
with org.allbinary.layer.LayerManagerNoDebug_Package; use org.allbinary.layer.LayerManagerNoDebug_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with org.allbinary.layer.BasicLayerProcessorInterface_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
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
with org.microemu.DisplayAccess_Package;
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
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.layer.LayerInterface_Package;
with org.allbinary.layer.event.LayerManagerEventListener_Package;
with org.allbinary.layer.event.LayerManagerEventListenerInterface_Package;
with org.allbinary.layer.LayerManagerLoggingBase_Package;
with org.allbinary.layer.LayerManagerNoDebug_Package;
with org.allbinary.layer.LayerProcessor_Package;
with org.allbinary.layer.LayerProcessorInterface_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.layer.NamedInterface_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.paint.PaintableInterface_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.layer.PositionInterface_Package;
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

package body org.allbinary.layer.AllBinaryLayerManager_Package is

   subtype LayerManagerEvent_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access;
   function "=" (Left, Right : LayerManagerEvent_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEvent_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEvent_Package_References.LayerManagerEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEvent_Package_References."=";
   subtype LayerManagerEventHandler_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array_Access_Array is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerManagerEventHandler_Access_Array_Access_Array_Access is org.allbinary.layer.event.LayerManagerEventHandler_Package_References.LayerManagerEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManagerEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.event.LayerManagerEventHandler_Package_References."=";
   subtype LayerProcessor_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access;
   function "=" (Left, Right : LayerProcessor_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array;
   function "=" (Left, Right : LayerProcessor_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access_Array is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype LayerProcessor_Access_Array_Access_Array_Access is org.allbinary.layer.LayerProcessor_Package_References.LayerProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerProcessor_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   procedure Initialize_Fields (This : in out AllBinaryLayerManager'Class) is
   begin
      null;
      This.layerManagerEventHandler := LayerManagerEventHandler_Package.getInstance;
      This.createLayerManagerEvent := LayerManagerEvent_Package.Create (AllBinaryLayerManager_Access'(This'Unchecked_Access), This.layerManagerEventHandler.CREATE);
      This.deleteLayerManagerEvent := LayerManagerEvent_Package.Create (AllBinaryLayerManager_Access'(This'Unchecked_Access), This.layerManagerEventHandler.DELETE);
      This.basicLayerProcessorArray := new LayerProcessor_Access_Array'(0 .. (0) - 1 => null);
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryLayerManager'Class) is
   begin
        LayerManager_Package.Initialize (This, LayerManagerNoDebug_Package.getInstance);
        Initialize_Fields (This);
   end Initialize;

   function Create return AllBinaryLayerManager_Access is
      This : constant AllBinaryLayerManager_Access := new AllBinaryLayerManager;
   begin
      AllBinaryLayerManager_Package.Initialize (This.all);
      return This;
   end Create;

   function getLayerProcessorArray (This : in out AllBinaryLayerManager) return LayerProcessor_Access_Array_Access is
   begin
        return This.basicLayerProcessorArray;
   end getLayerProcessorArray;

   procedure setLayerProcessorArray (This : in out AllBinaryLayerManager; layerProcessorArray : LayerProcessor_Access_Array_Access) is
   begin
        This.basicLayerProcessorArray := layerProcessorArray;
   end setLayerProcessorArray;

   procedure log (This : in out AllBinaryLayerManager) is
      size : Integer;
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
        end loop;
   end log;

   --  throws Exception
   procedure append (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (AllBinaryLayerManager'Class (This).contains (layerInterface)) then
            AllBinaryLayerManager'Class (This).appendProcessors (layerInterface);
            LayerManager_Package.LayerManager (This).append (layerInterface);
        end if;
   end append;

   --  throws Exception
   procedure appendAt (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if not (AllBinaryLayerManager'Class (This).contains (layerInterface)) then
            AllBinaryLayerManager'Class (This).appendProcessors (layerInterface);
            LayerManager_Package.LayerManager (This).appendAt (layerInterface, index);
        end if;
   end appendAt;

   --  throws Exception
   procedure appendProcessors (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        This.createLayerManagerEvent.setLayerInterface (layerInterface);
        This.layerManagerEventHandler.fireEvent (This.createLayerManagerEvent);
        layerProcessorInterface := null;
        index := This.basicLayerProcessorArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            if layerProcessorInterface.isProcessorLayer (layerInterface) then
                layerProcessorInterface.getLayerManager.append (layerInterface);
            end if;
        end loop;
   end appendProcessors;

   --  throws Exception
   procedure remove (This : in out AllBinaryLayerManager; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
      layerProcessorInterface : LayerProcessor_Access;
      index : Integer;
   begin
        This.deleteLayerManagerEvent.setLayerInterface (layerInterface);
        This.layerManagerEventHandler.fireDeleteEvent (This.deleteLayerManagerEvent);
        layerProcessorInterface := null;
        index := This.basicLayerProcessorArray'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.getLayerManager.remove (layerInterface);
        end loop;
        LayerManager_Package.LayerManager (This).remove (layerInterface);
   end remove;

   --  throws Exception
   procedure process (This : in out AllBinaryLayerManager) is
      layerProcessorInterface : LayerProcessor_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterface := null;
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.process (AllBinaryLayerManager_Access'(This'Unchecked_Access));
        end loop;
   end process;

   --  throws Exception
   procedure cleanup (This : in out AllBinaryLayerManager) is
      layerProcessorInterface : LayerProcessor_Access;
      size : Integer;
      index : Integer;
   begin
        layerProcessorInterface := null;
        size := This.basicLayerProcessorArray'Length;
        for index in 0 .. (size) - 1 loop
            layerProcessorInterface := This.basicLayerProcessorArray (index);
            layerProcessorInterface.getLayerManager.cleanup;
        end loop;
        LayerManager_Package.LayerManager (This).cleanup;
   end cleanup;

end org.allbinary.layer.AllBinaryLayerManager_Package;


