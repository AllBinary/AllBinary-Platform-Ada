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


package body org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out MotionGestureReceiveInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MotionGestureReceiveInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MotionGestureReceiveInterfaceFactory_Access is
      This : constant MotionGestureReceiveInterfaceFactory_Access := new MotionGestureReceiveInterfaceFactory;
   begin
      MotionGestureReceiveInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CompleteMotionGestureListenerInterface_Access is
      configuration : MotionGestureConfiguration_Access;
   begin
        configuration := MotionGestureConfigurationFactory_Package.getInstance;
        if not (configuration.isExecutingActionsAllowed) then
            return NullCompleteMotionGestureReceiver_Package.Create;
        else
            return ResolveCompleteMotionGestureListener_Package.Create;
        end if;
   end getInstance;

end org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;


