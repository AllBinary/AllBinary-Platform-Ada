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


with org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package; use org.allbinary.game.configuration.event.GameInitializedListenerInterface_Package;
with org.allbinary.game.configuration.event.GameInitializedEvent_Package; use org.allbinary.game.configuration.event.GameInitializedEvent_Package;

package body org.allbinary.game.configuration.event.GameInitializedEventHandler_Package is

   procedure Initialize_Fields (This : in out GameInitializedEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameInitializedEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameInitializedEventHandler_Access is
      This : constant GameInitializedEventHandler_Access := new GameInitializedEventHandler;
   begin
      GameInitializedEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameInitializedEventHandler_Access is
   begin
        return GameInitializedEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out GameInitializedEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      gameInitializedListenerInterface : GameInitializedListenerInterface_Access;
   begin
        gameInitializedListenerInterface := (GameInitializedListenerInterface_Access (eventListenerInterface));
        gameInitializedListenerInterface.onGameInitialized (GameInitializedEvent_Access (eventObject));
   end process;

begin
   null;
   gameKeyEventHandler := GameInitializedEventHandler_Package.Create;

end org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;


