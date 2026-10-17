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


package body org.allbinary.game.configuration.event.GameFeatureEventHandler_Package is

   procedure Initialize_Fields (This : in out GameFeatureEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GameFeatureEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GameFeatureEventHandler_Access is
      This : constant GameFeatureEventHandler_Access := new GameFeatureEventHandler;
   begin
      GameFeatureEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return GameFeatureEventHandler_Access is
   begin
        return GameFeatureEventHandler_Package.gameKeyEventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out GameFeatureEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      gameFeatureListenerInterface : GameFeatureListenerInterface_Access;
   begin
        gameFeatureListenerInterface := (GameFeatureListenerInterface_Access (eventListenerInterface));
        gameFeatureListenerInterface.onGameFeatureChange (GameFeatureEvent_Access (eventObject));
   end process;

begin
   null;
   gameKeyEventHandler := GameFeatureEventHandler_Package.Create;

end org.allbinary.game.configuration.event.GameFeatureEventHandler_Package;


