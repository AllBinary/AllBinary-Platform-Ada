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


with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;

package body org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package is

   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
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


   procedure onEvent (This : in out MotionInputMappingEventListener; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, MotionInputMappingEventListener_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onInputMappingEvent (This : in out MotionInputMappingEventListener; inputMappingEvent_Param : access InputMappingEvent_Package.InputMappingEvent'Class) is
      inputMappingEvent : constant InputMappingEvent_Access := InputMappingEvent_Access (inputMappingEvent_Param);
   begin
        null;
   end onInputMappingEvent;

end org.allbinary.game.input.mapping.MotionInputMappingEventListener_Package;


