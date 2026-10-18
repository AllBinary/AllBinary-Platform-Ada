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


with org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package; use org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;
with org.allbinary.game.input.event.GameKeyEventHandler_Package; use org.allbinary.game.input.event.GameKeyEventHandler_Package;
with org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package; use org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;

package body org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package is

   package GameInputMotionEventProcessorFactory_Package renames Standard.org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory_Package;
   package GameKeyEventHandler_Package renames Standard.org.allbinary.game.input.event.GameKeyEventHandler_Package;
   package BasicMotionGesturesHandler_Package renames Standard.org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler_Package;
   procedure Initialize_Fields (This : in out GameEventHandlerUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out GameEventHandlerUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return GameEventHandlerUtil_Access is
      This : constant GameEventHandlerUtil_Access := new GameEventHandlerUtil;
   begin
      GameEventHandlerUtil_Package.Initialize (This.all);
      return This;
   end Create;


   procedure removeAllListeners is
   begin
        BasicMotionGesturesHandler_Package.getInstance.removeAllListeners;
        GameKeyEventHandler_Package.getInstance.removeAllListeners;
        GameInputMotionEventProcessorFactory_Package.getInstance.addListener;
   end removeAllListeners;

end org.allbinary.game.displayable.canvas.GameEventHandlerUtil_Package;


