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


package body org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package is

   procedure Initialize_Fields (This : in out Waypoint2LogHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out Waypoint2LogHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return Waypoint2LogHelper_Access is
      This : constant Waypoint2LogHelper_Access := new Waypoint2LogHelper;
   begin
      Waypoint2LogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return Waypoint2LogHelper_Access is
   begin
        return Waypoint2LogHelper_Package.instance;
   end getInstance;

   procedure initRange (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; closeRange : Integer; sensorRange : Integer) is
   begin
        null;
   end initRange;

   procedure processPossibleTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean) is
   begin
        null;
   end processPossibleTarget;

   procedure processSetTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
   begin
        null;
   end processSetTarget;

   procedure processPossibleTargetCloser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
   begin
        null;
   end processPossibleTargetCloser;

   procedure setTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; layerInterface : PathFindingLayerInterface_Access; anotherTargetDistance : Integer) is
   begin
        null;
   end setTarget;

   procedure setTargetPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end setTargetPath;

   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access) is
   begin
        null;
   end setTargetPathIgnoreNewPath;

   procedure processWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; targetLayer : PathFindingLayerInterface_Access; size : Integer) is
   begin
        null;
   end processWaypoint;

   procedure processWaypointTracked (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access) is
   begin
        null;
   end processWaypointTracked;

   procedure processWaypointTrackedVisit (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end processWaypointTrackedVisit;

   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; reason : Unbounded_String) is
   begin
        null;
   end processWaypointTrackedWithoutProgress;

   procedure wander (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end wander;

   procedure targetDestroyed (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end targetDestroyed;

   procedure processTargeting (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer) is
   begin
        null;
   end processTargeting;

   procedure processTargetingNonWayPoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; dx : Integer; dy : Integer) is
   begin
        null;
   end processTargetingNonWayPoint;

   procedure removeWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; waypointLayer : PathFindingLayerInterface_Access; reason : Unbounded_String) is
   begin
        null;
   end removeWaypoint;

   procedure removeWaypointList (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior2 : WaypointBehaviorBase_Access; list : BasicArrayList_Access) is
   begin
        null;
   end removeWaypointList;

   procedure removeWaypointClear (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end removeWaypointClear;

   procedure clearTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end clearTarget;

   procedure addWaypointFromUser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end addWaypointFromUser;

   procedure targetMovedSoRetarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end targetMovedSoRetarget;

begin
   null;
   instance := Waypoint2LogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;


