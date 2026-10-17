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


package body org.allbinary.game.layer.unit.UnitWaypointBehavior_Package is

   procedure Initialize_Fields (This : in out UnitWaypointBehavior'Class) is
   begin
      null;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.longWeaponRange := 0;
      This.sensorAction := SensorActionFactory_Package.getInstance.ATTACK;
      
      
      This.lastPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.currentPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      
      
      
      
      This.moving := False;
      This.movingFromStopped := False;
      This.waypointPathsListP := BasicArrayListUtil_Package.getInstance.getImmutableInstance;
      This.currentTargetDistance := Integer_Package.MAX_VALUE;
      This.currentTargetLayerInterfaceP := CollidableDestroyableDamageableLayer_Package.getNullInstance;
      This.trackingWaypoint := False;
      This.repeatedToLong := TimeDelayHelper_Package.Create (22000);
   end Initialize_Fields;


   procedure Initialize (This : in out UnitWaypointBehavior'Class; associatedAdvancedRTSGameLayer_Param : access UnitLayer'Class; fakeWaypoint_Param : access CollidableDestroyableDamageableLayer'Class) is
      associatedAdvancedRTSGameLayer : UnitLayer_Access := UnitLayer_Access (associatedAdvancedRTSGameLayer_Param);
      fakeWaypoint : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (fakeWaypoint_Param);
   begin
      WaypointBehaviorBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.associatedAdvancedRTSGameLayer := associatedAdvancedRTSGameLayer;
        This.completeTimeDelayHelper := TimeDelayHelper_Package.Create (30000);
        This.targetList := BasicArrayListD_Package.Create;
        This.possibleTargetList := BasicArrayListD_Package.Create;
        This.setWaypointPathsList (BasicArrayListUtil_Package.getInstance.getImmutableInstance);
        This.currentGeographicMapCellHistoryP := GeographicMapCellHistory_Package.Create;
        This.FAKE_WAYPOINT_LAYER := fakeWaypoint;
   end Initialize;

   function Create (associatedAdvancedRTSGameLayer_Param : access UnitLayer'Class; fakeWaypoint_Param : access CollidableDestroyableDamageableLayer'Class) return UnitWaypointBehavior_Access is
      This : constant UnitWaypointBehavior_Access := new UnitWaypointBehavior;
   begin
      UnitWaypointBehavior_Package.Initialize (This.all, associatedAdvancedRTSGameLayer_Param, fakeWaypoint_Param);
      return This;
   end Create;

   procedure initRange (This : in out UnitWaypointBehavior; weaponRange : Integer) is
   begin
        This.longWeaponRange := (weaponRange) / (2);
   end initRange;

   procedure onEvent (This : in out UnitWaypointBehavior; eventObject_Param : access AllBinaryEventObject'Class) is
      eventObject : AllBinaryEventObject_Access := AllBinaryEventObject_Access (eventObject_Param);
   begin
        ForcedLogUtil_Package.log (EventStrings_Package.getInstance.PERFORMANCE_MESSAGE, UnitWaypointBehavior_Access'(This'Unchecked_Access));
   end onEvent;

   --  throws Exception
   procedure onWaypointEvent (This : in out UnitWaypointBehavior; event_Param : access RTSLayerEvent'Class) is
      event : RTSLayerEvent_Access := RTSLayerEvent_Access (event_Param);
      advancedRTSGameLayer : AdvancedRTSGameLayer_Access;
   begin
        advancedRTSGameLayer := AdvancedRTSGameLayer_Access (event.getRtsLayer);
        This.associatedAdvancedRTSGameLayer.waypointLogHelperP.onWaypointEvent (This.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
        if This.associatedAdvancedRTSGameLayer.isSelected then
            This.addWaypointFromUser (advancedRTSGameLayer);
        elsif advancedRTSGameLayer.shouldAddWaypointFromBuilding then
            This.addWaypointFromBuilding (advancedRTSGameLayer);
        end if;
   end onWaypointEvent;

   --  throws Exception
   procedure addWaypointFromUser (This : in out UnitWaypointBehavior; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer'Class) is
      advancedRTSGameLayer : AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (advancedRTSGameLayer_Param);
   begin
        null;
   end addWaypointFromUser;

   --  throws Exception
   procedure addWaypointFromBuilding (This : in out UnitWaypointBehavior; advancedRTSGameLayer_Param : access AdvancedRTSGameLayer'Class) is
      advancedRTSGameLayer : AdvancedRTSGameLayer_Access := AdvancedRTSGameLayer_Access (advancedRTSGameLayer_Param);
   begin
        if ((advancedRTSGameLayer) = (PrimaryWaypointHelper_Package.getInstance.getWaypointLayer)) or else ((advancedRTSGameLayer.getParentLayer) = (This.associatedAdvancedRTSGameLayer.getParentLayer)) then
            if not (This.targetList.contains (advancedRTSGameLayer)) then
                This.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuilding (This.associatedAdvancedRTSGameLayer, advancedRTSGameLayer);
                if advancedRTSGameLayer.isDestroyed then
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Trying to add a dead: ") & Java_Image (advancedRTSGameLayer)));
                end if;
                This.targetList.add (advancedRTSGameLayer);
                This.associatedAdvancedRTSGameLayer.waypointLogHelperP.addWaypointFromBuildingList (This.associatedAdvancedRTSGameLayer, advancedRTSGameLayer, This.targetList);
            end if;
        end if;
   end addWaypointFromBuilding;

   function isWaypointListEmptyOrOnlyTargets (This : in out UnitWaypointBehavior) return Boolean is
   begin
        return False;
   end isWaypointListEmptyOrOnlyTargets;

   --  throws Exception
   function insertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class) return Boolean is
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
   begin
        if This.canInsertWaypoint (index, rtsLayer) then
            This.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypoint (This.associatedAdvancedRTSGameLayer, index, rtsLayer, This.getName);
            if rtsLayer.isDestroyed then
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Trying to add a dead: ") & Java_Image (rtsLayer)));
            end if;
            This.targetList.addAt (index, rtsLayer);
            This.associatedAdvancedRTSGameLayer.waypointLogHelperP.insertWaypointList (This.associatedAdvancedRTSGameLayer, index, rtsLayer, This.getName, This.targetList);
            return True;
        end if;
        return False;
   end insertWaypoint;

   procedure move (This : in out UnitWaypointBehavior) is
   begin
        if This.isMoving then
            This.setMovingFromStopped (False);
        else
            This.setMovingFromStopped (True);
        end if;
        This.setMoving (False);
   end move;

   --  throws Exception
   procedure setRandomGeographicMapCellHistory (This : in out UnitWaypointBehavior; pathsList_Param : access BasicArrayList'Class) is
      pathsList : BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
      size : Integer;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        size := pathsList.size;
        This.associatedAdvancedRTSGameLayer.waypointLogHelperP.setRandomGeographicMapCellHistoryList (This.associatedAdvancedRTSGameLayer, pathsList);
        if (size) > (0) then
            geographicMapCellPositionBasicArrayList := BasicArrayList_Access (BasicArrayListUtil_Package.getInstance.getRandom (pathsList));
            This.setGeographicMapCellHistoryPath (geographicMapCellPositionBasicArrayList);
        end if;
   end setRandomGeographicMapCellHistory;

   --  throws Exception
   procedure setGeographicMapCellHistoryPath (This : in out UnitWaypointBehavior; geographicMapCellPositionBasicArrayList_Param : access BasicArrayList'Class) is
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionBasicArrayList_Param);
   begin
        This.lastPathGeographicMapCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
        if This.associatedAdvancedRTSGameLayer.showMoreCaptionStates then
            This.associatedAdvancedRTSGameLayer.getCaptionAnimationHelper.update (UnitWaypointBehavior_Package.PATHING, BasicColorFactory_Package.getInstance.GREEN);
        end if;
        This.currentGeographicMapCellHistoryP.init;
        This.associatedAdvancedRTSGameLayer.init (This.currentGeographicMapCellHistoryP, geographicMapCellPositionBasicArrayList);
        This.setTrackingWaypoint (True);
        This.getCompleteTimeDelayHelper.setStartTimeTNT;
   end setGeographicMapCellHistoryPath;

   function canInsertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class) return Boolean is
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
   begin
        if (This.targetList.size) > (4) then
            null;
        elsif This.targetList.contains (rtsLayer) then
            null;
        else
            return True;
        end if;
        return False;
   end canInsertWaypoint;

   --  throws Exception
   procedure addBuildingChase (This : in out UnitWaypointBehavior; allbinaryLayer_Param : access AllBinaryLayer'Class; cellPosition_Param : access GeographicMapCellPosition'Class) is
      allbinaryLayer : AllBinaryLayer_Access := AllBinaryLayer_Access (allbinaryLayer_Param);
      cellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        null;
   end addBuildingChase;

   --  throws Exception
   procedure moveAwayFromBuilding (This : in out UnitWaypointBehavior; buildingLayer_Param : access BuildingLayer'Class) is
      buildingLayer : BuildingLayer_Access := BuildingLayer_Access (buildingLayer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      list : BasicArrayList_Access;
      pathsList : BasicArrayList_Access;
   begin
        geographicMapCellPosition := This.associatedAdvancedRTSGameLayer.getCurrentGeographicMapCellPosition;
        list := buildingLayer.geographicMapCellPositionAreaBase.getOccupyingGeographicMapCellPositionList;
        if list.contains (geographicMapCellPosition) then
            if This.insertWaypoint (0, This.FAKE_WAYPOINT_LAYER) then
                This.associatedAdvancedRTSGameLayer.waypointLogHelperP.moveAwayFromBuilding (This.associatedAdvancedRTSGameLayer);
                This.setCurrentTargetLayerInterface (CollidableDestroyableDamageableLayer_Access (This.FAKE_WAYPOINT_LAYER));
                pathsList := buildingLayer.getMoveOutOfBuildAreaPath (geographicMapCellPosition);
                This.associatedAdvancedRTSGameLayer.setClosestGeographicMapCellHistory (pathsList);
            end if;
        end if;
   end moveAwayFromBuilding;

   function needToMove (This : in out UnitWaypointBehavior) return Boolean is
      message : Unbounded_String;
   begin
        This.associatedAdvancedRTSGameLayer.waypointLogHelperP.needToMove (This.associatedAdvancedRTSGameLayer, UnitWaypointBehavior_Access'(This'Unchecked_Access));
        if ((This.isTrackingWaypoint) or else ((This.sensorAction) = (SensorActionFactory_Package.getInstance.EVADE))) or else ((((This.currentTargetLayerInterfaceP) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance)) and then ((This.getCurrentTargetDistance) >= ((This.longWeaponRange) + (This.currentTargetLayerInterfaceP.getHalfHeight))))) then
            This.repeatedToLong.setStartTimeTNT;
            return True;
        end if;
        if This.repeatedToLong.isTimeTNT then
            message := To_Unbounded_String ("Repeating too long: ") & Java_Image (This.getMovementLogicAsString);
            ForcedLogUtil_Package.log (message, This.associatedAdvancedRTSGameLayer);
        end if;
        return False;
   end needToMove;

   function getMovementLogicAsString (This : in out UnitWaypointBehavior) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("isTrackingWaypoint: "));
        stringBuffer.appendboolean (This.isTrackingWaypoint);
        stringBuffer.append (To_Unbounded_String (" sensorAction: "));
        stringBuffer.append (This.sensorAction.name);
        stringBuffer.append (To_Unbounded_String (" getCurrentTargetLayerInterface: "));
        stringBuffer.append (StringUtil_Package.getInstance.toString (This.currentTargetLayerInterfaceP));
        if (This.currentTargetLayerInterfaceP) /= (CollidableDestroyableDamageableLayer_Package.getNullInstance) then
            stringBuffer.append (To_Unbounded_String (" Target Range: "));
            stringBuffer.appendint (This.getCurrentTargetDistance);
            stringBuffer.append (To_Unbounded_String (" >= "));
            stringBuffer.appendint (Integer ((This.longWeaponRange) + (This.currentTargetLayerInterfaceP.getHalfHeight)));
        end if;
        return stringBuffer.toString;
   end getMovementLogicAsString;

   function isMovingFromStopped (This : in out UnitWaypointBehavior) return Boolean is
   begin
        return This.movingFromStopped;
   end isMovingFromStopped;

   procedure setMovingFromStopped (This : in out UnitWaypointBehavior; movingFromStopped : Boolean) is
   begin
        This.movingFromStopped := movingFromStopped;
   end setMovingFromStopped;

   procedure setWaypointPathsList (This : in out UnitWaypointBehavior; waypointPathsList_Param : access BasicArrayList'Class) is
      waypointPathsList : BasicArrayList_Access := BasicArrayList_Access (waypointPathsList_Param);
   begin
        This.waypointPathsListP := waypointPathsList;
   end setWaypointPathsList;

   function getWaypointPathsList (This : in out UnitWaypointBehavior) return BasicArrayList_Access is
   begin
        return This.waypointPathsListP;
   end getWaypointPathsList;

   function isMoving (This : in out UnitWaypointBehavior) return Boolean is
   begin
        return This.moving;
   end isMoving;

   procedure setMoving (This : in out UnitWaypointBehavior; moving : Boolean) is
   begin
        This.moving := moving;
   end setMoving;

   function isTrackingWaypoint (This : in out UnitWaypointBehavior) return Boolean is
   begin
        return This.trackingWaypoint;
   end isTrackingWaypoint;

   function getPossibleTargetList (This : in out UnitWaypointBehavior) return BasicArrayList_Access is
   begin
        return This.possibleTargetList;
   end getPossibleTargetList;

   procedure setLastPathGeographicMapCellPosition (This : in out UnitWaypointBehavior; lastPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      lastPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (lastPathGeographicMapCellPosition_Param);
   begin
        This.lastPathGeographicMapCellPosition := lastPathGeographicMapCellPosition;
   end setLastPathGeographicMapCellPosition;

   function getLastPathGeographicMapCellPosition (This : in out UnitWaypointBehavior) return GeographicMapCellPosition_Access is
   begin
        return This.lastPathGeographicMapCellPosition;
   end getLastPathGeographicMapCellPosition;

   procedure setCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior; currentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentPathGeographicMapCellPosition_Param);
   begin
        This.currentPathGeographicMapCellPosition := currentPathGeographicMapCellPosition;
   end setCurrentPathGeographicMapCellPosition;

   function getCurrentPathGeographicMapCellPosition (This : in out UnitWaypointBehavior) return GeographicMapCellPosition_Access is
   begin
        return This.currentPathGeographicMapCellPosition;
   end getCurrentPathGeographicMapCellPosition;

   procedure setSensorAction (This : in out UnitWaypointBehavior; sensorAction_Param : access SensorAction'Class) is
      sensorAction : SensorAction_Access := SensorAction_Access (sensorAction_Param);
   begin
        This.sensorAction := sensorAction;
   end setSensorAction;

   function getSensorAction (This : in out UnitWaypointBehavior) return SensorAction_Access is
   begin
        return This.sensorAction;
   end getSensorAction;

   procedure setCurrentTargetLayerInterface (This : in out UnitWaypointBehavior; currentTargetLayerInterface_Param : access CollidableDestroyableDamageableLayer'Class) is
      currentTargetLayerInterface : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (currentTargetLayerInterface_Param);
   begin
        This.currentTargetLayerInterfaceP := currentTargetLayerInterface;
   end setCurrentTargetLayerInterface;

   function getCurrentTargetLayerInterface (This : in out UnitWaypointBehavior) return CollidableDestroyableDamageableLayer_Access is
   begin
        return This.currentTargetLayerInterfaceP;
   end getCurrentTargetLayerInterface;

   procedure setCurrentTargetDistance (This : in out UnitWaypointBehavior; currentTargetDistance : Integer) is
   begin
        This.currentTargetDistance := currentTargetDistance;
   end setCurrentTargetDistance;

   function getCurrentTargetDistance (This : in out UnitWaypointBehavior) return Integer is
   begin
        return This.currentTargetDistance;
   end getCurrentTargetDistance;

   function getCompleteTimeDelayHelper (This : in out UnitWaypointBehavior) return TimeDelayHelper_Access is
   begin
        return This.completeTimeDelayHelper;
   end getCompleteTimeDelayHelper;

   function getCurrentGeographicMapCellHistory (This : in out UnitWaypointBehavior) return GeographicMapCellHistory_Access is
   begin
        return This.currentGeographicMapCellHistoryP;
   end getCurrentGeographicMapCellHistory;

   procedure setTrackingWaypoint (This : in out UnitWaypointBehavior; trackingWaypoint : Boolean) is
   begin
        This.trackingWaypoint := trackingWaypoint;
   end setTrackingWaypoint;

   procedure insertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class) is
      Java_Result : constant Boolean := UnitWaypointBehavior'Class (This).insertWaypoint (index, rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end insertWaypoint;

   procedure canInsertWaypoint (This : in out UnitWaypointBehavior; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class) is
      Java_Result : constant Boolean := UnitWaypointBehavior'Class (This).canInsertWaypoint (index, rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end canInsertWaypoint;

begin
   null;
   PATHING := To_Unbounded_String ("Pathing");

end org.allbinary.game.layer.unit.UnitWaypointBehavior_Package;


