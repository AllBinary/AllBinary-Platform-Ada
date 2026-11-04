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


with org.allbinary.game.input.CompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.CompleteMotionGestureInputEvent_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
with org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package; use org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface_Package;
with org.allbinary.game.input.GameKey_Package; use org.allbinary.game.input.GameKey_Package;
with org.allbinary.game.input.mapping.InputMappingInterface_Package; use org.allbinary.game.input.mapping.InputMappingInterface_Package;
with org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package; use org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.paint.ProcessPaintable_Package; use org.allbinary.graphics.paint.ProcessPaintable_Package;
with org.allbinary.input.motion.gesture.MotionGestureInput_Package; use org.allbinary.input.motion.gesture.MotionGestureInput_Package;
with org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package; use org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;
with org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package;

package body org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package is

   package CompleteMotionGestureInputEventHandler_Package renames Standard.org.allbinary.game.input.CompleteMotionGestureInputEventHandler_Package;
   package GameKey_Package renames Standard.org.allbinary.game.input.GameKey_Package;
   package GameKeyCompleteMotionGestureInputEvent_Package renames Standard.org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent_Package;
   package MotionGestureInput_Package renames Standard.org.allbinary.input.motion.gesture.MotionGestureInput_Package;
   package TouchMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TouchMotionGestureFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   subtype CompleteMotionGestureInputEvent_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References.CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CompleteMotionGestureInputEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.CompleteMotionGestureInputEvent_Package_References."=";
   subtype InputMappingInterface_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access;
   function "=" (Left, Right : InputMappingInterface_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access_Array is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype InputMappingInterface_Access_Array_Access_Array_Access is org.allbinary.game.input.mapping.InputMappingInterface_Package_References.InputMappingInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputMappingInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.mapping.InputMappingInterface_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
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
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryEventObject_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.util.event.AllBinaryEventObject_Package_References."=";
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
   subtype TouchButtonsMappingPaintable_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access_Array) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   subtype TouchButtonsMappingPaintable_Access_Array_Access_Array_Access is org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References.TouchButtonsMappingPaintable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TouchButtonsMappingPaintable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.motion.button.TouchButtonsMappingPaintable_Package_References."=";
   procedure Initialize_Fields (This : in out TouchButtonsPaintableComposite'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      
      This.timeHelper := TimeDelayHelper_Package.Create (250);
      This.released := True;
      This.METHOD_NAME := To_Unbounded_String ("onCompleteMotionGestureInputEvent");
      This.RELEASE := To_Unbounded_String ("Ignoring: MotionGestureInput Release");
      This.FAST_REPEAT := To_Unbounded_String ("Ignoring: MotionGestureInput Repeated To Quickly");
      This.IGNORE := To_Unbounded_String ("Ignoring: Until Released");
   end Initialize_Fields;


   procedure Initialize (This : in out TouchButtonsPaintableComposite'Class; inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      inputMappingInterface : constant InputMappingInterface_Access := InputMappingInterface_Access (inputMappingInterface_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.inputMappingInterface := inputMappingInterface;
        CompleteMotionGestureInputEventHandler_Package.getInstance.addListenerInterface (TouchButtonsPaintableComposite_Access'(This'Unchecked_Access));
        This.touchButtonsPaintable := TouchButtonsMappingPaintable_Package.Create (basicColor);
   end Initialize;

   function Create (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return TouchButtonsPaintableComposite_Access is
      This : constant TouchButtonsPaintableComposite_Access := new TouchButtonsPaintableComposite;
   begin
      TouchButtonsPaintableComposite_Package.Initialize (This.all, inputMappingInterface_Param, basicColor_Param);
      return This;
   end Create;

   procedure onEvent (This : in out TouchButtonsPaintableComposite; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out TouchButtonsPaintableComposite; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      completeMotionGestureInputEvent : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent_Param);
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      gameKey : GameKey_Access;
      motionGestureInput : MotionGestureInput_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), To_Unbounded_String ("onCompleteMotionGestureInputEvent"));
            touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent);
            gameKey := gameKeyCompleteMotionGestureInputEvent.getGameKey;
            motionGestureInput := completeMotionGestureInputEvent.getMotionGestureInput;
            if (motionGestureInput) = (touchMotionGestureFactory.RELEASED) then
                This.logUtil.putF (This.RELEASE, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), This.METHOD_NAME);
                This.released := True;
                return;
            end if;
            if ((motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.NO_MOTION)) and then (not (This.timeHelper.isTimeTNT)) then
                This.logUtil.putF (This.FAST_REPEAT, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), This.METHOD_NAME);
                return;
            end if;
            if not (This.released) then
                This.logUtil.putF (This.IGNORE, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), This.METHOD_NAME);
                return;
            end if;
            This.released := False;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("GameKey: ")).append (StringUtil_Package.getInstance.toString (gameKey)).append (To_Unbounded_String (" MotionGestureInput: ")).append (StringUtil_Package.getInstance.toString (motionGestureInput)).toString, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), This.METHOD_NAME);
            This.inputMappingInterface.processInputMapping (gameKey, motionGestureInput);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access), This.METHOD_NAME, e);
                end;
        end;
   end onCompleteMotionGestureInputEvent;

   procedure process (This : in out TouchButtonsPaintableComposite) is
   begin
        CompleteMotionGestureInputEventHandler_Package.getInstance.removeListener (TouchButtonsPaintableComposite_Access'(This'Unchecked_Access));
   end process;

end org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;


