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
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.PathFindingLayerInterface_Package; use org.allbinary.game.layer.PathFindingLayerInterface_Package;
with org.allbinary.game.layer.RTSLayerEvent_Package; use org.allbinary.game.layer.RTSLayerEvent_Package;
with org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package; use org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;

package org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package is

   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathFindingLayerInterface_Package renames org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayerEvent_Package renames org.allbinary.game.layer.RTSLayerEvent_Package;
   package BuildingEventListenerInterface_Package renames org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
   package CollidableDestroyableDamageableLayer_Package renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package UnitWaypointBehavior_Package renames org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package PathFindingInfoFactory_Package renames org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;
   package ForcedLogUtil_Package renames org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package AllBinaryEventObject_Package renames org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventStrings_Package renames org.allbinary.logic.util.event.EventStrings_Package;
   package Sound_Package renames org.allbinary.media.audio.Sound_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellTypeFactory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package GeographicMapCompositeInterface_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package CustomMapGenerator_Package renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
   package RaceTrackGeographicMap_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
   package MultipassState_Package renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package PathFindingInfo_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package PathGenerator_Package renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames org.allbinary.util.BasicArrayListUtil_Package;

   type MultipassNoCacheWaypoint is tagged;
   type MultipassNoCacheWaypoint_Access is access all MultipassNoCacheWaypoint'Class;
   type MultipassNoCacheWaypoint_Access_Array is array (Natural range <>) of MultipassNoCacheWaypoint_Access;
   type MultipassNoCacheWaypoint_Access_Array_Access is access all MultipassNoCacheWaypoint_Access_Array;

   type MultipassNoCacheWaypoint is new WaypointBase and BuildingEventListenerInterface with record
      logUtil : LogUtil_Access;
      ownerLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out MultipassNoCacheWaypoint'Class; ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access);
   function Create (ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access) return MultipassNoCacheWaypoint_Access;
   procedure setAllBinaryGameLayerManager (This : in out MultipassNoCacheWaypoint; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   procedure releaseCachedPaths (This : in out MultipassNoCacheWaypoint);
   function getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingInfo_Access;
   procedure getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access);
   function getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access;
   procedure getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure onEvent (This : in out MultipassNoCacheWaypoint; eventObject : AllBinaryEventObject_Access);
   procedure onBuildingEvent (This : in out MultipassNoCacheWaypoint; event : RTSLayerEvent_Access);
   procedure reset (This : in out MultipassNoCacheWaypoint);
   procedure visit (This : in out MultipassNoCacheWaypoint; unitLayer : PathFindingLayerInterface_Access);

end org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;


