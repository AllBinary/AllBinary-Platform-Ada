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


package body org.allbinary.game.layer.waypoint.Waypoint_Package is

   procedure Initialize_Fields (This : in out Waypoint'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.basicArrayListUtil := BasicArrayListUtil_Package.getInstance;
      
      This.endList := This.basicArrayListUtil.getImmutableInstance;
      This.paths := This.basicArrayListUtil.NULL_ARRAY_OF_ARRAY;
   end Initialize_Fields;


   procedure Initialize (This : in out Waypoint'Class; ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access) is
   begin
        WaypointBase_Package.Initialize (This, sound);
        Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer : PathFindingLayerInterface_Access; sound : Sound_Access) return Waypoint_Access is
      This : constant Waypoint_Access := new Waypoint;
   begin
      Waypoint_Package.Initialize (This.all, ownerLayer, sound);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out Waypoint; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
   begin
        WaypointBase (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        if (This.paths) /= (This.basicArrayListUtil.NULL_ARRAY_OF_ARRAY) then
            Java_Throw (Java_New_Exception ("RuntimeException"));
        end if;
        This.endList := This.ownerLayer.getEndGeographicMapCellPositionList;
        This.paths := new BasicArrayList_Access_Array_Access_Array'(0 .. (tiledLayer.getColumns) - 1 => new BasicArrayList_Access_Array'(0 .. (tiledLayer.getRows) - 1 => null));
        This.clearPaths;
   end setAllBinaryGameLayerManager;

   procedure releaseCachedPaths (This : in out Waypoint) is
      pathsList : BasicArrayList_Access;
      rowIndex : Integer;
      columnIndex : Integer;
   begin
        columnIndex := This.paths'Length;
        while (Java_Pre_Decrement (columnIndex)) >= (0) loop
            rowIndex := This.paths'Length;
            while (Java_Pre_Decrement (rowIndex)) >= (0) loop
                pathsList := This.paths (columnIndex) (rowIndex);
                if (pathsList) /= (This.basicArrayListUtil.getImmutableInstance) then
                    BasicGeographicMapExtractedPathsCacheFactory_Package.getInstance.release (pathsList);
                end if;
            end loop;
        end loop;
   end releaseCachedPaths;

   --  throws Exception
   function getPathsListFromCacheOnly (This : in out Waypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
   begin
        return This.paths (geographicMapCellPosition.getColumn) (geographicMapCellPosition.getRow);
   end getPathsListFromCacheOnly;

   --  throws Exception
   function getPathsListRunnable (This : in out Waypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
      pathsList : BasicArrayList_Access;
   begin
        pathsList := This.paths (geographicMapCellPosition.getColumn) (geographicMapCellPosition.getRow);
        if (pathsList) = (This.basicArrayListUtil.getImmutableInstance) then
            pathsList := This.createPaths (geographicMapCellPosition);
            This.paths (geographicMapCellPosition.getColumn) (geographicMapCellPosition.getRow) := pathsList;
        end if;
        return pathsList;
   end getPathsListRunnable;

   function getEndGeographicMapCellPosition (This : in out Waypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access is
      endGeographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        endGeographicMapCellPosition := GeographicMapCellPosition_Access (This.basicArrayListUtil.getRandom (This.endList));
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then
            for index in reverse 0 .. (This.endList.size) - (1) loop
                endGeographicMapCellPosition := GeographicMapCellPosition_Access (This.endList.get (index));
                if (startGeographicMapCellPosition) /= (endGeographicMapCellPosition) then
                    exit;
                end if;
            end loop;
        end if;
        return endGeographicMapCellPosition;
   end getEndGeographicMapCellPosition;

   --  throws Exception
   function createPaths (This : in out Waypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) return BasicArrayList_Access is
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
        if (This.endList.size) = (0) then
            return This.basicArrayListUtil.getImmutableInstance;
        end if;
        endGeographicMapCellPosition := This.getEndGeographicMapCellPosition (startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (null) then
            return This.basicArrayListUtil.getImmutableInstance;
        end if;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then
            if This.ownerLayer.shouldHandleStartSameAsEnd then
                return This.basicArrayListUtil.getImmutableInstance;
            else
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Start should not be End: ") & Java_Image (This.endList.size)));
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

   procedure onEvent (This : in out Waypoint; eventObject : AllBinaryEventObject_Access) is
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, This'Unchecked_Access);
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out Waypoint; event : RTSLayerEvent_Access) is
   begin
        This.clearPaths;
   end onBuildingEvent;

   procedure clearPaths (This : in out Waypoint) is
      rowIndex : Integer;
      columnIndex : Integer;
   begin
        columnIndex := This.paths'Length;
        while (Java_Pre_Decrement (columnIndex)) >= (0) loop
            rowIndex := This.paths'Length;
            while (Java_Pre_Decrement (rowIndex)) >= (0) loop
                This.paths (columnIndex) (rowIndex) := This.basicArrayListUtil.getImmutableInstance;
            end loop;
        end loop;
   end clearPaths;

   procedure reset (This : in out Waypoint) is
   begin
        This.getConnectedWaypointList.clear;
        This.releaseCachedPaths;
   end reset;

   --  throws Exception
   procedure visit (This : in out Waypoint; unitLayer : PathFindingLayerInterface_Access) is
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

   procedure getPathsListFromCacheOnly (This : in out Waypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := Waypoint'Class (This).getPathsListFromCacheOnly (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListFromCacheOnly;

   procedure getPathsListRunnable (This : in out Waypoint; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := Waypoint'Class (This).getPathsListRunnable (geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsListRunnable;

   procedure getEndGeographicMapCellPosition (This : in out Waypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant GeographicMapCellPosition_Access := Waypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPosition;

   procedure createPaths (This : in out Waypoint; startGeographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant BasicArrayList_Access := Waypoint'Class (This).createPaths (startGeographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createPaths;

end org.allbinary.game.layer.waypoint.Waypoint_Package;


