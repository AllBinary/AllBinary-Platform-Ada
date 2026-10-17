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


package body org.allbinary.input.motion.gyro.action.UpOrientationInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out UpOrientationInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (UpOrientationInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            UpOrientationInputToGameKeyEventAction_Package.instance := UpOrientationInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (UpOrientationInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out UpOrientationInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Up Action"), OrientationMotionGestureFactory_Package.getInstance.UP, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return UpOrientationInputToGameKeyEventAction_Access is
      This : constant UpOrientationInputToGameKeyEventAction_Access := new UpOrientationInputToGameKeyEventAction;
   begin
      UpOrientationInputToGameKeyEventAction_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.gyro.action.UpOrientationInputToGameKeyEventAction_Package;


