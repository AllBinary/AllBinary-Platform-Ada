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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package is

   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;

   type WaypointEventListenerInterface is interface and EventListenerInterface;
   type WaypointEventListenerInterface_Access is access all WaypointEventListenerInterface'Class;
   type WaypointEventListenerInterface_Access_Array is array (Natural range <>) of WaypointEventListenerInterface_Access;
   type WaypointEventListenerInterface_Access_Array_Access is access all WaypointEventListenerInterface_Access_Array;
   procedure onWaypointEvent (This : in out WaypointEventListenerInterface; event : RTSLayerEvent_Access) is abstract;

end org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;


