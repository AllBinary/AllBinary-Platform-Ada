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


package body org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out DiagonalUpLeftTouchInputToGameKeyEventAction'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (DiagonalUpLeftTouchInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            DiagonalUpLeftTouchInputToGameKeyEventAction_Package.instance := DiagonalUpLeftTouchInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (DiagonalUpLeftTouchInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out DiagonalUpLeftTouchInputToGameKeyEventAction'Class) is
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Diagonal Up Left Action"), TouchMotionGestureFactory_Package.getInstance.DIAGONAL_UP_LEFT, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
   end Initialize;

   function Create return DiagonalUpLeftTouchInputToGameKeyEventAction_Access is
      This : constant DiagonalUpLeftTouchInputToGameKeyEventAction_Access := new DiagonalUpLeftTouchInputToGameKeyEventAction;
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

end org.allbinary.input.motion.touch.action.DiagonalUpLeftTouchInputToGameKeyEventAction_Package;


