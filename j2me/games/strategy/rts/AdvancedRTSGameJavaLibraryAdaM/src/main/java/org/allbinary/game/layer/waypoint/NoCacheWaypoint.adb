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


package body org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package is

   procedure Initialize_Fields (This : in out NoCacheWaypoint'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out NoCacheWaypoint'Class; ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access) is
   begin
        WaypointBase_Package.Initialize (This, sound);
        Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access) return NoCacheWaypoint_Access is
      This : constant NoCacheWaypoint_Access := new NoCacheWaypoint;
   begin
      NoCacheWaypoint_Package.Initialize (This.all, ownerLayer, sound);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out NoCacheWaypoint; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        WaypointBase (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
   end setAllBinaryGameLayerManager;

   procedure releaseCachedPaths (This : in out NoCacheWaypoint) is
   begin
        null;
   end releaseCachedPaths;

   --  throws Exception
   function getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
   end getPathsListFromCacheOnly;

   --  throws Exception
   function getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        return This.createPaths (geographicMapCellPosition);
   end getPathsListRunnable;

   --  throws Exception
   function getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access is
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
   function createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
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
        endGeographicMapCellPosition := This.getEndGeographicMapCellPosition (startGeographicMapCellPosition);
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

   procedure onEvent (This : in out NoCacheWaypoint; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out NoCacheWaypoint; event : RTSLayerEvent_Access) is
   begin
        null;
   end onBuildingEvent;

   procedure reset (This : in out NoCacheWaypoint) is
   begin
        This.getConnectedWaypointList.clear;
   end reset;

   --  throws Exception
   procedure visit (This : in out NoCacheWaypoint; unitLayer : PathFindingLayerInterface_Access) is
      size : Integer;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      rtsLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        if (unitLayer.getGroupInterface (0)) /= (This.ownerLayer.getGroupInterface (0)) then
            return;
        end if;
        size := This.getConnectedWaypointList.size;
        if (size) > (0) then
            unitWaypointBehavior := UnitWaypointBehavior_Access (unitLayer.getWaypointBehavior);
            while (This.getConnectedWaypointList.size) > (0) loop
                rtsLayer := CollidableDestroyableDamageableLayer_Access (This.getConnectedWaypointList.get (0));
                if rtsLayer.isDestroyed then
                    This.getConnectedWaypointList.remove (rtsLayer);
                else
                    unitLayer.handleCost (This.ownerLayer);
                    unitWaypointBehavior.insertWaypoint (0, rtsLayer);
                    exit;
                end if;
            end loop;
        end if;
   end visit;

   procedure getPathsListFromCacheOnly (This : in out NoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).getPathsListFromCacheOnly (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListFromCacheOnly;

   procedure getPathsListRunnable (This : in out NoCacheWaypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).getPathsListRunnable (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListRunnable;

   procedure getEndGeographicMapCellPosition (This : in out NoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant GeographicMapCellPosition_Access := NoCacheWaypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPosition;

   procedure createPaths (This : in out NoCacheWaypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := NoCacheWaypoint'Class (This).createPaths (startGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPaths;

end org.allbinary.game.layer.waypoint.NoCacheWaypoint_Package;


