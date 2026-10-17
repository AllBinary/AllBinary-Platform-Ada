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


package body org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out DiagonalDownLeftTouchInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (DiagonalDownLeftTouchInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            DiagonalDownLeftTouchInputToGameKeyEventAction_Package.instance := DiagonalDownLeftTouchInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (DiagonalDownLeftTouchInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out DiagonalDownLeftTouchInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Diagonal Down Left Action"), TouchMotionGestureFactory_Package.getInstance.DIAGONAL_DOWN_LEFT, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return DiagonalDownLeftTouchInputToGameKeyEventAction_Access is
      This : constant DiagonalDownLeftTouchInputToGameKeyEventAction_Access := new DiagonalDownLeftTouchInputToGameKeyEventAction;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure getInstance is
      Java_Result : constant GameKeyCompleteMotionGestureInputEvent_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.touch.action.DiagonalDownLeftTouchInputToGameKeyEventAction_Package;


