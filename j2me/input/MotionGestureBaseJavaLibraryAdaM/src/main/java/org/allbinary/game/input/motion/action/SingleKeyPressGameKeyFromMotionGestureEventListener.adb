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


package body org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package is

   procedure Initialize_Fields (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener'Class) is
   begin
      CompleteMotionGestureInputEventListener_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return SingleKeyPressGameKeyFromMotionGestureEventListener_Access is
      This : constant SingleKeyPressGameKeyFromMotionGestureEventListener_Access := new SingleKeyPressGameKeyFromMotionGestureEventListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out SingleKeyPressGameKeyFromMotionGestureEventListener; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access) is
      gameKeyCompleteMotionGestureInputEvent : GameKeyCompleteMotionGestureInputEvent_Access;
      gameKeyEvent : GameKeyEvent_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            gameKeyCompleteMotionGestureInputEvent := GameKeyCompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent);
            gameKeyEvent := gameKeyCompleteMotionGestureInputEvent.getGameKeyEvent;
            PressGameKeyEventHandler_Package.getInstance.fireEvent (gameKeyEvent);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, To_Unbounded_String ("onCompleteMotionGestureInputEvent"), e);
                end;
        end;
   end onCompleteMotionGestureInputEvent;

end org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener_Package;


