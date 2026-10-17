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


package body org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package is

   procedure Initialize_Fields (This : in out WaypointEventHandler'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WaypointEventHandler'Class) is
   begin
      BasicEventHandler_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WaypointEventHandler_Access is
      This : constant WaypointEventHandler_Access := new WaypointEventHandler;
   begin
      WaypointEventHandler_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out WaypointEventHandler; eventObject : AllBinaryEventObject_Access; eventListenerInterface : EventListenerInterface_Access) is
      waypointEventListenerInterface : WaypointEventListenerInterface_Access;
   begin
        waypointEventListenerInterface := (WaypointEventListenerInterface_Access (eventListenerInterface));
        waypointEventListenerInterface.onWaypointEvent (RTSLayerEvent_Access (eventObject));
   end process;

end org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;


