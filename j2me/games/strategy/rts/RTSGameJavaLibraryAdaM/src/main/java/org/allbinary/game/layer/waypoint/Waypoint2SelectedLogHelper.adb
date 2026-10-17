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


package body org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package is

   procedure Initialize_Fields (This : in out Waypoint2SelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.positionStrings := PositionStrings_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
      This.ENEMY_POSSIBLE_TARGET := To_Unbounded_String (" Enemy Possible Target: ");
      This.CLOSE_RANGE := To_Unbounded_String ("closeRange: ");
      This.SENSOR_RANGE := To_Unbounded_String (" sensorRange: ");
      This.ONLY_TARGETS := To_Unbounded_String (" Only Targets: ");
      This.SHORTER_THAN_CURRENT_TARGET_DISTANCE := To_Unbounded_String (" isShorterThanCurrentTargetDistance: ");
      This.CURRENT_TARGET_DESTROYED := To_Unbounded_String (" isCurrentTargetDestroyed: ");
      This.CURRENT_TARGET_NOT_AVAILABLE := To_Unbounded_String (" isCurrentTargetNotAvailable: ");
      This.PROCESS_POSSIBLE_TARGET := To_Unbounded_String ("selected: processPossibleTarget1");
   end Initialize_Fields;

   procedure Initialize (This : in out Waypoint2SelectedLogHelper'Class) is
   begin
      Waypoint2LogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return Waypoint2SelectedLogHelper_Access is
      This : constant Waypoint2SelectedLogHelper_Access := new Waypoint2SelectedLogHelper;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return Waypoint2LogHelper_Access is
   begin
        return Waypoint2SelectedLogHelper_Package.instanceC;
   end getInstance;

   procedure initRange (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; closeRange : Integer; sensorRange : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.CLOSE_RANGE);
        stringBuffer.appendint (closeRange);
        stringBuffer.append (This.SENSOR_RANGE);
        stringBuffer.appendint (sensorRange);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: initRange"));
   end initRange;

   procedure processPossibleTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean) is
      stringBuffer : StringMaker_Access;
   begin
        if (waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets) and then (waypointBehaviorBase.isInSensorRange (CollidableDestroyableDamageableLayer_Access (layerInterface), anotherTargetDistance)) then
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
            stringBuffer.append (This.ONLY_TARGETS);
            stringBuffer.appendboolean (waypointBehaviorBase.isWaypointListEmptyOrOnlyTargets);
            stringBuffer.append (This.SHORTER_THAN_CURRENT_TARGET_DISTANCE);
            stringBuffer.appendboolean (isShorterThanCurrentTargetDistance);
            stringBuffer.append (This.CURRENT_TARGET_DESTROYED);
            stringBuffer.appendboolean (isCurrentTargetDestroyed);
            stringBuffer.append (This.CURRENT_TARGET_NOT_AVAILABLE);
            stringBuffer.appendboolean (((waypointBehaviorBase.getCurrentTargetLayerInterface) = (null)));
            This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, This.PROCESS_POSSIBLE_TARGET);
        end if;
   end processPossibleTarget;

   procedure processSetTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        stringBuffer.append (This.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" anotherTargetDistance: "));
        stringBuffer.appendint (anotherTargetDistance);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processPossibleTarget2"));
   end processSetTarget;

   procedure processPossibleTargetCloser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        stringBuffer.append (This.ENEMY_POSSIBLE_TARGET);
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" anotherTargetDistance: "));
        stringBuffer.appendint (anotherTargetDistance);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processPossibleTarget3"));
   end processPossibleTargetCloser;

   procedure setTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointBehaviorBase.getName);
        stringBuffer.append (To_Unbounded_String (" targeting: "));
        stringBuffer.append (layerInterface.getName);
        stringBuffer.append (To_Unbounded_String (" at: "));
        stringBuffer.appendint (anotherTargetDistance);
        stringBuffer.append (To_Unbounded_String (" instead of: "));
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetingStateString);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: setTarget"));
   end setTarget;

   procedure setTargetPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Target Destroyed"), This'Unchecked_Access, To_Unbounded_String ("selected: setTargetPath"));
   end setTargetPath;

   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Set Path To Target: "));
        stringBuffer.append (waypointBehaviorBase.getCurrentTargetLayerInterface.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentTargetLayerInterface));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: setTargetPath"));
   end setTargetPathIgnoreNewPath;

   procedure processWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access; targetLayer : PathFindingLayerInterface_Access; size : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Size: "));
        stringBuffer.appendint (size);
        stringBuffer.append (To_Unbounded_String (" Waypoint: "));
        stringBuffer.append (targetLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Target: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentTargetLayerInterface));
        stringBuffer.append (To_Unbounded_String (" isTrackingWaypoint: "));
        stringBuffer.appendboolean (waypointBehaviorBase.isTrackingWaypoint);
        stringBuffer.append (To_Unbounded_String (" WaypointOverridesAttacking: "));
        stringBuffer.appendboolean (waypointBehaviorBase.isWaypointOverridesAttacking);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processWaypoint"));
   end processWaypoint;

   procedure processWaypointTracked (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; waypointBehaviorBase : WaypointBehaviorBase_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" currentPathGeographicMapCellPosition: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentPathGeographicMapCellPosition));
        stringBuffer.append (To_Unbounded_String (" nextUnvisitedPathGeographicMapCellPosition: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getNextUnvisitedPathGeographicMapCellPosition));
        stringBuffer.append (To_Unbounded_String (" Tracked: "));
        stringBuffer.append (This.stringUtil.toString (waypointBehaviorBase.getCurrentGeographicMapCellHistory.getTracked));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processWaypoint"));
   end processWaypointTracked;

   procedure processWaypointTrackedVisit (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Visited: "));
        stringBuffer.append (This.stringUtil.toString (geographicMapCellPosition));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processWaypoint"));
   end processWaypointTrackedVisit;

   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; reason : Unbounded_String) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (reason).toString, This'Unchecked_Access, To_Unbounded_String ("turnTo"));
   end processWaypointTrackedWithoutProgress;

   procedure wander (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (associatedAdvancedRTSGameLayer.getName, This'Unchecked_Access, To_Unbounded_String ("wander"));
   end wander;

   procedure targetDestroyed (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Target Destroyed")).toString, This'Unchecked_Access, To_Unbounded_String ("selected: processTargeting"));
   end targetDestroyed;

   procedure processTargeting (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processTargeting"));
   end processTargeting;

   procedure processTargetingNonWayPoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Targeting Non Waypoint "));
        stringBuffer.append (This.positionStrings.DX_LABEL);
        stringBuffer.appendint (dx);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (This.positionStrings.DY_LABEL);
        stringBuffer.appendint (dy);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: processTargeting"));
   end processTargetingNonWayPoint;

   procedure removeWaypoint (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; waypointLayer : PathFindingLayerInterface_Access; reason : Unbounded_String) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (unitWaypointBehavior2.getName);
        stringBuffer.append (To_Unbounded_String (" remove: "));
        stringBuffer.append (waypointLayer.getName);
        stringBuffer.append (To_Unbounded_String (" because: "));
        stringBuffer.append (reason);
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypoint;

   procedure removeWaypointList (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; list : BasicArrayList_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (unitWaypointBehavior2.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypointList;

   procedure removeWaypointClear (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Clearing removed waypoint")).toString, This'Unchecked_Access, To_Unbounded_String ("selected: removeWaypoint"));
   end removeWaypointClear;

   procedure clearTarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Cleared Target")).toString, This'Unchecked_Access, To_Unbounded_String ("selected: clearTarget"));
   end clearTarget;

   procedure addWaypointFromUser (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Adding Waypoint to Selected: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (advancedRTSGameLayer.getParentLayer) /= (null) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromUser;

   procedure targetMovedSoRetarget (This : in out Waypoint2SelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" - target moved so retargeting")).toString, This'Unchecked_Access, To_Unbounded_String ("turnTo"));
   end targetMovedSoRetarget;

   procedure getInstance is
      Java_Result : constant Waypoint2LogHelper_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instanceC := Waypoint2SelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper_Package;


