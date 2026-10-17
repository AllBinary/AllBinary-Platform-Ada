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


package body org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out DiagonalDownRightTouchInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (DiagonalDownRightTouchInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            DiagonalDownRightTouchInputToGameKeyEventAction_Package.instance := DiagonalDownRightTouchInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (DiagonalDownRightTouchInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out DiagonalDownRightTouchInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Diagonal Down Right Action"), TouchMotionGestureFactory_Package.getInstance.DIAGONAL_DOWN_RIGHT, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return DiagonalDownRightTouchInputToGameKeyEventAction_Access is
      This : constant DiagonalDownRightTouchInputToGameKeyEventAction_Access := new DiagonalDownRightTouchInputToGameKeyEventAction;
   begin
      DiagonalDownRightTouchInputToGameKeyEventAction_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.touch.action.DiagonalDownRightTouchInputToGameKeyEventAction_Package;


