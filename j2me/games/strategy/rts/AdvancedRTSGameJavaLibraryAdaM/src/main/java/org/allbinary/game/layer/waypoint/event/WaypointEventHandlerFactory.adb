-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


package body org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package is

   procedure Initialize_Fields (This : in out WaypointEventHandlerFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointEventHandlerFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointEventHandlerFactory_Access is
      This : constant WaypointEventHandlerFactory_Access := new WaypointEventHandlerFactory;
   begin
      WaypointEventHandlerFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (groupInterface_Param : access Group'Class) return WaypointEventHandler_Access is
      groupInterface : Group_Access := Group_Access (groupInterface_Param);
   begin
        return WaypointEventHandlerFactory_Package.eventHandlerArray (Integer (groupInterface.getGroupId));
   end getInstance;

   procedure removeAll is
      index : Integer;
   begin
        for index in reverse 0 .. (WaypointEventHandlerFactory_Package.eventHandlerArray'Length) - (1) loop
            WaypointEventHandlerFactory_Package.eventHandlerArray (index).removeAllListeners;
        end loop;
   end removeAll;

   procedure getInstance (groupInterface_Param : access Group'Class) is
      Java_Result : constant WaypointEventHandler_Access := getInstance (groupInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   eventHandlerArray := new WaypointEventHandler_Access_Array'(WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create, WaypointEventHandler_Package.Create);

end org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;


