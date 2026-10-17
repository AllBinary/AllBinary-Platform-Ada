-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.AllBinaryEventObject_Package; use org.allbinary.logic.util.event.AllBinaryEventObject_Package;
with org.allbinary.logic.util.event.EventListenerInterface_Package; use org.allbinary.logic.util.event.EventListenerInterface_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.audio.NoSound_Package; use org.allbinary.media.audio.NoSound_Package;
with org.allbinary.media.audio.Sound_Package; use org.allbinary.media.audio.Sound_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.game.layer.waypoint.WaypointBase_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package PathFindingLayerInterface_Package renames Standard.org.allbinary.game.layer.PathFindingLayerInterface_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package AllBinaryEventObject_Package renames Standard.org.allbinary.logic.util.event.AllBinaryEventObject_Package;
   package EventListenerInterface_Package renames Standard.org.allbinary.logic.util.event.EventListenerInterface_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package NoSound_Package renames Standard.org.allbinary.media.audio.NoSound_Package;
   package Sound_Package renames Standard.org.allbinary.media.audio.Sound_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package MultipassState_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type WaypointBase is tagged;
   type WaypointBase_Access is access all WaypointBase'Class;
   type WaypointBase_Access_Array is array (Natural range <>) of WaypointBase_Access;
   type WaypointBase_Access_Array_Access is access all WaypointBase_Access_Array;

   type WaypointBase is new EventListenerInterface with record
      connectedWaypointList : BasicArrayList_Access;
      sound : Sound_Access;
      allBinaryGameLayerManagerP : AllBinaryGameLayerManager_Access;
   end record;
   NULL_WAYPOINT_BASE : WaypointBase_Access;

   procedure Initialize (This : in out WaypointBase'Class; sound : Sound_Access);
   function Create (sound : Sound_Access) return WaypointBase_Access;
   function getSound (This : in out WaypointBase) return Sound_Access;
   procedure setAllBinaryGameLayerManager (This : in out WaypointBase; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access);
   function getConnectedWaypointList (This : in out WaypointBase) return BasicArrayList_Access;
   procedure onEvent (This : in out WaypointBase; eventObject : AllBinaryEventObject_Access);
   function getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingInfo_Access;
   procedure getPathFindingInfo (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getPathsList (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure getPathsList (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingInfo : PathFindingInfo_Access; multipassState : MultipassState_Access);
   function getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access;
   procedure getPathsListRunnable (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access;
   procedure getPathsListFromCacheOnly (This : in out WaypointBase; geographicMapCellPosition : GeographicMapCellPosition_Access);
   procedure visit (This : in out WaypointBase; unitLayer : PathFindingLayerInterface_Access);
   procedure reset (This : in out WaypointBase);
   function getType (This : in out WaypointBase) return Integer;

end org.allbinary.game.layer.waypoint.WaypointBase_Package;


