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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.Choice_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with org.microemu.DisplayAccess_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
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
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.MIDletAccess_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.input.motion.button.TouchButtonLocationHelper_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   procedure Initialize_Fields (This : in out TouchButtonLocationHelper'Class) is
   begin
      null;
      
      
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonLocationHelper'Class) is
      buttonSize : Integer;
      displayInfo : DisplayInfoSingleton_Access;
   begin
      Initialize_Fields (This);
        buttonSize := CommonButtons_Package.getInstance.STANDARD_BUTTON_SIZE;
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.totalColumns := Integer (Float'Rounding ((Float (displayInfo.getLastWidth)) / (Float (buttonSize))));
        This.totalRows := Integer (Float'Rounding ((Float (displayInfo.getLastHeight)) / (Float (buttonSize))));
        This.columnsRemainder := (displayInfo.getLastWidth) rem (buttonSize);
        This.columnsRemainderHalf := (Java_Shift_Right_Arithmetic (This.columnsRemainder, 1));
        This.rowsRemainder := (displayInfo.getLastHeight) rem (buttonSize);
        This.rowsRemainderHalf := (Java_Shift_Right_Arithmetic (This.rowsRemainder, 1));
   end Initialize;

   function Create return TouchButtonLocationHelper_Access is
      This : constant TouchButtonLocationHelper_Access := new TouchButtonLocationHelper;
   begin
      TouchButtonLocationHelper_Package.Initialize (This.all);
      return This;
   end Create;

   function getTotalColumns (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.totalColumns;
   end getTotalColumns;

   function getTotalRows (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.totalRows;
   end getTotalRows;

   function getColumnsRemainder (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.columnsRemainder;
   end getColumnsRemainder;

   function getRowsRemainder (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.rowsRemainder;
   end getRowsRemainder;

   function getColumnsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.columnsRemainderHalf;
   end getColumnsRemainderHalf;

   function getRowsRemainderHalf (This : in out TouchButtonLocationHelper) return Integer is
   begin
        return This.rowsRemainderHalf;
   end getRowsRemainderHalf;

   function toString (This : in out TouchButtonLocationHelper) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("totalColumns: "));
        stringBuffer.appendint (This.totalColumns);
        stringBuffer.append (To_Unbounded_String (" totalRows: "));
        stringBuffer.appendint (This.totalRows);
        stringBuffer.append (To_Unbounded_String (" columnsRemainder: "));
        stringBuffer.appendint (This.columnsRemainder);
        stringBuffer.append (To_Unbounded_String (" rowsRemainder: "));
        stringBuffer.appendint (This.rowsRemainder);
        stringBuffer.append (To_Unbounded_String (" columnsRemainderHalf: "));
        stringBuffer.appendint (This.columnsRemainderHalf);
        stringBuffer.append (To_Unbounded_String (" rowsRemainderHalf: "));
        stringBuffer.appendint (This.rowsRemainderHalf);
        return stringBuffer.toString;
   end toString;

end org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;


