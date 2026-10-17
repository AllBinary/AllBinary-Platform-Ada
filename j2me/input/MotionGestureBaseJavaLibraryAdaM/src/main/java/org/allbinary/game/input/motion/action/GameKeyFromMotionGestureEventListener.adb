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


package body org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package is

   procedure Initialize_Fields (This : in out GameKeyFromMotionGestureEventListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.previousGameKeyEvent := GameKeyEvent_Package.NONE;
   end Initialize_Fields;

   procedure Initialize (This : in out GameKeyFromMotionGestureEventListener'Class) is
   begin
      CompleteMotionGestureInputEventListener_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return GameKeyFromMotionGestureEventListener_Access is
      This : constant GameKeyFromMotionGestureEventListener_Access := new GameKeyFromMotionGestureEventListener;
   begin
      GameKeyFromMotionGestureEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out GameKeyFromMotionGestureEventListener; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, GameKeyFromMotionGestureEventListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out GameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent'Class) is
      completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent_Param);
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      gameKeyEvent : GameKeyEvent_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent);
            gameKeyEvent := gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent;
            if (gameKeyEvent) /= (This.previousGameKeyEvent) then
                if (This.previousGameKeyEvent) /= (GameKeyEvent_Package.NONE) then
                    UpGameKeyEventHandler_Package.getInstance.fireEvent (This.previousGameKeyEvent);
                end if;
                This.previousGameKeyEvent := gameKeyEvent;
                if ((gameKeyEvent) /= (null)) and then ((gameKeyEvent) /= (GameKeyEvent_Package.NONE)) then
                    DownGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
                end if;
            end if;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GameKeyFromMotionGestureEventListener_Access'(This'Unchecked_Access), To_Unbounded_String ("onCompleteMotionGestureInputEvent"), e);
                end;
        end;
   end onCompleteMotionGestureInputEvent;

end org.allbinary.game.input.motion.action.GameKeyFromMotionGestureEventListener_Package;


