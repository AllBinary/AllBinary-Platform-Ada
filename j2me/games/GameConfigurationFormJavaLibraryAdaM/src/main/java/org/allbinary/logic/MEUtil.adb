-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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


with javax.microedition.lcdui.Item_Package; use javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.Item_Package_References;
with org.allbinary.MIDPUtil_Package; use org.allbinary.MIDPUtil_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package; use org.allbinary.graphics.displayable.screen.CommandForm_Package;
with org.allbinary.graphics.displayable.screen.CommandForm_Package_References;
with org.allbinary.util.ABStack_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.color.BasicColor_Package;
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
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.microemu.device.InputMethod_Package;
with org.microemu.device.InputMethodEvent_Package;
with org.microemu.device.InputMethodListener_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.canvas.Processor_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.logic.MEUtil_Package is

   package MIDPUtil_Package renames Standard.org.allbinary.MIDPUtil_Package;
   subtype Item_Access is javax.microedition.lcdui.Item_Package_References.Item_Access;
   function "=" (Left, Right : Item_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array;
   function "=" (Left, Right : Item_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array;
   function "=" (Left, Right : Item_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype Item_Access_Array_Access_Array_Access is javax.microedition.lcdui.Item_Package_References.Item_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Item_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Item_Package_References."=";
   subtype CommandForm_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access;
   function "=" (Left, Right : CommandForm_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array;
   function "=" (Left, Right : CommandForm_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access;
   function "=" (Left, Right : CommandForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access_Array is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array;
   function "=" (Left, Right : CommandForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   subtype CommandForm_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.screen.CommandForm_Package_References.CommandForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.screen.CommandForm_Package_References."=";
   procedure Initialize_Fields (This : in out MEUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MEUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MEUtil_Access is
      This : constant MEUtil_Access := new MEUtil;
   begin
      MEUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return MEUtil_Access is
   begin
        return MEUtil_Package.instance;
   end getInstance;

   procedure appendItem (This : in out MEUtil; form_Param : access CommandForm_Package.CommandForm'Class; item_Param : access Item_Package.Item'Class) is
      form : constant CommandForm_Access := CommandForm_Access (form_Param);
      item : constant Item_Access := Item_Access (item_Param);
   begin
        MIDPUtil_Package.getInstance.appendItem (form, item);
   end appendItem;

begin
   null;
   instance := MEUtil_Package.Create;

end org.allbinary.logic.MEUtil_Package;


