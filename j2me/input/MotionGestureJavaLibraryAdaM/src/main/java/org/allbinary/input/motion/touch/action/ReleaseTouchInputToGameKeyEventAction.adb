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


package body org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package is

   procedure Initialize_Fields (This : in out ReleaseTouchInputToGameKeyEventAction'Class) is
   begin
      null;
      This.NONE := GameKeyFactory_Package.getInstance.NONE;
   end Initialize_Fields;


   function getInstance return GameKeyCompleteMotionGestureInputEvent_Access is
   begin
        if (ReleaseTouchInputToGameKeyEventAction_Package.instance) = (NullUtil_Package.getInstance.NULL_OBJECT) then
            ReleaseTouchInputToGameKeyEventAction_Package.instance := ReleaseTouchInputToGameKeyEventAction_Package.Create;
        end if;
        return GameKeyCompleteMotionGestureInputEvent_Access (ReleaseTouchInputToGameKeyEventAction_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ReleaseTouchInputToGameKeyEventAction'Class) is
      commonStrings : CommonStrings_Access;
   begin
        GameKeyCompleteMotionGestureInputEvent_Package.Initialize (This, To_Unbounded_String ("Release Action"), TouchMotionGestureFactory_Package.getInstance.RELEASED, PlatformInputMappingFactory_Package.getInstance.getPersistentInputMappingInstance.getInputMapping);
        Initialize_Fields (This);
        begin
            This.setGameKey (This.NONE);
            This.setGameKeyEvent (GameKeyEventFactory_Package.getInstance.getInstanceForInput (This'Unchecked_Access, This.NONE));
        exception
            when e : others =>
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.CONSTRUCTOR, e);
        end;
   end Initialize;

   function Create return ReleaseTouchInputToGameKeyEventAction_Access is
      This : constant ReleaseTouchInputToGameKeyEventAction_Access := new ReleaseTouchInputToGameKeyEventAction;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure update (This : in out ReleaseTouchInputToGameKeyEventAction) is
   begin
        null;
   end update;

   procedure getInstance is
      Java_Result : constant GameKeyCompleteMotionGestureInputEvent_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := NullUtil_Package.getInstance.NULL_OBJECT;

end org.allbinary.input.motion.touch.action.ReleaseTouchInputToGameKeyEventAction_Package;


