--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


with android.view.MotionEvent_Package; use android.view.MotionEvent_Package;
with android.view.MotionEvent_Package_References;
with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package; use org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;
with org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References;
with org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package; use org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayList_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListener_Package;
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
with org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
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
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.microemu.device.MutableImage_Package;
with org.allbinary.logic.NullUtil_Package;
with org.microemu.device.ui.PaintEvent_Package;
with org.microemu.device.ui.PointerEvent_Package;
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

package body org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package is

   package DownTrackballInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction_Package;
   package LeftTrackballInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction_Package;
   package RightTrackballInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;
   package UpTrackballInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;
   subtype MotionEvent_Access is android.view.MotionEvent_Package_References.MotionEvent_Access;
   function "=" (Left, Right : MotionEvent_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype MotionEvent_Access_Array_Access_Array_Access is android.view.MotionEvent_Package_References.MotionEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionEvent_Access_Array_Access_Array_Access) return Boolean renames android.view.MotionEvent_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
   subtype SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access is org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References.SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SingleKeyPressGameKeyFromMotionGestureEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package_References."=";
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   procedure Initialize_Fields (This : in out TrackballGameInputMotionEventProcessor'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.listener := SingleKeyPressGameKeyFromMotionGestureEventListener_Package.Create;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;


   function getInstance return TrackballGameInputMotionEventProcessor_Access is
   begin
        return TrackballGameInputMotionEventProcessor_Package.PROCESSOR;
   end getInstance;

   procedure Initialize (This : in out TrackballGameInputMotionEventProcessor'Class) is
   begin
      MotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return TrackballGameInputMotionEventProcessor_Access is
      This : constant TrackballGameInputMotionEventProcessor_Access := new TrackballGameInputMotionEventProcessor;
   begin
      TrackballGameInputMotionEventProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out TrackballGameInputMotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class) is
      motionEvent : constant MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
      x : Float;
      y : Float;
   begin
        begin
            x := motionEvent.getX;
            y := motionEvent.getY;
            if (x) < (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (LeftTrackballInputToGameKeyEventAction_Package.getInstance);
            elsif (x) > (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (RightTrackballInputToGameKeyEventAction_Package.getInstance);
            end if;
            if (y) < (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (UpTrackballInputToGameKeyEventAction_Package.getInstance);
            elsif (y) > (0.0) then
                This.listener.onCompleteMotionGestureInputEvent (DownTrackballInputToGameKeyEventAction_Package.getInstance);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, TrackballGameInputMotionEventProcessor_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

begin
   null;
   PROCESSOR := TrackballGameInputMotionEventProcessor_Package.Create;

end org.allbinary.android.input.motion.TrackballGameInputMotionEventProcessor_Package;


