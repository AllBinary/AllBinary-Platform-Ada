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
with org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package; use org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References;
with org.allbinary.graphics.displayable.ScalableListener_Package; use org.allbinary.graphics.displayable.ScalableListener_Package;
with org.allbinary.input.motion.AllMotionRecognizer_Package; use org.allbinary.input.motion.AllMotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package; use org.allbinary.input.motion.MotionRecognizer_Package;
with org.allbinary.input.motion.MotionRecognizer_Package_References;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package; use org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;
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
with org.allbinary.android.input.motion.api5.GameInputMotionInfoAPI5_Package;
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
with javax.microedition.midlet.MIDlet_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.microemu.device.MutableImage_Package;
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

package body org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package is

   package ScalableListener_Package renames Standard.org.allbinary.graphics.displayable.ScalableListener_Package;
   package AllMotionRecognizer_Package renames Standard.org.allbinary.input.motion.AllMotionRecognizer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
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
   subtype DisplayInfoSingleton_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype DisplayInfoSingleton_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References.DisplayInfoSingleton_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DisplayInfoSingleton_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package_References."=";
   subtype MotionRecognizer_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access;
   function "=" (Left, Right : MotionRecognizer_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access_Array is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
   subtype MotionRecognizer_Access_Array_Access_Array_Access is org.allbinary.input.motion.MotionRecognizer_Package_References.MotionRecognizer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRecognizer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.MotionRecognizer_Package_References."=";
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
   procedure Initialize_Fields (This : in out GameInputMotionEventProcessorAPI5'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.displayInfo := DisplayInfoSingleton_Package.getInstance;
      
      
   end Initialize_Fields;


   function getInstance return GameInputMotionEventProcessorAPI5_Access is
   begin
        if (Java_Object_Access (GameInputMotionEventProcessorAPI5_Package.instance)) = (Java_Object_Access (NullUtil_Package.getInstance.NULL_OBJECT)) then
            GameInputMotionEventProcessorAPI5_Package.instance := Java_Object_Access (GameInputMotionEventProcessorAPI5_Package.Create);
        end if;
        return GameInputMotionEventProcessorAPI5_Access (GameInputMotionEventProcessorAPI5_Package.instance);
   end getInstance;

   procedure Initialize (This : in out GameInputMotionEventProcessorAPI5'Class) is
      size : Integer;
      index : Integer;
   begin
      BaseGameInputMotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        size := GameInputMotionInfoAPI5_Package.getInstance.MAX_POINTERS;
        This.motionRecognizerArray := new AllMotionRecognizer_Access_Array'(0 .. (size) - 1 => null);
        This.TOTAL_MINUS_ONE := size;
        for index in 0 .. (size) - 1 loop
            This.motionRecognizerArray (index) := MotionRecognizer_Access (AllMotionRecognizer_Package.Create);
        end loop;
   end Initialize;

   function Create return GameInputMotionEventProcessorAPI5_Access is
      This : constant GameInputMotionEventProcessorAPI5_Access := new GameInputMotionEventProcessorAPI5;
   begin
      GameInputMotionEventProcessorAPI5_Package.Initialize (This.all);
      return This;
   end Create;

   function isValid (This : in out GameInputMotionEventProcessorAPI5; pointerId : Integer) return Boolean is
      message : Unbounded_String;
   begin
        if (pointerId) > (This.TOTAL_MINUS_ONE) then
            message := To_Unbounded_String ("Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: ");
            ForcedLogUtil_Package.log (message & Java_Image (pointerId), GameInputMotionEventProcessorAPI5_Access'(This'Unchecked_Access));
            return False;
        else
            return True;
        end if;
   end isValid;

   procedure process (This : in out GameInputMotionEventProcessorAPI5; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class) is
      motionEvent : constant MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
      action : Integer;
      total : Integer;
      message : Unbounded_String;
      totalMinusOne : Integer;
      pointerId : Integer;
      scalableListener : ScalableListener_Access;
      x : Integer;
      y : Integer;
      pointerIndex : Integer;
   begin
        begin
            action := motionEvent.getAction;
            total := This.motionRecognizerArray'Length;
            if (total) > (motionEvent.getPointerCount) then
                total := motionEvent.getPointerCount;
            else
                message := To_Unbounded_String ("Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): ");
                ForcedLogUtil_Package.log (message & Java_Image (motionEvent.getPointerCount), GameInputMotionEventProcessorAPI5_Access'(This'Unchecked_Access));
            end if;
            totalMinusOne := (total) - (1);
            if (action) = (MotionEvent_Package.ACTION_DOWN) then
                for pointerIndex in reverse 0 .. totalMinusOne loop
                    pointerId := motionEvent.getPointerId (pointerIndex);
                    if GameInputMotionEventProcessorAPI5'Class (This).isValid (pointerId) then
                        scalableListener := This.displayInfo.getScalableListener;
                        x := Integer (((((motionEvent.getX (pointerIndex)) - (This.displayInfo.getLeft))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        y := Integer (((((motionEvent.getY (pointerIndex)) - (This.displayInfo.getTop))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        This.motionRecognizerArray (pointerId).processStartMotionEvent (x, y, motionEvent.getDeviceId, 0);
                    end if;
                end loop;
            elsif ((action) = (MotionEvent_Package.ACTION_UP)) or else ((action) = (MotionEvent_Package.ACTION_CANCEL)) then
                for pointerIndex in reverse 0 .. totalMinusOne loop
                    pointerId := motionEvent.getPointerId (pointerIndex);
                    if GameInputMotionEventProcessorAPI5'Class (This).isValid (pointerId) then
                        scalableListener := This.displayInfo.getScalableListener;
                        x := Integer (((((motionEvent.getX (pointerIndex)) - (This.displayInfo.getLeft))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        y := Integer (((((motionEvent.getY (pointerIndex)) - (This.displayInfo.getTop))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        This.motionRecognizerArray (pointerId).processEndMotionEvent (x, y, motionEvent.getDeviceId, 0);
                    end if;
                end loop;
            elsif (action) = (MotionEvent_Package.ACTION_MOVE) then
                for pointerIndex in reverse 0 .. totalMinusOne loop
                    pointerId := motionEvent.getPointerId (pointerIndex);
                    if GameInputMotionEventProcessorAPI5'Class (This).isValid (pointerId) then
                        scalableListener := This.displayInfo.getScalableListener;
                        x := Integer (((((motionEvent.getX (pointerIndex)) - (This.displayInfo.getLeft))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        y := Integer (((((motionEvent.getY (pointerIndex)) - (This.displayInfo.getTop))) / (scalableListener.getRatio (This.displayInfo.getRatio))));
                        This.motionRecognizerArray (pointerId).processDraggedMotionEvent (x, y, motionEvent.getDeviceId, 0);
                    end if;
                end loop;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, GameInputMotionEventProcessorAPI5_Access'(This'Unchecked_Access), This.commonStrings.PROCESS, e);
                end;
        end;
   end process;

   procedure isValid (This : in out GameInputMotionEventProcessorAPI5; pointerId : Integer) is
      Java_Result : constant Boolean := GameInputMotionEventProcessorAPI5'Class (This).isValid (pointerId => pointerId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.android.input.motion.api5.GameInputMotionEventProcessorAPI5_Package;


