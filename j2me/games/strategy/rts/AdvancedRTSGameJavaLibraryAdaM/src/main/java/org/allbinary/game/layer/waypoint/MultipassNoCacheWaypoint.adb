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


package body org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package is

   procedure Initialize_Fields (This : in out MultipassNoCacheWaypoint'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out MultipassNoCacheWaypoint'Class; ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) is
      ownerLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (ownerLayer_Param);
      sound : constant Sound_Access := Sound_Access (sound_Param);
   begin
        WaypointBase_Package.Initialize (This, sound);
        Initialize_Fields (This);
        This.ownerLayer := ownerLayer;
   end Initialize;

   function Create (ownerLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class; sound_Param : access Sound_Package.Sound'Class) return MultipassNoCacheWaypoint_Access is
      This : constant MultipassNoCacheWaypoint_Access := new MultipassNoCacheWaypoint;
   begin
      MultipassNoCacheWaypoint_Package.Initialize (This.all, ownerLayer_Param, sound_Param);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out MultipassNoCacheWaypoint; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        WaypointBase (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
   end setAllBinaryGameLayerManager;

   procedure releaseCachedPaths (This : in out MultipassNoCacheWaypoint) is
   begin
        null;
   end releaseCachedPaths;

   --  throws Exception
   function getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingInfo_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      startGeographicMapCellPosition : GeographicMapCellPosition_Access;
      endGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      raceTrackGeographicMap : RaceTrackGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      customMapGenerator : CustomMapGenerator_Access;
      customMapArray : Integer_Array_Access_Array_Access;
      pathFindingInfo : PathFindingInfo_Access;
   begin
        startGeographicMapCellPosition := geographicMapCellPosition;
        endGeographicMapCellPosition := MultipassNoCacheWaypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition);
        if (endGeographicMapCellPosition) = (null) then
            return PathFindingInfo_Package.NULL_PATH_FINDING_INFO;
        end if;
        if (startGeographicMapCellPosition) = (endGeographicMapCellPosition) then
            if This.ownerLayer.shouldHandleStartSameAsEnd then
                return PathFindingInfo_Package.NULL_PATH_FINDING_INFO;
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
        return pathFindingInfo;
   end getPathFindingInfo;

   --  throws Exception
   function getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      multipassState : constant MultipassState_Access := MultipassState_Access (multipassState_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      list : BasicArrayList_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            if (pathFindingInfo) = (null) then
                This.logUtil.putF (To_Unbounded_String ("pathFindingInfo: ") & Java_Image (pathFindingInfo), MultipassNoCacheWaypoint_Access'(This'Unchecked_Access), To_Unbounded_String ("getPathsList"));
                return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
            end if;
            geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (This.allBinaryGameLayerManagerP);
            geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
            list := PathGenerator_Package.getInstance.createN (geographicMapInterface, pathFindingInfo, 2, multipassState);
            if ((list) /= (null)) and then ((list) /= (BasicArrayListUtil_Package.getInstance.getImmutableInstance)) then
                if (list.size) < (1) then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Path may have been cleared by clearing caching")));
                end if;
                return list;
            end if;
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, MultipassNoCacheWaypoint_Access'(This'Unchecked_Access), To_Unbounded_String ("getPathsList"), e);
            return BasicArrayListUtil_Package.getInstance.getImmutableInstance;
                end;
        end;
   end getPathsList;

   --  throws Exception
   function getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
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

   procedure onEvent (This : in out MultipassNoCacheWaypoint; eventObject_Param : access AllBinaryEventObject_Package.AllBinaryEventObject'Class) is
      eventObject : constant AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, MultipassNoCacheWaypoint_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onBuildingEvent (This : in out MultipassNoCacheWaypoint; event_Param : access RTSLayerEvent_Package.RTSLayerEvent'Class) is
      event : constant RTSLayerEvent_Access := RTSLayerEvent_Access (event_Param);
   begin
        null;
   end onBuildingEvent;

   procedure reset (This : in out MultipassNoCacheWaypoint) is
   begin
        MultipassNoCacheWaypoint'Class (This).getConnectedWaypointList.clear;
   end reset;

   --  throws Exception
   procedure visit (This : in out MultipassNoCacheWaypoint; unitLayer_Param : access PathFindingLayerInterface_Package.PathFindingLayerInterface'Class) is
      unitLayer : constant PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (unitLayer_Param);
      size : Integer;
      unitWaypointBehavior : UnitWaypointBehavior_Access;
      rtsLayer : CollidableDestroyableDamageableLayer_Access;
   begin
        if (unitLayer.getGroupInterface (0)) /= (This.ownerLayer.getGroupInterface (0)) then
            return;
        end if;
        size := MultipassNoCacheWaypoint'Class (This).getConnectedWaypointList.size;
        if (size) > (0) then
            unitWaypointBehavior := UnitWaypointBehavior_Access (unitLayer.getWaypointBehavior);
            while (MultipassNoCacheWaypoint'Class (This).getConnectedWaypointList.size) > (0) loop
                rtsLayer := CollidableDestroyableDamageableLayer_Access (MultipassNoCacheWaypoint'Class (This).getConnectedWaypointList.get (0));
                if rtsLayer.isDestroyed then
                    MultipassNoCacheWaypoint'Class (This).getConnectedWaypointList.remove (rtsLayer);
                else
                    unitLayer.handleCost (This.ownerLayer);
                    unitWaypointBehavior.insertWaypoint (0, rtsLayer);
                    exit;
                end if;
            end loop;
        end if;
   end visit;

   procedure getPathFindingInfo (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant PathFindingInfo_Access := MultipassNoCacheWaypoint'Class (This).getPathFindingInfo (geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathFindingInfo;

   procedure getPathsList (This : in out MultipassNoCacheWaypoint; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) is
      Java_Result : constant BasicArrayList_Access := MultipassNoCacheWaypoint'Class (This).getPathsList (geographicMapCellPosition_Param, pathFindingInfo_Param, multipassState_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPathsList;

   procedure getEndGeographicMapCellPosition (This : in out MultipassNoCacheWaypoint; startGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := MultipassNoCacheWaypoint'Class (This).getEndGeographicMapCellPosition (startGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getEndGeographicMapCellPosition;

end org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint_Package;


