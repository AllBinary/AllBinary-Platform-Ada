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


with org.allbinary.game.input.PlatformInputMappingFactory_Package; use org.allbinary.game.input.PlatformInputMappingFactory_Package;
with org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package; use org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package is

   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package TrackballMotionGestureFactory_Package renames Standard.org.allbinary.input.motion.gesture.TrackballMotionGestureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out RightTrackballInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (RightTrackballInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            RightTrackballInputToGameKeyEventAction_Package.instance := RightTrackballInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (RightTrackballInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out RightTrackballInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Right Action"), TrackballMotionGestureFactory_Package.getInstance.RIGHT, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return RightTrackballInputToGameKeyEventAction_Access is
      This : constant RightTrackballInputToGameKeyEventAction_Access := new RightTrackballInputToGameKeyEventAction;
   begin
      RightTrackballInputToGameKeyEventAction_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction_Package;


