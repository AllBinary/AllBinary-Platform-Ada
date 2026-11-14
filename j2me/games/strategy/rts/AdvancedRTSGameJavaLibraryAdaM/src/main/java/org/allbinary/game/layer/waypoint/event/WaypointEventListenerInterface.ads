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

with AllBinary_Java;
limited with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;
package org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References is
   type WaypointEventListenerInterface_Access is access all org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package.WaypointEventListenerInterface'Class;
   type WaypointEventListenerInterface_Access_Array is array (Natural range <>) of WaypointEventListenerInterface_Access;
   type WaypointEventListenerInterface_Access_Array_Access is access all WaypointEventListenerInterface_Access_Array;
   type WaypointEventListenerInterface_Access_Array_Access_Array is array (Natural range <>) of WaypointEventListenerInterface_Access_Array_Access;
   type WaypointEventListenerInterface_Access_Array_Access_Array_Access is access all WaypointEventListenerInterface_Access_Array_Access_Array;
   type WaypointEventListenerInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointEventListenerInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointEventListenerInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointEventListenerInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointEventListenerInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointEventListenerInterface_Access_Array_Access is (if Value /= null and then Value.all in WaypointEventListenerInterface_Access_Array_Object'Class then WaypointEventListenerInterface_Access_Array_Object'Class (Value.all).Value else null);
   type WaypointEventListenerInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : WaypointEventListenerInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : WaypointEventListenerInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new WaypointEventListenerInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_WaypointEventListenerInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return WaypointEventListenerInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in WaypointEventListenerInterface_Access_Array_Access_Array_Object'Class then WaypointEventListenerInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References;

with org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package_References;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;

package org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package is

   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package Reference_Types is
   subtype RTSLayerEvent_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access;
   use type RTSLayerEvent_Access;
   subtype RTSLayerEvent_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array;
   use type RTSLayerEvent_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access;
   subtype RTSLayerEvent_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array;
   use type RTSLayerEvent_Access_Array_Access_Array;
   subtype RTSLayerEvent_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayerEvent_Package_References.RTSLayerEvent_Access_Array_Access_Array_Access;
   use type RTSLayerEvent_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type WaypointEventListenerInterface is interface and EventListenerInterface;
   subtype WaypointEventListenerInterface_Access is org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.WaypointEventListenerInterface_Access;
   function "=" (Left, Right : WaypointEventListenerInterface_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References."=";
   subtype WaypointEventListenerInterface_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.WaypointEventListenerInterface_Access_Array;
   function "=" (Left, Right : WaypointEventListenerInterface_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References."=";
   subtype WaypointEventListenerInterface_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.WaypointEventListenerInterface_Access_Array_Access;
   function "=" (Left, Right : WaypointEventListenerInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References."=";
   function Java_Box (Value : WaypointEventListenerInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_WaypointEventListenerInterface_Access_Array (Value : access Java_Object'Class) return WaypointEventListenerInterface_Access_Array_Access renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.Java_Unbox_WaypointEventListenerInterface_Access_Array;
   subtype WaypointEventListenerInterface_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.WaypointEventListenerInterface_Access_Array_Access_Array;
   function "=" (Left, Right : WaypointEventListenerInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References."=";
   subtype WaypointEventListenerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.WaypointEventListenerInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WaypointEventListenerInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References."=";
   function Java_Box (Value : WaypointEventListenerInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.Java_Box;
   function Java_Unbox_WaypointEventListenerInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return WaypointEventListenerInterface_Access_Array_Access_Array_Access renames org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package_References.Java_Unbox_WaypointEventListenerInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_WaypointEventListenerInterface (Value : WaypointEventListenerInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure onWaypointEvent (This : in out WaypointEventListenerInterface; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class) is abstract;

end org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface_Package;


