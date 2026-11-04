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

limited with org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;
package org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References is
   type MultipassNoCacheWaypoint_Access is access all org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package.MultipassNoCacheWaypoint'Class;
   type MultipassNoCacheWaypoint_Access_Array is array (Natural range <>) of MultipassNoCacheWaypoint_Access;
   type MultipassNoCacheWaypoint_Access_Array_Access is access all MultipassNoCacheWaypoint_Access_Array;
   type MultipassNoCacheWaypoint_Access_Array_Access_Array is array (Natural range <>) of MultipassNoCacheWaypoint_Access_Array_Access;
   type MultipassNoCacheWaypoint_Access_Array_Access_Array_Access is access all MultipassNoCacheWaypoint_Access_Array_Access_Array;
end org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References;

with org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package_References;
limited with org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package_References;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package; use org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package_References;
limited with org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.audio.Sound_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;

package org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package BuildingEventListenerInterface_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype PathFindingLayerInterface_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access;
   use type PathFindingLayerInterface_Access;
   subtype PathFindingLayerInterface_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array;
   use type PathFindingLayerInterface_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access;
   subtype PathFindingLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array;
   use type PathFindingLayerInterface_Access_Array_Access_Array;
   subtype PathFindingLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.PathFindingLayerInterface_Package_References.PathFindingLayerInterface_Access_Array_Access_Array_Access;
   use type PathFindingLayerInterface_Access_Array_Access_Array_Access;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
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
   subtype Sound_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access;
   use type Sound_Access;
   subtype Sound_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array;
   use type Sound_Access_Array;
   subtype Sound_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access;
   use type Sound_Access_Array_Access;
   subtype Sound_Access_Array_Access_Array is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array;
   use type Sound_Access_Array_Access_Array;
   subtype Sound_Access_Array_Access_Array_Access is org.allbinary.media.audio.Sound_Package_References.Sound_Access_Array_Access_Array_Access;
   use type Sound_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   subtype PathFindingInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access;
   use type PathFindingInfo_Access;
   subtype PathFindingInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array;
   use type PathFindingInfo_Access_Array;
   subtype PathFindingInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access;
   subtype PathFindingInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array;
   use type PathFindingInfo_Access_Array_Access_Array;
   subtype PathFindingInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MultipassNoCacheWaypoint_Access is org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References.MultipassNoCacheWaypoint_Access;
   function "=" (Left, Right : MultipassNoCacheWaypoint_Access) return Boolean renames org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References."=";
   subtype MultipassNoCacheWaypoint_Access_Array is org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References.MultipassNoCacheWaypoint_Access_Array;
   function "=" (Left, Right : MultipassNoCacheWaypoint_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References."=";
   subtype MultipassNoCacheWaypoint_Access_Array_Access is org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References.MultipassNoCacheWaypoint_Access_Array_Access;
   function "=" (Left, Right : MultipassNoCacheWaypoint_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References."=";
   subtype MultipassNoCacheWaypoint_Access_Array_Access_Array is org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References.MultipassNoCacheWaypoint_Access_Array_Access_Array;
   function "=" (Left, Right : MultipassNoCacheWaypoint_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References."=";
   subtype MultipassNoCacheWaypoint_Access_Array_Access_Array_Access is org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References.MultipassNoCacheWaypoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipassNoCacheWaypoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package_References."=";

   type MultipassNoCacheWaypoint is new WaypointBase and BuildingEventListenerInterface with record
      logUtil : LogUtil_Access;
      ownerLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out MultipassNoCacheWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class);
   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) return MultipassNoCacheWaypoint_Access;
   procedure setAllBinaryGameLayerManager (This : in out MultipassNoCacheWaypoint; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure releaseCachedPaths (This : in out MultipassNoCacheWaypoint);
   function getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingInfo_Access;
   procedure getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access;
   procedure getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure onEvent (This : in out MultipassNoCacheWaypoint; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onBuildingEvent (This : in out MultipassNoCacheWaypoint; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class);
   procedure reset (This : in out MultipassNoCacheWaypoint);
   procedure visit (This : in out MultipassNoCacheWaypoint; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;


