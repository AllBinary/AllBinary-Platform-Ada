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
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return NoCompleteMotionGestureInputEventListener_Access is
      This : constant NoCompleteMotionGestureInputEventListener_Access := new NoCompleteMotionGestureInputEventListener;
   begin
      NoCompleteMotionGestureInputEventListener_Package.Initialize (This.all);
      return This;
   end Create;

   procedure onEvent (This : in out NoCompleteMotionGestureInputEventListener; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   procedure onCompleteMotionGestureInputEvent (This : in out NoCompleteMotionGestureInputEventListener; completeMotionGestureInputEvent : CompleteMotionGestureInputEvent_Access) is
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


