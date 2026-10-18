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


with org.allbinary.game.midlet.DemoGameMidletEventListener_Package; use org.allbinary.game.midlet.DemoGameMidletEventListener_Package;
with org.allbinary.game.midlet.DemoGameMidletEvent_Package; use org.allbinary.game.midlet.DemoGameMidletEvent_Package;

package body org.allbinary.game.midlet.DemoGameMidletEventHandler_Package is

   procedure Initialize_Fields (This : in out DemoGameMidletEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DemoGameMidletEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DemoGameMidletEventHandler_Access is
      This : constant DemoGameMidletEventHandler_Access := new DemoGameMidletEventHandler;
   begin
      DemoGameMidletEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return DemoGameMidletEventHandler_Access is
   begin
        return DemoGameMidletEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out DemoGameMidletEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      demoGameMidletEventListener : DemoGameMidletEventListener_Access;
   begin
        demoGameMidletEventListener := DemoGameMidletEventListener_Access (eventListenerInterface);
        demoGameMidletEventListener.onDemoGameMidletEvent (DemoGameMidletEvent_Access (eventObject));
   end process;

begin
   null;
   gameKeyEventHandler := DemoGameMidletEventHandler_Package.Create;

end org.allbinary.game.midlet.DemoGameMidletEventHandler_Package;


