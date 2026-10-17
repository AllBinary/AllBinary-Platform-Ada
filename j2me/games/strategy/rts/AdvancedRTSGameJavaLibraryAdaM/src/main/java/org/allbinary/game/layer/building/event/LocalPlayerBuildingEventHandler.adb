-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2002 AllBinary 
--  
-- By agreeing to this license you and any business entity you represent are 
-- legally bound to the AllBinary Open License Version 1 legal agreement. 
--  
-- You may obtain the AllBinary Open License Version 1 legal agreement from 
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
--  
-- Created By: Travis Berthelot  
--  Generated Code Do Not Modify


package body org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package is

   procedure Initialize_Fields (This : in out LocalPlayerBuildingEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LocalPlayerBuildingEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LocalPlayerBuildingEventHandler_Access is
      This : constant LocalPlayerBuildingEventHandler_Access := new LocalPlayerBuildingEventHandler;
   begin
      LocalPlayerBuildingEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return LocalPlayerBuildingEventHandler_Access is
   begin
        return LocalPlayerBuildingEventHandler_Package.eventHandler;
   end getInstance;

   --  throws Exception
   procedure process (This : in out LocalPlayerBuildingEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
      eventListenerInterface : constant EventListenerInterface_Access := EventListenerInterface_Access (eventListenerInterface_Param);
      buildingEventListenerInterface : BuildingEventListenerInterface_Access;
   begin
        buildingEventListenerInterface := (BuildingEventListenerInterface_Access (eventListenerInterface));
        buildingEventListenerInterface.onBuildingEvent (RTSLayerEvent_Access (eventObject));
   end process;

begin
   null;
   eventHandler := LocalPlayerBuildingEventHandler_Package.Create;

end org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler_Package;


