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


with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.ScreenInfo_Package; use org.allbinary.graphics.form.ScreenInfo_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
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
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
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
with org.allbinary.graphics.displayable.ScalableListener_Package;
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

package body org.allbinary.graphics.form.item.LimitCommandsVisitor_Package is

   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package ScreenInfo_Package renames Standard.org.allbinary.graphics.form.ScreenInfo_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   procedure Initialize_Fields (This : in out LimitCommandsVisitor'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out LimitCommandsVisitor'Class) is
      displayInfo : DisplayInfoSingleton_Access;
   begin
      Visitor_Package.Initialize (This);
      Initialize_Fields (This);
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        This.isNotSmallDisplay := (((displayInfo.isPortrait) and then ((displayInfo.getLastHeight) > (ScreenInfo_Package.getInstance.SMALL_WIDTH)))) or else (((not (displayInfo.isPortrait)) and then ((displayInfo.getLastHeight) > (ScreenInfo_Package.getInstance.SMALL_HEIGHT))));
   end Initialize;

   function Create return LimitCommandsVisitor_Access is
      This : constant LimitCommandsVisitor_Access := new LimitCommandsVisitor;
   begin
      LimitCommandsVisitor_Package.Initialize (This.all);
      return This;
   end Create;

   function visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class) return Java_Object_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      command : Command_Access;
      booleanFactory : BooleanFactory_Access;
   begin
        command := Command_Access (anyType);
        booleanFactory := BooleanFactory_Package.getInstance;
        if (((This.isNotSmallDisplay) or else ((command.getPriority) = (1))) or else ((Java_Object_Access (command)) = (Java_Object_Access (GameCommandsFactory_Package.getInstance.EXIT_COMMAND)))) or else ((Java_Object_Access (command)) = (Java_Object_Access (GameCommandsFactory_Package.getInstance.EXIT_WITHOUT_PROGRESS_COMMAND))) then
            return Java_Box (booleanFactory.TRUE);
        else
            return Java_Box (booleanFactory.FALSE);
        end if;
   end visit;

   procedure visit (This : in out LimitCommandsVisitor; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Java_Object_Access := LimitCommandsVisitor'Class (This).visit (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   function visit (This : in out LimitCommandsVisitor; Value : Unbounded_String) return Java_Object_Access is
   begin
      return LimitCommandsVisitor'Class (This).visit (Java_Box (Value));
   end visit;

   procedure visit (This : in out LimitCommandsVisitor; Value : Unbounded_String) is
      Java_Result : constant Java_Object_Access := LimitCommandsVisitor'Class (This).visit (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

end org.allbinary.graphics.form.item.LimitCommandsVisitor_Package;


