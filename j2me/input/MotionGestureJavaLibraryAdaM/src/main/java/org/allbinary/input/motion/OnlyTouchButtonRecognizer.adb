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


with org.allbinary.input.motion.button.TouchButtonRecognizer_Package; use org.allbinary.input.motion.button.TouchButtonRecognizer_Package;
with org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.input.motion.button.CurrentlyPressedTouchButtonSingleton_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandler_Package;
with org.allbinary.game.input.event.DownGameKeyEventHandlerBase_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with org.allbinary.game.input.GameKeyFactory_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
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
with org.allbinary.game.input.LocalPlayerInputIdFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
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
with org.allbinary.input.motion.button.TouchButtonInput_Package;
with org.microemu.device.ui.UIFactory_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandler_Package;
with org.allbinary.game.input.event.UpGameKeyEventHandlerBase_Package;

package body org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package is

   subtype TouchButtonRecognizer_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   subtype TouchButtonRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References.TouchButtonRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonRecognizer_Package_References."=";
   procedure Initialize_Fields (This : in out OnlyTouchButtonRecognizer'Class) is
   begin
      null;
      
      This.touchButtonProcessing := False;
   end Initialize_Fields;


   procedure Initialize (This : in out OnlyTouchButtonRecognizer'Class) is
   begin
      MotionRecognizer_Package.Initialize (This);
      Initialize_Fields (This);
        This.touchButtonRecognizer := TouchButtonRecognizer_Package.Create;
   end Initialize;

   function Create return OnlyTouchButtonRecognizer_Access is
      This : constant OnlyTouchButtonRecognizer_Access := new OnlyTouchButtonRecognizer;
   begin
      OnlyTouchButtonRecognizer_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure processStartMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId) then
            This.touchButtonProcessing := True;
        end if;
   end processStartMotionEvent;

   --  throws Exception
   procedure processEndMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonProcessing then
            This.touchButtonProcessing := False;
        end if;
        if This.touchButtonRecognizer.releaseTouchButtonInput (x, y, deviceId) then
            return;
        end if;
   end processEndMotionEvent;

   --  throws Exception
   procedure processDraggedMotionEvent (This : in out OnlyTouchButtonRecognizer; x : Integer; y : Integer; deviceId : Integer; modifiers : Integer) is
   begin
        if This.touchButtonProcessing then
            This.touchButtonRecognizer.pressTouchButtonInput (x, y, deviceId);
        end if;
   end processDraggedMotionEvent;

end org.allbinary.input.motion.OnlyTouchButtonRecognizer_Package;


