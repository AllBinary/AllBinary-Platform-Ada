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


package body org.allbinary.game.midlet.GameMidletEventHandler_Package is

   procedure Initialize_Fields (This : in out GameMidletEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameMidletEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameMidletEventHandler_Access is
      This : constant GameMidletEventHandler_Access := new GameMidletEventHandler;
   begin
      GameMidletEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameMidletEventHandler_Access is
   begin
        return GameMidletEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out GameMidletEventHandler; eventObject_Param : access AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      gameMidletEventListener : GameMidletEventListener_Access;
   begin
        gameMidletEventListener := GameMidletEventListener_Access (eventListenerInterface);
        gameMidletEventListener.onGameEnd (eventObject);
   end process;

begin
   null;
   gameKeyEventHandler := GameMidletEventHandler_Package.Create;

end org.allbinary.game.midlet.GameMidletEventHandler_Package;


