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
with org.allbinary.input.gyro.OrientationMotionGestureFactory_Package; use org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.input.motion.gyro.action.RollLeftOrientationInputToGameKeyEventAction_Package is

   package PlatformInputMappingFactory_Package renames Standard.org.allbinary.game.input.PlatformInputMappingFactory_Package;
   package OrientationMotionGestureFactory_Package renames Standard.org.allbinary.input.gyro.OrientationMotionGestureFactory_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out RollLeftOrientationInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (RollLeftOrientationInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            RollLeftOrientationInputToGameKeyEventAction_Package.instance := RollLeftOrientationInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (RollLeftOrientationInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out RollLeftOrientationInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Roll Left Action"), OrientationMotionGestureFactory_Package.getInstance.ROLL_LEFT, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return RollLeftOrientationInputToGameKeyEventAction_Access is
      This : constant RollLeftOrientationInputToGameKeyEventAction_Access := new RollLeftOrientationInputToGameKeyEventAction;
   begin
      RollLeftOrientationInputToGameKeyEventAction_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.gyro.action.RollLeftOrientationInputToGameKeyEventAction_Package;


