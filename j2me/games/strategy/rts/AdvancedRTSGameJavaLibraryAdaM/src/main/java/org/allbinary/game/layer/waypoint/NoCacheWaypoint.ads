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
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.waypoint.WaypointBase_Package; use org.allbinary.game.layer.waypoint.WaypointBase_Package;

package org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package RTSLayerEvent_Package renames Standard.org.allbinary.game.layer.RTSLayerEvent_Package;
   package BuildingEventListenerInterface_Package renames Standard.org.allbinary.game.layer.building.event.BuildingEventListenerInterface_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type NoCacheWaypoint is tagged;
   type NoCacheWaypoint_Access is access all NoCacheWaypoint'Class;
   type NoCacheWaypoint_Access_Array is array (Natural range <>) of NoCacheWaypoint_Access;
   type NoCacheWaypoint_Access_Array_Access is access all NoCacheWaypoint_Access_Array;
   type NoCacheWaypoint_Access_Array_Access_Array is array (Natural range <>) of NoCacheWaypoint_Access_Array_Access;
   type NoCacheWaypoint_Access_Array_Access_Array_Access is access all NoCacheWaypoint_Access_Array_Access_Array;

   type NoCacheWaypoint is new WaypointBase and BuildingEventListenerInterface with record
      ownerLayer : PathFindingLayerInterface_Access;
   end record;

   procedure Initialize (This : in out NoCacheWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class);
   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) return NoCacheWaypoint_Access;
   procedure setAllBinaryGameLayerManager (This : in out NoCacheWaypoint; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class);
   procedure releaseCachedPaths (This : in out NoCacheWaypoint);
   function getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access;
   procedure getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   function createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure onEvent (This : in out NoCacheWaypoint; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class);
   procedure onBuildingEvent (This : in out NoCacheWaypoint; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class);
   procedure reset (This : in out NoCacheWaypoint);
   procedure visit (This : in out NoCacheWaypoint; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class);

end org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package;


