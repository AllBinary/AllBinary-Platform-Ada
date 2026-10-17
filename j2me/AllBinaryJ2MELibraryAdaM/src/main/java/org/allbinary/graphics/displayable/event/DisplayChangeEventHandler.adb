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


package body org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package is

   procedure Initialize_Fields (This : in out DisplayChangeEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return DisplayChangeEventHandler_Access is
   begin
        return DisplayChangeEventHandler_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out DisplayChangeEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DisplayChangeEventHandler_Access is
      This : constant DisplayChangeEventHandler_Access := new DisplayChangeEventHandler;
   begin
      DisplayChangeEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out DisplayChangeEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      displayChangeEventListener : DisplayChangeEventListener_Access;
   begin
        displayChangeEventListener := (DisplayChangeEventListener_Access (eventListenerInterface));
        displayChangeEventListener.onDisplayChangeEvent (DisplayChangeEvent_Access (eventObject));
   end process;

begin
   null;
   SINGLETON := DisplayChangeEventHandler_Package.Create;

end org.allbinary.graphics.displayable.event.DisplayChangeEventHandler_Package;


