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


with org.allbinary.TsUtil_Package; use org.allbinary.TsUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringMaker_Package_References;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.LayerManager_Package; use org.allbinary.layer.LayerManager_Package;
with org.allbinary.layer.LayerManager_Package_References;
with org.allbinary.logic.ABSystemWrapper_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.graphics.GPoint_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.GroupInterfaceCompositeInterface_Package;
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
with org.allbinary.layer.LayerManager_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
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
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.event.ViewPositionEvent_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;

package body org.allbinary.layer.LayerManagerLogging_Package is

   package TsUtil_Package renames Standard.org.allbinary.TsUtil_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype StringMaker_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access;
   function "=" (Left, Right : StringMaker_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
   subtype StringMaker_Access_Array_Access_Array_Access is org.allbinary.logic.string_Id.StringMaker_Package_References.StringMaker_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StringMaker_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.string_Id.StringMaker_Package_References."=";
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
   subtype LayerManager_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access;
   function "=" (Left, Right : LayerManager_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array;
   function "=" (Left, Right : LayerManager_Access_Array) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access;
   function "=" (Left, Right : LayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access_Array is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : LayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   subtype LayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.LayerManager_Package_References.LayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.LayerManager_Package_References."=";
   procedure Initialize_Fields (This : in out LayerManagerLogging'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.stringBuilder := StringMaker_Package.Create;
      This.APPEND_Field := To_Unbounded_String ("append");
      This.APPEND_U := To_Unbounded_String (" append: ");
      This.U_AT_U := To_Unbounded_String (" at: ");
      This.ATTEMPT_REMOVE_U := To_Unbounded_String (" Remove Attempt: ");
      This.REMOVE_U := To_Unbounded_String (" Remove: ");
      This.REMOVE_Field := To_Unbounded_String ("remove");
      This.DID_NOT_REMOVE := To_Unbounded_String (" Did not remove: ");
      This.CLEAR_Field := To_Unbounded_String (" Clear List");
   end Initialize_Fields;

   procedure Initialize (This : in out LayerManagerLogging'Class) is
   begin
      LayerManagerLoggingBase_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return LayerManagerLogging_Access is
      This : constant LayerManagerLogging_Access := new LayerManagerLogging;
   begin
      LayerManagerLogging_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return LayerManagerLogging_Access is
   begin
        return LayerManagerLogging_Package.instance;
   end getInstance;

   --  throws Exception
   procedure append (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.APPEND_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.APPEND_Field);
   end append;

   procedure appendAt (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; index : Integer) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.APPEND_U).append (layerInterface.getName).append (This.U_AT_U).appendint (index).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.APPEND_Field);
   end appendAt;

   procedure remove (This : in out LayerManagerLogging; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if org.allbinary.layer.AllBinaryLayer_Package_References."=" (layerInterface, null) then
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.ATTEMPT_REMOVE_U).append (StringUtil_Package.getInstance.toString (layerInterface)).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        else
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.ATTEMPT_REMOVE_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        end if;
   end remove;

   procedure removeResult (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; result : Boolean) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      layerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (layerInterface_Param);
   begin
        if org.allbinary.layer.AllBinaryLayer_Package_References."=" (layerInterface, null) then
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.REMOVE_U).append (StringUtil_Package.getInstance.toString (layerInterface)).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
        elsif result then
            if LayerManagerLogging_Package.removeFailed then
                This.stringBuilder.delete (0, This.stringBuilder.length);
                This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.REMOVE_U).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
            end if;
        else
            This.stringBuilder.delete (0, This.stringBuilder.length);
            This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.DID_NOT_REMOVE).append (layerInterface.getName).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
            LayerManagerLogging_Package.removeFailed := True;
        end if;
   end removeResult;

   procedure log (This : in out LayerManagerLogging; layerManager_Param : access LayerManager_Package.LayerManager'Class) is
      layerManager : constant LayerManager_Access := LayerManager_Access (layerManager_Param);
      size : Integer;
      commonSeps : CommonSeps_Access;
      allBinaryLayer : AllBinaryLayer_Access;
      index : Integer;
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        size := layerManager.getSize;
        commonSeps := CommonSeps_Package.getInstance;
        This.stringBuilder.append (To_Unbounded_String (Java_To_Unsigned_String (TsUtil_Package.getInstance.hashCode (layerManager), 16))).append (commonSeps.COLON_SEP);
        This.stringBuilder.appendint (size).append (commonSeps.COLON_SEP);
        allBinaryLayer := null;
        for index in 0 .. (size) - 1 loop
            allBinaryLayer := (AllBinaryLayer_Access (layerManager.getLayerAt (index)));
            This.stringBuilder.append (allBinaryLayer.getName).append (commonSeps.COMMA);
        end loop;
        This.logUtil.putF (This.stringBuilder.toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.REMOVE_Field);
   end log;

   procedure clear (This : in out LayerManagerLogging) is
   begin
        This.stringBuilder.delete (0, This.stringBuilder.length);
        This.logUtil.putF (This.stringBuilder.appendint (TsUtil_Package.getInstance.hashCode (LayerManagerLogging_Access'(This'Unchecked_Access))).append (This.CLEAR_Field).toString, LayerManagerLogging_Access'(This'Unchecked_Access), This.CLEAR_Field);
   end clear;

begin
   null;
   instance := LayerManagerLogging_Package.Create;
   removeFailed := False;

end org.allbinary.layer.LayerManagerLogging_Package;


