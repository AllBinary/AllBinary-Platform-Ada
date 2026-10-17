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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.identification.Group_Package; use org.allbinary.game.identification.Group_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package; use org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;

package org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;

   type WaypointEventHandlerFactory is tagged;
   type WaypointEventHandlerFactory_Access is access all WaypointEventHandlerFactory'Class;
   type WaypointEventHandlerFactory_Access_Array is array (Natural range <>) of WaypointEventHandlerFactory_Access;
   type WaypointEventHandlerFactory_Access_Array_Access is access all WaypointEventHandlerFactory_Access_Array;

   type WaypointEventHandlerFactory is new Java_Object with null record;
   eventHandlerArray : WaypointEventHandler_Access_Array_Access;

   procedure Initialize (This : in out WaypointEventHandlerFactory'Class);
   function Create return WaypointEventHandlerFactory_Access;
   function getInstance (groupInterface_Param : access Group_Package.Group'Class) return WaypointEventHandler_Access;
   procedure getInstance (groupInterface_Param : access Group_Package.Group'Class);
   procedure removeAll;

end org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;


