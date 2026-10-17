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


   procedure Initialize (This : in out TouchButtonsPaintableComposite'Class; inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access) is
   begin
      ProcessPaintable_Package.Initialize (This);
      Initialize_Fields (This);
        This.inputMappingInterface := inputMappingInterface;
        CompleteMotionGestureInputEventHandler_Package.getInstance.addListenerInterface (This'Unchecked_Access);
        This.touchButtonsPaintable := TouchButtonsMappingPaintable_Package.Create (basicColor);
   end Initialize;

   function Create (inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access) return TouchButtonsPaintableComposite_Access is
      This : constant TouchButtonsPaintableComposite_Access := new TouchButtonsPaintableComposite;
   begin
      Initialize (This.all, inputMappingInterface, basicColor);
      return This;
   end Create;

   procedure onEvent (This : in out TouchButtonsPaintableComposite; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out TouchButtonsPaintableComposite; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access) is
      touchMotionGestureFactory : TouchMotionGestureFactory_Access;
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      gameKey : GameKey_Access;
      motionGestureInput : MotionGestureInput_Access;
   begin
        begin
            This.logUtil.putF (This.commonStrings.START, This'Unchecked_Access, To_Unbounded_String ("onCompleteMotionGestureInputEvent"));
            touchMotionGestureFactory := TouchMotionGestureFactory_Package.getInstance;
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent);
            gameKey := gameKeyCompleteMotionGestureInputEvent.getGameKey;
            motionGestureInput := completeMotionGestureInputEvent.getMotionGestureInput;
            if (motionGestureInput) = (touchMotionGestureFactory.RELEASED) then
                This.logUtil.putF (This.RELEASE, This'Unchecked_Access, This.METHOD_NAME);
                This.released := True;
                return;
            end if;
            if ((motionGestureInput) = (TouchMotionGestureFactory_Package.getInstance.NO_MOTION)) and then (not (This.timeHelper.isTimeTNT)) then
                This.logUtil.putF (This.FAST_REPEAT, This'Unchecked_Access, This.METHOD_NAME);
                return;
            end if;
            if not (This.released) then
                This.logUtil.putF (This.IGNORE, This'Unchecked_Access, This.METHOD_NAME);
                return;
            end if;
            This.released := False;
            This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("GameKey: ")).append (StringUtil_Package.getInstance.toString (gameKey)).append (To_Unbounded_String (" MotionGestureInput: ")).append (StringUtil_Package.getInstance.toString (motionGestureInput)).toString, This'Unchecked_Access, This.METHOD_NAME);
            This.inputMappingInterface.processInputMapping (gameKey, motionGestureInput);
        exception
            when e : others =>
            This.logUtil.put (This.commonStrings.EXCEPTION_Id, This'Unchecked_Access, This.METHOD_NAME, e);
        end;
   end onCompleteMotionGestureInputEvent;

   procedure process (This : in out TouchButtonsPaintableComposite) is
   begin
        CompleteMotionGestureInputEventHandler_Package.getInstance.removeListener (This'Unchecked_Access);
   end process;

end org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;


