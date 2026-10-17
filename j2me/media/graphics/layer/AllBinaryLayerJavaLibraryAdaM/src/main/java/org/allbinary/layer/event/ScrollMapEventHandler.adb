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


package body org.allbinary.layer.event.ScrollMapEventHandler_Package is

   procedure Initialize_Fields (This : in out ScrollMapEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ScrollMapEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ScrollMapEventHandler_Access is
      This : constant ScrollMapEventHandler_Access := new ScrollMapEventHandler;
   begin
      ScrollMapEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return ScrollMapEventHandler_Access is
   begin
        return ScrollMapEventHandler_Package.SINGLETON;
   end getInstance;

   --  throws Exception
   procedure process (This : in out ScrollMapEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      scrollMapEventListenerInterface : ScrollMapEventListenerInterface_Access;
   begin
        scrollMapEventListenerInterface := (ScrollMapEventListenerInterface_Access (eventListenerInterface));
        scrollMapEventListenerInterface.onMoveEvent (ScrollMapEvent_Access (eventObject));
   end process;

begin
   null;
   SINGLETON := ScrollMapEventHandler_Package.Create;

end org.allbinary.layer.event.ScrollMapEventHandler_Package;


