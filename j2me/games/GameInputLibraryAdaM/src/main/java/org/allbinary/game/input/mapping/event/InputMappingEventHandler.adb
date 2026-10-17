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


package body org.allbinary.game.input.mapping.event.InputMappingEventHandler_Package is

   procedure Initialize_Fields (This : in out InputMappingEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputMappingEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputMappingEventHandler_Access is
      This : constant InputMappingEventHandler_Access := new InputMappingEventHandler;
   begin
      InputMappingEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return InputMappingEventHandler_Access is
   begin
        return InputMappingEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out InputMappingEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      inputMappingEventListenerInterface : InputMappingEventListenerInterface_Access;
   begin
        inputMappingEventListenerInterface := InputMappingEventListenerInterface_Access (eventListenerInterface);
        inputMappingEventListenerInterface.onInputMappingEvent (InputMappingEvent_Access (eventObject));
   end process;

begin
   null;
   gameKeyEventHandler := InputMappingEventHandler_Package.Create;

end org.allbinary.game.input.mapping.event.InputMappingEventHandler_Package;


