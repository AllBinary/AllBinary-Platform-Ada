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


with org.allbinary.game.GameAdState_Package; use org.allbinary.game.GameAdState_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.business.advertisement.GameAdStateFactory_Package; use org.allbinary.business.advertisement.GameAdStateFactory_Package;
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
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
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
with org.allbinary.business.advertisement.GameAdStateFactory_Package;
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
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.logic.system.SoftwareInformation_Package;
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
with org.allbinary.input.event.VirtualKeyboardEvent_Package;
with org.allbinary.input.event.VirtualKeyboardEventListenerInterface_Package;

package body org.allbinary.business.advertisement.BottomLimiter_Package is

   package GameAdState_Package renames Standard.org.allbinary.game.GameAdState_Package;
   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   procedure Initialize_Fields (This : in out BottomLimiter'Class) is
   begin
      null;
      This.bottom := 0;
      This.deltaY := 0;
      This.lower := 0;
      This.higher := 0;
   end Initialize_Fields;


   function getInstance return BottomLimiter_Access is
   begin
        return BottomLimiter_Access (BottomLimiter_Package.instance);
   end getInstance;

   procedure Initialize (This : in out BottomLimiter'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BottomLimiter_Access is
      This : constant BottomLimiter_Access := new BottomLimiter;
   begin
      BottomLimiter_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out BottomLimiter; lower : Integer; higher : Integer) is
   begin
        This.lower := lower;
        This.higher := higher;
   end init;

   procedure update (This : in out BottomLimiter) is
      displayInfo : DisplayInfoSingleton_Access;
      gameAdState : GameAdState_Access;
   begin
        displayInfo := DisplayInfoSingleton_Package.getInstance;
        gameAdState := GameAdStateFactory_Package.getInstance.getCurrentInstance;
        if gameAdState.isShowingAt then
            This.deltaY := This.higher;
        else
            This.deltaY := This.lower;
        end if;
        This.bottom := (displayInfo.getLastHeight) - (This.deltaY);
   end update;

   function getDeltaY (This : in out BottomLimiter) return Integer is
   begin
        return This.deltaY;
   end getDeltaY;

   function getBottom (This : in out BottomLimiter) return Integer is
   begin
        return This.bottom;
   end getBottom;

begin
   null;
   instance := BottomLimiter_Package.Create;

end org.allbinary.business.advertisement.BottomLimiter_Package;


