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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.graphics.CellPositionFactory_Package; use org.allbinary.graphics.CellPositionFactory_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.graphics.paint.Paintable_Package; use org.allbinary.graphics.paint.Paintable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButton_Package; use org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package; use org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package; use org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.input.motion.button.BasicTouchInputFactory_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with org.allbinary.graphics.CellPosition_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.string_Id.CommonSeps_Package;
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
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.input.mapping.InputMapping_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with org.allbinary.game.input.mapping.InputToGameKeyMapping_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
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
with org.allbinary.input.motion.button.TouchButton_Package;
with org.allbinary.input.motion.button.TouchButtonBlankResource_Package;
with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;
with org.allbinary.input.motion.button.TouchButtonResource_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package is

   package CellPositionFactory_Package renames Standard.org.allbinary.graphics.CellPositionFactory_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype TouchButtonLocationHelper_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   subtype TouchButtonLocationHelper_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References.TouchButtonLocationHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonLocationHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonsMappingPaintable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.paintableTable := new Paintable_Access_Array_Access_Array'(0 .. (0) - 1 => new Paintable_Access_Array'(0 .. (0) - 1 => null));
      This.touchButtonLocationHelper := TouchButtonLocationHelper_Package.Create;
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonsMappingPaintable'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      Paintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.foregroundColor := basicColor.intValue;
        TouchButtonsMappingPaintable'Class (This).init;
   end Initialize;

   function Create (basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsMappingPaintable_Access is
      This : constant TouchButtonsMappingPaintable_Access := new TouchButtonsMappingPaintable;
   begin
      TouchButtonsMappingPaintable_Package.Initialize (This.all, basicColor_Param);
      return This;
   end Create;

   procedure init (This : in out TouchButtonsMappingPaintable) is
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.paintableTable := TouchButtonsMappingPaintable'Class (This).createPaintableTable;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, TouchButtonsMappingPaintable_Access'(This'Unchecked_Access), To_Unbounded_String ("updateRectangle"), e);
                end;
        end;
   end init;

   --  throws Exception
   function createPaintableTable (This : in out TouchButtonsMappingPaintable) return Paintable_Access_Array_Access_Array_Access is
      totalColumns : Integer;
      totalRows : Integer;
      paintableTable : Paintable_Access_Array_Access_Array_Access;
      cellPositionFactory : CellPositionFactory_Access;
      commonButtons : CommonButtons_Access;
      rowIndex : Integer;
      index : Integer;
   begin
        totalColumns := This.touchButtonLocationHelper.getTotalColumns;
        totalRows := This.touchButtonLocationHelper.getTotalRows;
        paintableTable := new Paintable_Access_Array_Access_Array'(0 .. (totalColumns) - 1 => new Paintable_Access_Array'(0 .. (totalRows) - 1 => null));
        cellPositionFactory := CellPositionFactory_Package.getInstance;
        commonButtons := CommonButtons_Package.getInstance;
        for index in reverse 0 .. (totalColumns) - (1) loop
            for rowIndex in reverse 0 .. (totalRows) - (1) loop
                This.paintableTable (index) (rowIndex) := Paintable_Access (TouchButton_Package.createButton (BasicTouchInputFactory_Package.getInstance.NONE, TouchButtonBlankResource_Package.getInstance, commonButtons.NORMAL_BUTTON, cellPositionFactory.getInstanceColRow (index, rowIndex), This.touchButtonLocationHelper.getColumnsRemainderHalf, This.touchButtonLocationHelper.getRowsRemainderHalf));
            end loop;
        end loop;
        return paintableTable;
   end createPaintableTable;

   procedure paint (This : in out TouchButtonsMappingPaintable; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      totalColumns : Integer;
      totalRows : Integer;
      rowIndex : Integer;
      index : Integer;
   begin
        totalColumns := This.touchButtonLocationHelper.getTotalColumns;
        totalRows := This.touchButtonLocationHelper.getTotalRows;
        for index in reverse 0 .. (totalColumns) - (1) loop
            for rowIndex in reverse 0 .. (totalRows) - (1) loop
                This.paintableTable (index) (rowIndex).paint (graphics);
            end loop;
        end loop;
   end paint;

end org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;


