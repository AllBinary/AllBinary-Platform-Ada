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

limited with org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;
package org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References is
   type WaypointEventHandlerFactory_Access is access all org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package.WaypointEventHandlerFactory'Class;
   type WaypointEventHandlerFactory_Access_Array is array (Natural range <>) of WaypointEventHandlerFactory_Access;
   type WaypointEventHandlerFactory_Access_Array_Access is access all WaypointEventHandlerFactory_Access_Array;
   type WaypointEventHandlerFactory_Access_Array_Access_Array is array (Natural range <>) of WaypointEventHandlerFactory_Access_Array_Access;
   type WaypointEventHandlerFactory_Access_Array_Access_Array_Access is access all WaypointEventHandlerFactory_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References;

with org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.identification.Group_Package;
with org.allbinary.game.identification.Group_Package_References;
limited with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;
with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References;

package org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package is

   package Group_Package renames Standard.org.allbinary.game.identification.Group_Package;
   package Reference_Types is
   subtype Group_Access is org.allbinary.game.identification.Group_Package_References.Group_Access;
   use type Group_Access;
   subtype Group_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array;
   use type Group_Access_Array;
   subtype Group_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access;
   use type Group_Access_Array_Access;
   subtype Group_Access_Array_Access_Array is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array;
   use type Group_Access_Array_Access_Array;
   subtype Group_Access_Array_Access_Array_Access is org.allbinary.game.identification.Group_Package_References.Group_Access_Array_Access_Array_Access;
   use type Group_Access_Array_Access_Array_Access;
   subtype WaypointEventHandler_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access;
   use type WaypointEventHandler_Access;
   subtype WaypointEventHandler_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array;
   use type WaypointEventHandler_Access_Array;
   subtype WaypointEventHandler_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access;
   use type WaypointEventHandler_Access_Array_Access;
   subtype WaypointEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array;
   use type WaypointEventHandler_Access_Array_Access_Array;
   subtype WaypointEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array_Access;
   use type WaypointEventHandler_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointEventHandlerFactory_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References.WaypointEventHandlerFactory_Access;
   function "=" (Left, Right : WaypointEventHandlerFactory_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References."=";
   subtype WaypointEventHandlerFactory_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References.WaypointEventHandlerFactory_Access_Array;
   function "=" (Left, Right : WaypointEventHandlerFactory_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References."=";
   subtype WaypointEventHandlerFactory_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References.WaypointEventHandlerFactory_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandlerFactory_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References."=";
   subtype WaypointEventHandlerFactory_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References.WaypointEventHandlerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointEventHandlerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References."=";
   subtype WaypointEventHandlerFactory_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References.WaypointEventHandlerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandlerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package_References."=";

   type WaypointEventHandlerFactory is new Java_Object with null record;
   eventHandlerArray : WaypointEventHandler_Access_Array_Access;

   procedure Initialize (This : in out WaypointEventHandlerFactory'Class);
   function Create return WaypointEventHandlerFactory_Access;
   function getInstance (groupInterface_Param : access Group_Package.Group'Class) return WaypointEventHandler_Access;
   procedure getInstance (groupInterface_Param : access Group_Package.Group'Class);
   procedure removeAll;

end org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory_Package;


