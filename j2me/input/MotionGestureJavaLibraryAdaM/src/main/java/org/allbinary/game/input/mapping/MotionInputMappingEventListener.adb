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


package body org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package is

   procedure Initialize_Fields (This : in out MotionInputMappingEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MotionInputMappingEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return MotionInputMappingEventListener_Access is
      This : constant MotionInputMappingEventListener_Access := new MotionInputMappingEventListener;
   begin
      MotionInputMappingEventListener_Package.Initialize (This.all);
      return This;
   end Create;


   procedure onEvent (This : in out MotionInputMappingEventListener; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, MotionInputMappingEventListener_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onInputMappingEvent (This : in out MotionInputMappingEventListener; inputMappingEvent_Param : access InputMappingEvent'Class) is
      inputMappingEvent : InputMappingEvent_Access := InputMappingEvent_Access (inputMappingEvent_Param);
   begin
        GameKeyCompleteMotionGestureInputEventFactory_Package.getInstance.updateAll;
        BasicTouchInputFactory_Package.getInstance.updateAll (inputMappingEvent.getInputToGameKeyMapping);
   end onInputMappingEvent;

end org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package;


