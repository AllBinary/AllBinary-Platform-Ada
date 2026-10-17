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
      Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameInitializedEventHandler_Access is
   begin
        return GameInitializedEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out GameInitializedEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      gameInitializedListenerInterface : GameInitializedListenerInterface_Access;
   begin
        gameInitializedListenerInterface := (GameInitializedListenerInterface_Access (eventListenerInterface));
        gameInitializedListenerInterface.onGameInitialized (GameInitializedEvent_Access (eventObject));
   end process;

   procedure getInstance is
      Java_Result : constant GameInitializedEventHandler_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   gameKeyEventHandler := GameInitializedEventHandler_Package.Create;

end org.allbinary.game.configuration.event.GameInitializedEventHandler_Package;


