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

limited with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;
package org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References is
   type WaypointEventHandler_Access is access all org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package.WaypointEventHandler'Class;
   type WaypointEventHandler_Access_Array is array (Natural range <>) of WaypointEventHandler_Access;
   type WaypointEventHandler_Access_Array_Access is access all WaypointEventHandler_Access_Array;
   type WaypointEventHandler_Access_Array_Access_Array is array (Natural range <>) of WaypointEventHandler_Access_Array_Access;
   type WaypointEventHandler_Access_Array_Access_Array_Access is access all WaypointEventHandler_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References;

with org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package_References;
with org.allbinary.logic.util.event.handler.BasicEventHandler_Package; use org.allbinary.logic.util.event.handler.BasicEventHandler_Package;

package org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package is

   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package BasicEventHandler_Package renames Standard.org.allbinary.logic.util.event.handler.BasicEventHandler_Package;
   package Reference_Types is
   subtype AllBinaryEventObject_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access;
   use type AllBinaryEventObject_Access;
   subtype AllBinaryEventObject_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array;
   use type AllBinaryEventObject_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access;
   subtype AllBinaryEventObject_Access_Array_Access_Array is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array;
   use type AllBinaryEventObject_Access_Array_Access_Array;
   subtype AllBinaryEventObject_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.AllBinaryEventObject_Package_References.AllBinaryEventObject_Access_Array_Access_Array_Access;
   use type AllBinaryEventObject_Access_Array_Access_Array_Access;
   subtype EventListenerInterface_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access;
   use type EventListenerInterface_Access;
   subtype EventListenerInterface_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array;
   use type EventListenerInterface_Access_Array;
   subtype EventListenerInterface_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access;
   subtype EventListenerInterface_Access_Array_Access_Array is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array;
   use type EventListenerInterface_Access_Array_Access_Array;
   subtype EventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.logic.util.event.EventListenerInterface_Package_References.EventListenerInterface_Access_Array_Access_Array_Access;
   use type EventListenerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WaypointEventHandler_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access;
   function "=" (Left, Right : WaypointEventHandler_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array;
   function "=" (Left, Right : WaypointEventHandler_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";
   subtype WaypointEventHandler_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References.WaypointEventHandler_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointEventHandler_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package_References."=";

   type WaypointEventHandler is new BasicEventHandler with null record;

   procedure Initialize (This : in out WaypointEventHandler'Class);
   function Create return WaypointEventHandler_Access;
   procedure process (This : in out WaypointEventHandler; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class; eventListenerInterface_Param : access EventListenerInterface_Package.EventListenerInterface'Class);

end org.allbinary.game.layer.waypoint.event.WaypointEventHandler_Package;


