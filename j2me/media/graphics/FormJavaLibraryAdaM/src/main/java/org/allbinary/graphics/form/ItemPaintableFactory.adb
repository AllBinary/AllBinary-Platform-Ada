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


with org.allbinary.graphics.form.PaintableForm_Package; use org.allbinary.graphics.form.PaintableForm_Package;
with org.allbinary.graphics.form.PaintableForm_Package_References;
with org.allbinary.graphics.form.ABCustomForm_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.CustomDisplayable_Package;
with org.allbinary.graphics.form.CustomScreen_Package;
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
with org.allbinary.graphics.form.FormType_Package;
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
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.graphics.form.PaintableForm_Package;
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
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.graphics.form.ItemPaintableFactory_Package is

   subtype PaintableForm_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access;
   function "=" (Left, Right : PaintableForm_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array;
   function "=" (Left, Right : PaintableForm_Access_Array) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access;
   function "=" (Left, Right : PaintableForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access_Array is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array;
   function "=" (Left, Right : PaintableForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   subtype PaintableForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.PaintableForm_Package_References.PaintableForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PaintableForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.PaintableForm_Package_References."=";
   procedure Initialize_Fields (This : in out ItemPaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ItemPaintableFactory'Class) is
   begin
      ItemPaintable_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return ItemPaintableFactory_Access is
      This : constant ItemPaintableFactory_Access := new ItemPaintableFactory;
   begin
      ItemPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return ItemPaintableFactory_Access is
   begin
        return ItemPaintableFactory_Access (ItemPaintableFactory_Package.instance);
   end getInstance;

   --  throws Exception
   function getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) return ItemPaintable_Access is
      paintableForm : constant PaintableForm_Access := PaintableForm_Access (paintableForm_Param);
   begin
        return ItemPaintable_Access (ItemPaintableFactory_Package.instance);
   end getInstanceItemPaintable;

   procedure getInstanceItemPaintable (This : in out ItemPaintableFactory; paintableForm_Param : access PaintableForm_Package.PaintableForm'Class) is
      Java_Result : constant ItemPaintable_Access := ItemPaintableFactory'Class (This).getInstanceItemPaintable (paintableForm_Param => paintableForm_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceItemPaintable;

begin
   null;
   instance := ItemPaintableFactory_Package.Create;

end org.allbinary.graphics.form.ItemPaintableFactory_Package;


