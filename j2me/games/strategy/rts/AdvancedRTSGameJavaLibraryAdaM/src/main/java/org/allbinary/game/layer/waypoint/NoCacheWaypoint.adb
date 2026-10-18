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


with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.unit.UnitWaypointBehavior_Package; use org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.logic.util.event.EventStrings_Package; use org.allbinary.logic.util.event.EventStrings_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;

package body org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package is

   package CollidableDestroyableDamageableLayer_Package renames Standard.org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package UnitWaypointBehavior_Package renames Standard.org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;
   package PathFindingInfoFactory_Package renames Standard.org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package EventStrings_Package renames Standard.org.allbinary.logic.util.event.EventStrings_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package CustomMapGenerator_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator_Package;
   package RaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package PathGenerator_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   procedure Initialize_Fields (This : in out NoCacheWaypoint'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NoCacheWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
        WaypointBase_Package.Initialize (This, sound);
        Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) return NoCacheWaypoint_Access is
      This : constant NoCacheWaypoint_Access := new NoCacheWaypoint;
   begin
      NoCacheWaypoint_Package.Initialize (This.all, ownerLayer_Param, sound_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out NoCacheWaypoint; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        WaypointBase (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
   end setAllBinaryGameLayerManager;

   procedure releaseCachedPaths (This : in out NoCacheWaypoint) is
   begin
        null;
   end releaseCachedPaths;

   --  throws Exception
   function getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end getPathsListFromCacheOnly;

   --  throws Exception
   function getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return NoCacheWaypoint'Class (This).createPaths (geographicMapCellPosition);
   end getPathsListRunnable;

   --  throws Exception
   function getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      startGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (startGeographicMapCellPosition_Param);
      endList : BasicArrayList_Access;
      endGeographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        endList := This.ownerLayer.getEndGeographicMapCellPositionList;
        endGeographicMapCellPosition := GeographicMapCellPosition_Access (BasicArrayListUtil_Package.getInstance.getRandom (endList));
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then
            for index in reverse 0 .. (endList.size) - (1) loop
                endGeographicMapCellPosition := GeographicMapCellPosition_Access (endList.get (index));
                if (startGeographicMapCellPosition) /= (endGeographicMapCellPosition) then
                    exit;
                end if;
            end loop;
        end if;
        return endGeographicMapCellPosition;
   end getEndGeographicMapCellPosition;

   --  throws Exception
   function createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access is
      startGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (startGeographicMapCellPosition_Param);
      endGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      customMapGenerator : CustomMapGenerator_Access;
      customMapArray : Integer_Array_Access_Array_Access;
      pathFindingInfo : PathFindingInfo_Access;
      list : BasicArrayList_Access;
   begin
        endGeographicMapCellPosition := NoCacheWaypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (null) then
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
        end if;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then
            if This.ownerLayer.shouldHandleStartSameAsEnd then
                return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Start should not be End: ") & Java_Image (endGeographicMapCellPosition)));
            end if;
        end if;
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        raceTrackGeographicMap := RaceTrackGeographicMap_Access (geographicMapInterface);
        raceTrackGeographicMapCellTypeFactory := raceTrackGeographicMap.getGeographicMapCellTypeFactory;
        customMapGenerator := CustomMapGenerator_Access (raceTrackGeographicMap.getCustomMapGenerator);
        customMapGenerator.copyMapIntoCustomMap;
        customMapArray := customMapGenerator.getCustomMapArray;
        customMapArray (startGeographicMapCellPosition.getRow) (startGeographicMapCellPosition.getColumn) := raceTrackGeographicMapCellTypeFactory.getStartType;
        customMapArray (endGeographicMapCellPosition.getRow) (endGeographicMapCellPosition.getColumn) := raceTrackGeographicMapCellTypeFactory.getEndType;
        pathFindingInfo := PathFindingInfoFactory_Package.getInstance.getInstancePathFindingInfo (raceTrackGeographicMap, customMapArray);
        list := PathGenerator_Package.getInstance.getInstanceNoCache (geographicMapInterface, pathFindingInfo, 2);
        if (list.size) < (1) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Path may have been cleared by clearing caching")));
        end if;
        return list;
   end createPaths;

   procedure onEvent (This : in out NoCacheWaypoint; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, NoCacheWaypoint_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out NoCacheWaypoint; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class) is
      event : constant RTSLayerEvent_Access := RTSLayerEvent_Access (event_Param);
   begin
        null;
   end onBuildingEvent;

   procedure reset (This : in out NoCacheWaypoint) is
   begin
        NoCacheWaypoint'Class (This).getConnectedWaypointList.clear;
   end reset;

   --  throws Exception
   procedure visit (This : in out NoCacheWaypoint; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      unitLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (unitLayer_Param);
      size : Integer;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      rtsLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        if (unitLayer.getGroupInterface (0)) /= (This.ownerLayer.getGroupInterface (0)) then
            return;
        end if;
        size := NoCacheWaypoint'Class (This).getConnectedWaypointList.size;
        if (size) > (0) then
            unitWaypointBehavior := UnitWaypointBehavior_Access (unitLayer.getWaypointBehavior);
            while (NoCacheWaypoint'Class (This).getConnectedWaypointList.size) > (0) loop
                rtsLayer := CollidableDestroyableDamageableLayer_Access (NoCacheWaypoint'Class (This).getConnectedWaypointList.get (0));
                if rtsLayer.isDestroyed then
                    NoCacheWaypoint'Class (This).getConnectedWaypointList.remove (Java_Object_Access (rtsLayer));
                else
                    unitLayer.handleCost (This.ownerLayer);
                    unitWaypointBehavior.insertWaypoint (0, rtsLayer);
                    exit;
                end if;
            end loop;
        end if;
   end visit;

   procedure getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).getPathsListFromCacheOnly (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListFromCacheOnly;

   procedure getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).getPathsListRunnable (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListRunnable;

   procedure getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := NoCacheWaypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition_Param => startGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPosition;

   procedure createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).createPaths (startGeographicMapCellPosition_Param => startGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPaths;

end org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package;


