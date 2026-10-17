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


package body org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler_Package is

   procedure Initialize_Fields (This : in out MovedMotionGesturesHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return MovedMotionGesturesHandler_Access is
   begin
        return MovedMotionGesturesHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out MovedMotionGesturesHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MovedMotionGesturesHandler_Access is
      This : constant MovedMotionGesturesHandler_Access := new MovedMotionGesturesHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out MovedMotionGesturesHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      baseMotionGestureEventListener : BaseMotionGestureEventListener_Access;
   begin
        baseMotionGestureEventListener := BaseMotionGestureEventListener_Access (eventListenerInterface);
        baseMotionGestureEventListener.onMotionGestureEvent (MotionGestureEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant MovedMotionGesturesHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := MovedMotionGesturesHandler_Package.Create;

end org.allbinary.input.motion.gesture.observer.MovedMotionGesturesHandler_Package;


