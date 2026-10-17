-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


package body org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package is

   procedure Initialize_Fields (This : in out LastDisplayChangeEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return LastDisplayChangeEventHandler_Access is
   begin
        return LastDisplayChangeEventHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out LastDisplayChangeEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LastDisplayChangeEventHandler_Access is
      This : constant LastDisplayChangeEventHandler_Access := new LastDisplayChangeEventHandler;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out LastDisplayChangeEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      displayChangeEventListener : DisplayChangeEventListener_Access;
   begin
        displayChangeEventListener := (DisplayChangeEventListener_Access (eventListenerInterface));
        displayChangeEventListener.onDisplayChangeEvent (DisplayChangeEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant LastDisplayChangeEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   SINGLETON := LastDisplayChangeEventHandler_Package.Create;

end org.allbinary.graphics.displayable.event.LastDisplayChangeEventHandler_Package;


