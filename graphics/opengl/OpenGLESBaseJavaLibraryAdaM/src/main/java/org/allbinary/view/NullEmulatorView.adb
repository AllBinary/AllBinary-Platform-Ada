-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


with javax.microedition.lcdui.Displayable_Package; use javax.microedition.lcdui.Displayable_Package;
with javax.microedition.lcdui.Displayable_Package_References;
with javax.microedition.midlet.MIDlet_Package; use javax.microedition.midlet.MIDlet_Package;
with javax.microedition.midlet.MIDlet_Package_References;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with javax.microedition.lcdui.Canvas_Package;
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

package body org.allbinary.view.NullEmulatorView_Package is

   subtype Displayable_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access;
   function "=" (Left, Right : Displayable_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype Displayable_Access_Array_Access_Array_Access is javax.microedition.lcdui.Displayable_Package_References.Displayable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Displayable_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Displayable_Package_References."=";
   subtype MIDlet_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access;
   function "=" (Left, Right : MIDlet_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array;
   function "=" (Left, Right : MIDlet_Access_Array) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access;
   function "=" (Left, Right : MIDlet_Access_Array_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access_Array is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array;
   function "=" (Left, Right : MIDlet_Access_Array_Access_Array) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   subtype MIDlet_Access_Array_Access_Array_Access is javax.microedition.midlet.MIDlet_Package_References.MIDlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MIDlet_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.midlet.MIDlet_Package_References."=";
   procedure Initialize_Fields (This : in out NullEmulatorView'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullEmulatorView'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullEmulatorView_Access is
      This : constant NullEmulatorView_Access := new NullEmulatorView;
   begin
      NullEmulatorView_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setMidlet (This : in out NullEmulatorView; midlet_Param : access MIDlet_Package.MIDlet'Class) is
      midlet : constant MIDlet_Access := MIDlet_Access (midlet_Param);
   begin
        null;
   end setMidlet;

   procedure onEmulatorInitComplete (This : in out NullEmulatorView; midletActivity_Param : access Java_Object'Class) is
      midletActivity : constant Java_Object_Access := Java_Object_Access (midletActivity_Param);
   begin
        null;
   end onEmulatorInitComplete;

   procedure onSetDisplayable (This : in out NullEmulatorView; displayable_Param : access Displayable_Package.Displayable'Class) is
      displayable : constant Displayable_Access := Displayable_Access (displayable_Param);
   begin
        null;
   end onSetDisplayable;

   procedure onEmulatorInitComplete (This : in out NullEmulatorView; Value : Unbounded_String) is
   begin
      NullEmulatorView'Class (This).onEmulatorInitComplete (Java_Box (Value));
   end onEmulatorInitComplete;

begin
   null;
   NULL_EMULATOR_VIEW := NullEmulatorView_Package.Create;

end org.allbinary.view.NullEmulatorView_Package;


