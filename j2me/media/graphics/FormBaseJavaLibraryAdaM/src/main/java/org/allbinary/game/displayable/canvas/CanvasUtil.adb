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
with org.allbinary.string_Id.CommonPhoneStrings_Package; use org.allbinary.string_Id.CommonPhoneStrings_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
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
with javax.microedition.lcdui.Item_Package;
with javax.microedition.lcdui.ItemCommandListener_Package;
with javax.microedition.lcdui.ItemStateListener_Package;
with javax.microedition.lcdui.List_Package;
with org.microemu.device.ui.ListUI_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.microemu.device.MutableImage_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
with javax.microedition.lcdui.Screen_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.displayable.canvas.CanvasUtil_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package CommonPhoneStrings_Package renames Standard.org.allbinary.string_Id.CommonPhoneStrings_Package;
   procedure Initialize_Fields (This : in out CanvasUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out CanvasUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return CanvasUtil_Access is
      This : constant CanvasUtil_Access := new CanvasUtil;
   begin
      CanvasUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getKeyName (key : Integer) return Unbounded_String is
      commonPhoneStrings : CommonPhoneStrings_Access;
   begin
        commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
        if (key) = (Canvas_Package.UP) then
            return commonPhoneStrings.UP;
        elsif (key) = (Canvas_Package.DOWN) then
            return commonPhoneStrings.DOWN;
        elsif (key) = (Canvas_Package.RIGHT) then
            return commonPhoneStrings.RIGHT;
        elsif (key) = (Canvas_Package.LEFT) then
            return commonPhoneStrings.LEFT;
        elsif (key) = (Canvas_Package.FIRE) then
            return commonPhoneStrings.FIRE;
        end if;
        return To_Unbounded_String ("UNKNOWN KEY");
   end getKeyName;

   procedure getKeyName (key : Integer) is
      Java_Result : constant Unbounded_String := getKeyName (key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKeyName;

end org.allbinary.game.displayable.canvas.CanvasUtil_Package;


