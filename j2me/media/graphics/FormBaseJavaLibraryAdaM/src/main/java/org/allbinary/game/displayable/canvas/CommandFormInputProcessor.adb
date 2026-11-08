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
with javax.microedition.lcdui.Command_Package; use javax.microedition.lcdui.Command_Package;
with org.allbinary.game.commands.GameCommandsFactory_Package; use org.allbinary.game.commands.GameCommandsFactory_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.InputFeatureFactory_Package; use org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEventFactory_Package; use org.allbinary.game.input.event.GameKeyEventFactory_Package;
with org.allbinary.game.layer.SWTUtil_Package; use org.allbinary.game.layer.SWTUtil_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package; use org.allbinary.graphics.displayable.MyCanvas_Package;
with org.allbinary.graphics.displayable.MyCanvas_Package_References;
with org.allbinary.graphics.form.CommandCurrentSelectionForm_Package; use org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package; use org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
with org.allbinary.media.audio.SelectSound_Package; use org.allbinary.media.audio.SelectSound_Package;
with org.allbinary.thread.PrimaryThreadPool_Package; use org.allbinary.thread.PrimaryThreadPool_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.displayable.canvas.CommandRunnable_Package; use org.allbinary.game.displayable.canvas.CommandRunnable_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.thread.ARunnable_Package;
with javax.microedition.lcdui.Alert_Package;
with javax.microedition.lcdui.AlertType_Package;
with org.microemu.device.ui.AlertUI_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.util.ArrayUtil_Package;
with javax.microedition.lcdui.BaseDisplay_Package;
with org.allbinary.graphics.displayable.BaseScalable_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.microemu.device.ui.CanvasUI_Package;
with javax.microedition.lcdui.ChoiceGroup_Package;
with javax.microedition.lcdui.ChoiceItem_Package;
with javax.microedition.lcdui.CommandListener_Package;
with org.allbinary.game.displayable.canvas.CommandRunnable_Package;
with org.microemu.device.ui.CommandUI_Package;
with org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.Device_Package;
with org.microemu.device.DeviceDisplay_Package;
with javax.microedition.lcdui.Display_Package;
with javax.microedition.lcdui.DisplayAccessor_Package;
with org.allbinary.graphics.displayable.event.DisplayChangeEvent_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with javax.microedition.lcdui.Displayable_Package;
with org.microemu.device.ui.DisplayableUI_Package;
with javax.microedition.lcdui.Event_Package;
with org.microemu.device.ui.EventDispatcher_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.microemu.device.FontManager_Package;
with javax.microedition.lcdui.Form_Package;
with org.microemu.device.ui.FormUI_Package;
with org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.input.GameInputStrings_Package;
with org.allbinary.game.input.GameKeyEventSourceInterface_Package;
with javax.microedition.lcdui.Gauge_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.ImageStringItem_Package;
with org.allbinary.game.input.Input_Package;
with org.allbinary.game.configuration.feature.InputFeature_Package;
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
with org.allbinary.thread.NullRunnable_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.graphics.opengles.OpenGLFeature_Package;
with org.microemu.device.ui.PaintEvent_Package;
with javax.microedition.media.Player_Package;
with org.allbinary.game.input.PlayerGameInput_Package;
with javax.microedition.media.PlayerListener_Package;
with org.microemu.device.ui.PointerEvent_Package;
with org.allbinary.thread.PriorityRunnable_Package;
with org.allbinary.graphics.displayable.ScalableListener_Package;
with javax.microedition.lcdui.Screen_Package;
with org.allbinary.media.audio.Sound_Package;
with javax.microedition.lcdui.StringComponent_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.thread.SynchObject_Package;
with javax.microedition.lcdui.TextBox_Package;
with org.microemu.device.ui.TextBoxUI_Package;
with javax.microedition.lcdui.TextField_Package;
with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadPool_Package;
with org.allbinary.thread.ThreadPoolStrings_Package;
with javax.microedition.lcdui.Ticker_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.input.TouchJ2ME_Package;
with org.microemu.device.ui.UIFactory_Package;

package body org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Command_Package renames Standard.javax.microedition.lcdui.Command_Package;
   package GameCommandsFactory_Package renames Standard.org.allbinary.game.commands.GameCommandsFactory_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package InputFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.InputFeatureFactory_Package;
   package GameKeyEvent_Package renames Standard.org.allbinary.game.input.event.GameKeyEvent_Package;
   package GameKeyEventFactory_Package renames Standard.org.allbinary.game.input.event.GameKeyEventFactory_Package;
   package SWTUtil_Package renames Standard.org.allbinary.game.layer.SWTUtil_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package CommandCurrentSelectionForm_Package renames Standard.org.allbinary.graphics.form.CommandCurrentSelectionForm_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package PrimaryPlayerQueueFactory_Package renames Standard.org.allbinary.media.audio.PrimaryPlayerQueueFactory_Package;
   package SelectSound_Package renames Standard.org.allbinary.media.audio.SelectSound_Package;
   package PrimaryThreadPool_Package renames Standard.org.allbinary.thread.PrimaryThreadPool_Package;
   subtype MyCanvas_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access;
   function "=" (Left, Right : MyCanvas_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype MyCanvas_Access_Array_Access_Array_Access is org.allbinary.graphics.displayable.MyCanvas_Package_References.MyCanvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyCanvas_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.displayable.MyCanvas_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype MotionGestureEvent_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access;
   function "=" (Left, Right : MotionGestureEvent_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype MotionGestureEvent_Access_Array_Access_Array_Access is org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References.MotionGestureEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionGestureEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.gesture.observer.MotionGestureEvent_Package_References."=";
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   function "=" (Left, Right : TimeDelayHelper_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TimeDelayHelper_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.TimeDelayHelper_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   procedure Initialize_Fields (This : in out CommandFormInputProcessor'Class) is
   begin
      null;
      This.MOTION_GESTURE_SOURCE_ID := GameKeyEventFactory_Package.getInstance.MOTION_GESTURE_SOURCE_ID;
      This.CLICK_DELAY := 150;
      This.clickTimeHelper := TimeDelayHelper_Package.Create (This.CLICK_DELAY);
      This.DOUBLE_CLICK_DELAY := 1200;
      This.doubleClickTimeHelper := TimeDelayHelper_Package.Create (This.DOUBLE_CLICK_DELAY);
      This.isSingleKeyProcessing := InputFeatureFactory_Package.getInstance.isSingleKeyProcessing;
      
      This.hasPressed := False;
      This.PROCESS_COMMAND := To_Unbounded_String ("processCommand");
      This.NAME_LABEL := To_Unbounded_String (" ScrollSelectionForm: ");
   end Initialize_Fields;


   procedure Initialize (This : in out CommandFormInputProcessor'Class; gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) is
      gameKeyEventList : constant BasicArrayList_Access := BasicArrayList_Access (gameKeyEventList_Param);
      gameCanvas : constant MyCanvas_Access := MyCanvas_Access (gameCanvas_Param);
      form : constant ScrollSelectionForm_Access := ScrollSelectionForm_Access (form_Param);
   begin
        BasicMenuInputProcessor_Package.Initialize (This, gameKeyEventList, playerInputId, gameCanvas);
        Initialize_Fields (This);
        This.form := form;
   end Initialize;

   function Create (gameKeyEventList_Param : access BasicArrayList_Package.BasicArrayList'Class; playerInputId : Integer; gameCanvas_Param : access MyCanvas_Package.MyCanvas'Class; form_Param : access ScrollSelectionForm_Package.ScrollSelectionForm'Class) return CommandFormInputProcessor_Access is
      This : constant CommandFormInputProcessor_Access := new CommandFormInputProcessor;
   begin
      CommandFormInputProcessor_Package.Initialize (This.all, gameKeyEventList_Param, playerInputId, gameCanvas_Param, form_Param);
      return This;
   end Create;

   --  throws Exception
   function processInput (This : in out CommandFormInputProcessor; key : Integer) return Integer is
   begin
        if ((((key) = (Canvas_Package.LEFT)) or else ((key) = (Canvas_Package.RIGHT))) or else ((key) = (Canvas_Package.UP))) or else ((key) = (Canvas_Package.DOWN)) then
            PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
            This.form.processInputKey (key);
            return 1;
        elsif (key) = (Canvas_Package.FIRE) then
            PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
            return CommandFormInputProcessor'Class (This).processCommand;
        end if;
        return 0;
   end processInput;

   function processCommand (This : in out CommandFormInputProcessor) return Integer is
      commandCurrentSelectionForm : CommandCurrentSelectionForm_Access;
      command : Command_Access;
      features : Features_Access;
      openGLFeatureFactory : OpenGLFeatureFactory_Access;
   begin
        commandCurrentSelectionForm := CommandCurrentSelectionForm_Access (This.form);
        command := commandCurrentSelectionForm.getSelectedCommand;
        This.logUtil.putF (command.toString, CommandFormInputProcessor_Access'(This'Unchecked_Access), This.PROCESS_COMMAND);
        features := Features_Package.getInstance;
        openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
        if ((SWTUtil_Package.isSWT) and then (features.isFeature (openGLFeatureFactory.OPENGL))) and then ((Java_Object_Access (command)) /= (Java_Object_Access (GameCommandsFactory_Package.getInstance.EXIT_COMMAND))) then
            CommandRunnable_Package.Create (CommandFormInputProcessor_Access'(This'Unchecked_Access), command).run;
        else
            PrimaryThreadPool_Package.getInstance.runTask (CommandRunnable_Package.Create (CommandFormInputProcessor_Access'(This'Unchecked_Access), command));
        end if;
        if (Java_Object_Access (command)) = (Java_Object_Access (GameCommandsFactory_Package.getInstance.QUIT_COMMAND)) then
            return -(1);
        else
            return 1;
        end if;
   end processCommand;

   --  throws Exception
   function processInputList (This : in out CommandFormInputProcessor) return Integer is
      motionInputsIndex : Integer;
      list : BasicArrayList_Access;
      size : Integer;
      key : Integer;
      gameKeyEvent : GameKeyEvent_Access;
      index : Integer;
   begin
        begin
            motionInputsIndex := CommandFormInputProcessor'Class (This).processMotionInputs;
            list := CommandFormInputProcessor'Class (This).getGameKeyEventList;
            size := list.size;
            key := 0;
            gameKeyEvent := null;
            for index in 0 .. (size) - 1 loop
                gameKeyEvent := GameKeyEvent_Access (list.objectArray (index));
                key := gameKeyEvent.getKey;
                if (gameKeyEvent.getSourceId) /= (This.MOTION_GESTURE_SOURCE_ID) then
                    if (CommandFormInputProcessor'Class (This).processInput (key)) = (1) then
                        exit;
                    end if;
                end if;
            end loop;
            CommandFormInputProcessor'Class (This).clear;
            if ((size) > (0)) or else ((motionInputsIndex) >= (0)) then
                return 1;
            else
                return -(1);
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, CommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_INPUT, e);
            return -(1);
                end;
        end;
   end processInputList;

   --  throws Exception
   function processMotionInputs (This : in out CommandFormInputProcessor) return Integer is
      lastIndex : Integer;
      motionGestureEvent : MotionGestureEvent_Access;
   begin
        lastIndex := (This.motionGestureEventList.size) - (1);
        if (lastIndex) >= (0) then
            motionGestureEvent := MotionGestureEvent_Access (This.motionGestureEventList.objectArray (lastIndex));
            CommandFormInputProcessor'Class (This).processMotionInput (motionGestureEvent);
        end if;
        This.motionGestureEventList.clear;
        return lastIndex;
   end processMotionInputs;

   --  throws Exception
   procedure processMotionInput (This : in out CommandFormInputProcessor; motionGestureEvent_Param : access MotionGestureEvent_Package.MotionGestureEvent'Class) is
      motionGestureEvent : constant MotionGestureEvent_Access := MotionGestureEvent_Access (motionGestureEvent_Param);
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      motionGestureInput : MotionGestureInput_Access;
      point : GPoint_Access;
      index : Integer;
   begin
        touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
        motionGestureInput := motionGestureEvent.getMotionGesture;
        if (Java_Object_Access (motionGestureInput)) = (Java_Object_Access (touchMotionGestureFactory.RELEASED)) then
            point := motionGestureEvent.getCurrentPoint;
            if This.form.isInForm (point) then
                index := This.form.getSelectedIndexForPoint (point);
                if (index) /= (-(1)) then
                    PrimaryPlayerQueueFactory_Package.getInstance.add (SelectSound_Package.getInstance);
                    if (index) = (This.form.getSelectedIndex) then
                        if This.clickTimeHelper.isTimeTNT then
                            declare Java_Result renames CommandFormInputProcessor'Class (This).processCommand; pragma Unreferenced (Java_Result); begin null; end;
                        end if;
                    else
                        This.form.setSelectedIndex (index);
                    end if;
                else
                    null;
                end if;
            end if;
            if This.hasPressed then
                if not (This.doubleClickTimeHelper.isTimeTNT) then
                    This.logUtil.putF (To_Unbounded_String ("Double Press"), CommandFormInputProcessor_Access'(This'Unchecked_Access), This.gameInputStrings.PROCESS_MOTION_INPUT);
                    declare Java_Result renames CommandFormInputProcessor'Class (This).processCommand; pragma Unreferenced (Java_Result); begin null; end;
                end if;
                This.doubleClickTimeHelper.delay_Id := This.DOUBLE_CLICK_DELAY;
                This.doubleClickTimeHelper.setStartTimeTNT;
            end if;
            This.hasPressed := False;
        elsif (Java_Object_Access (motionGestureInput)) = (Java_Object_Access (touchMotionGestureFactory.PRESSED)) then
            This.doubleClickTimeHelper.delay_Id := 0;
            This.hasPressed := True;
        end if;
   end processMotionInput;

   function toString (This : in out CommandFormInputProcessor) return Unbounded_String is
   begin
        return StringMaker_Package.Create.append (BasicMenuInputProcessor_Package.BasicMenuInputProcessor (This).toString).append (This.NAME_LABEL).append (This.form.toString).toString;
   end toString;

   procedure processInput (This : in out CommandFormInputProcessor; key : Integer) is
      Java_Result : constant Integer := CommandFormInputProcessor'Class (This).processInput (key => key);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processInput;

end org.allbinary.game.displayable.canvas.CommandFormInputProcessor_Package;


