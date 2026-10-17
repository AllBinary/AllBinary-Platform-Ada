-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package is

   procedure Initialize_Fields (This : in out NullInputMappingEventListener'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullInputMappingEventListener'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullInputMappingEventListener_Access is
      This : constant NullInputMappingEventListener_Access := new NullInputMappingEventListener;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure onInputMappingEvent (This : in out NullInputMappingEventListener; inputMappingEvent : InputMappingEvent_Access) is
   begin
        null;
   end onInputMappingEvent;

   procedure onEvent (This : in out NullInputMappingEventListener; eventObject : AllBinaryEventObject_Access) is
   begin
        null;
   end onEvent;

begin
   null;
   NULL_INPUT_MAPPING_EVENT_LISTENER := NullInputMappingEventListener_Package.Create;

end org.allbinary.game.input.mapping.event.NullInputMappingEventListener_Package;


