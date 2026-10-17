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


package body org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package is

   procedure Initialize_Fields (This : in out ScrolledMotionGesturesHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ScrolledMotionGesturesHandler_Access is
   begin
        return ScrolledMotionGesturesHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out ScrolledMotionGesturesHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ScrolledMotionGesturesHandler_Access is
      This : constant ScrolledMotionGesturesHandler_Access := new ScrolledMotionGesturesHandler;
   begin
      ScrolledMotionGesturesHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out ScrolledMotionGesturesHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      baseMotionGestureEventListener : BaseMotionGestureEventListener_Access;
   begin
        baseMotionGestureEventListener := BaseMotionGestureEventListener_Access (eventListenerInterface);
        baseMotionGestureEventListener.onScrolledMotionGestureEvent (MotionGestureEvent_Access (eventObject));
   end process;

begin
   null;
   SINGLETON := ScrolledMotionGesturesHandler_Package.Create;

end org.allbinary.input.motion.gesture.observer.ScrolledMotionGesturesHandler_Package;


