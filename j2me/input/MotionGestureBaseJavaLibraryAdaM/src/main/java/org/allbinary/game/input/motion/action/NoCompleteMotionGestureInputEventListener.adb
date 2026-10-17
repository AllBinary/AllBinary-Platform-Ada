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


package body org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package is

   procedure Initialize_Fields (This : in out NoCompleteMotionGestureInputEventListener'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out NoCompleteMotionGestureInputEventListener'Class) is
   begin
      CompleteMotionGestureInputEventListener_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoCompleteMotionGestureInputEventListener_Access is
      This : constant NoCompleteMotionGestureInputEventListener_Access := new NoCompleteMotionGestureInputEventListener;
   begin
      NoCompleteMotionGestureInputEventListener_Package.Initialize (This.all);
      return This;
   end Create;

   procedure onEvent (This : in out NoCompleteMotionGestureInputEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, NoCompleteMotionGestureInputEventListener_Access'(This'Unchecked_Access));
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out NoCompleteMotionGestureInputEventListener; completeMotionGestureInputEvent_Param : access CompleteMotionGestureInputEvent_Package.CompleteMotionGestureInputEvent'Class) is
      completeMotionGestureInputEvent : constant CompleteMotionGestureInputEvent_Access := CompleteMotionGestureInputEvent_Access (completeMotionGestureInputEvent_Param);
   begin
        null;
   end onCompleteMotionGestureInputEvent;

   function getInstance return NoCompleteMotionGestureInputEventListener_Access is
   begin
        return NoCompleteMotionGestureInputEventListener_Package.instance;
   end getInstance;

begin
   null;
   instance := NoCompleteMotionGestureInputEventListener_Package.Create;

end org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener_Package;


