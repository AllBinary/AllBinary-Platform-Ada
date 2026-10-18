--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
with org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package; use org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;

package body org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package is

   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   package MotionGestureReceiveInterfaceFactory_Package renames Standard.org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory_Package;
   procedure Initialize_Fields (This : in out BaseGameInputMotionEventProcessor'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out BaseGameInputMotionEventProcessor'Class) is
   begin
      MotionEventProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        This.gameMotionGestureListener := GameMotionGestureListener_Package.Create (MotionGestureReceiveInterfaceFactory_Package.getInstance);
        BaseGameInputMotionEventProcessor'Class (This).addListener;
   end Initialize;

   function Create return BaseGameInputMotionEventProcessor_Access is
      This : constant BaseGameInputMotionEventProcessor_Access := new BaseGameInputMotionEventProcessor;
   begin
      BaseGameInputMotionEventProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure process (This : in out BaseGameInputMotionEventProcessor; motionEvent_Param : access MotionEvent_Package.MotionEvent'Class) is
      motionEvent : constant MotionEvent_Access := MotionEvent_Access (motionEvent_Param);
   begin
        null;
   end process;

   procedure addListener (This : in out BaseGameInputMotionEventProcessor) is
      motionGesturesHandler : BasicMotionGesturesHandler_Access;
   begin
        motionGesturesHandler := BasicMotionGesturesHandler_Package.getInstance;
        motionGesturesHandler.addListenerInterface (This.gameMotionGestureListener);
   end addListener;

end org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor_Package;


