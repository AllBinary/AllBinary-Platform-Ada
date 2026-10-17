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


package body org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out UpTrackballInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (UpTrackballInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            UpTrackballInputToGameKeyEventAction_Package.instance := UpTrackballInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (UpTrackballInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out UpTrackballInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Up Action"), TrackballMotionGestureFactory_Package.getInstance.UP, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return UpTrackballInputToGameKeyEventAction_Access is
      This : constant UpTrackballInputToGameKeyEventAction_Access := new UpTrackballInputToGameKeyEventAction;
   begin
      UpTrackballInputToGameKeyEventAction_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction_Package;


