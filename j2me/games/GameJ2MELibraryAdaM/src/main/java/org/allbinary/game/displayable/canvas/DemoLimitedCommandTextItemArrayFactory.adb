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


with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package; use org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package;
with org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References;
with org.allbinary.graphics.form.item.LimitCommandsVisitor_Package; use org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
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
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
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
with org.allbinary.logic.util.visitor.Visitor_Package;

package body org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package is

   package LimitCommandsVisitor_Package renames Standard.org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;
   subtype CommandTextItemArrayFactory_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   subtype CommandTextItemArrayFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References.CommandTextItemArrayFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommandTextItemArrayFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.CommandTextItemArrayFactory_Package_References."=";
   procedure Initialize_Fields (This : in out DemoLimitedCommandTextItemArrayFactory'Class) is
   begin
      null;
      This.commandTextItemArrayFactory := CommandTextItemArrayFactory_Package.Create (LimitCommandsVisitor_Package.Create);
   end Initialize_Fields;

   procedure Initialize (This : in out DemoLimitedCommandTextItemArrayFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return DemoLimitedCommandTextItemArrayFactory_Access is
      This : constant DemoLimitedCommandTextItemArrayFactory_Access := new DemoLimitedCommandTextItemArrayFactory;
   begin
      DemoLimitedCommandTextItemArrayFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return DemoLimitedCommandTextItemArrayFactory_Access is
   begin
        return DemoLimitedCommandTextItemArrayFactory_Package.instance;
   end getInstance;

   function getCommandTextItemArrayFactory (This : in out DemoLimitedCommandTextItemArrayFactory) return CommandTextItemArrayFactory_Access is
   begin
        return This.commandTextItemArrayFactory;
   end getCommandTextItemArrayFactory;

begin
   null;
   instance := DemoLimitedCommandTextItemArrayFactory_Package.Create;

end org.allbinary.game.displayable.canvas.DemoLimitedCommandTextItemArrayFactory_Package;


