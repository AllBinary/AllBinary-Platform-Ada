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


package body org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package is

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


   procedure Initialize (This : in out TouchButtonsPaintableComposite'Class; inputMappingInterface_Param : access InputMappingInterface'Class; basicColor_Param : access BasicColor'Class) is
      inputMappingInterface : InputMappingInterface_Access := InputMappingInterface_Access (inputMappingInterface_Param);
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.inputMappingInterface := inputMappingInterface;
        CompleteMotionGestureInputEventHandler_Package.getInstance.addListenerInterface (TouchButtonsPaintableComposite_Access'(This'Unchecked_Access));
        This.touchButtonsPaintable := TouchButtonsMappingPaintable_Package.Create (basicColor);
   end Initialize;

   function Create (inputMappingInterface_Param : access InputMappingInterface'Class; basicColor_Param : access BasicColor'Class) return TouchButtonsPaintableComposite_Access is
      This : constant TouchButtonsPaintableComposite_Access := new TouchButtonsPaintableComposite;
   begin
      TouchButtonsPaintableComposite_Package.Initialize (This.all, inputMappingInterface_Param, basicColor_Param);
      return This;
   end Create;

   procedure onEvent (This : in out TouchButtonsPaintableComposite; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, TouchButtonsPaintableComposite_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out TouchButtonsPaintableComposite; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent'Class) is
      completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent_Param);
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


