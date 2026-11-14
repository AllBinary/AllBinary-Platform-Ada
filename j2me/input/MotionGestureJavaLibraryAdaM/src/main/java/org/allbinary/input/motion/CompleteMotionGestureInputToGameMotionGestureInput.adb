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


with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
with org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package; use org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
with org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package; use org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.ABHashtable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with javax.microedition.lcdui.Canvas_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.Command_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
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

package body org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package is

   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package MotionGestureConfiguration_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration_Package;
   package MotionGestureConfigurationFactory_Package renames Standard.org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory_Package;
   package DiagonalDownLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalDownRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;
   package DiagonalUpLeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;
   package DiagonalUpRightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DiagonalUpRightTouchInputToGameKeyEventAction_Package;
   package DownTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.DownTouchInputToGameKeyEventAction_Package;
   package LeftTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.LeftTouchInputToGameKeyEventAction_Package;
   package ReleaseTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;
   package RightTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.RightTouchInputToGameKeyEventAction_Package;
   package UpTouchInputToGameKeyEventAction_Package renames Standard.org.allbinary.input.motion.touch.action.UpTouchInputToGameKeyEventAction_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
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
   procedure Initialize_Fields (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out CompleteMotionGestureInputToGameMotionGestureInput'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CompleteMotionGestureInputToGameMotionGestureInput_Access is
      This : constant CompleteMotionGestureInputToGameMotionGestureInput_Access := new CompleteMotionGestureInputToGameMotionGestureInput;
   begin
      CompleteMotionGestureInputToGameMotionGestureInput_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CompleteMotionGestureInputToGameMotionGestureInput_Access is
   begin
        return CompleteMotionGestureInputToGameMotionGestureInput_Package.instance;
   end getInstance;

   procedure init (This : in out CompleteMotionGestureInputToGameMotionGestureInput) is
      commonStrings : CommonStrings_Access;
      motionGestureConfiguration : MotionGestureConfiguration_Access;
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      list : BasicArrayList_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            PreLogUtil_Package.put (To_Unbounded_String ("Compound Motion Gestures"), CompleteMotionGestureInputToGameMotionGestureInput_Access'(This'Unchecked_Access), commonStrings.INIT);
            motionGestureConfiguration := MotionGestureConfigurationFactory_Package.getInstance;
            touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_DOWN_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalDownRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_UP_LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpLeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DIAGONAL_UP_RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, DiagonalUpRightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.LEFT);
            motionGestureConfiguration.addMotionGestureAction (list, LeftTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.RIGHT);
            motionGestureConfiguration.addMotionGestureAction (list, RightTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.DOWN);
            motionGestureConfiguration.addMotionGestureAction (list, DownTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.UP);
            motionGestureConfiguration.addMotionGestureAction (list, UpTouchInputToGameKeyEventAction_Package.getInstance);
            list := BasicArrayList_Access (BasicArrayListD_Package.Create);
            list.add (touchMotionGestureFactory.RELEASED);
            motionGestureConfiguration.addMotionGestureAction (list, ReleaseTouchInputToGameKeyEventAction_Package.getInstance);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, CompleteMotionGestureInputToGameMotionGestureInput_Access'(This'Unchecked_Access), commonStrings.INIT, e);
                end;
        end;
   end init;

begin
   null;
   instance := CompleteMotionGestureInputToGameMotionGestureInput_Package.Create;

end org.allbinary.input.motion.CompleteMotionGestureInputToGameMotionGestureInput_Package;


