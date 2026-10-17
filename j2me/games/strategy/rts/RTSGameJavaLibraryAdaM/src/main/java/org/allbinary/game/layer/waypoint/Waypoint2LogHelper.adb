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

   procedure initRange (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; closeRange : Integer; sensorRange : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end initRange;

   procedure processPossibleTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface'Class; anotherTargetDistance : Integer; isShorterThanCurrentTargetDistance : Boolean; isCurrentTargetDestroyed : Boolean) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      layerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        null;
   end processPossibleTarget;

   procedure processSetTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      layerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        null;
   end processSetTarget;

   procedure processPossibleTargetCloser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      layerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        null;
   end processPossibleTargetCloser;

   procedure setTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; layerInterface_Param : access PathFindingLayerInterface'Class; anotherTargetDistance : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      layerInterface : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (layerInterface_Param);
   begin
        null;
   end setTarget;

   procedure setTargetPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end setTargetPath;

   procedure setTargetPathIgnoreNewPath (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
   begin
        null;
   end setTargetPathIgnoreNewPath;

   procedure processWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; targetLayer_Param : access PathFindingLayerInterface'Class; size : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      targetLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (targetLayer_Param);
   begin
        null;
   end processWaypoint;

   procedure processWaypointTracked (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
   begin
        null;
   end processWaypointTracked;

   procedure processWaypointTrackedVisit (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        null;
   end processWaypointTrackedVisit;

   procedure processWaypointTrackedWithoutProgress (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; reason : Unbounded_String) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end processWaypointTrackedWithoutProgress;

   procedure wander (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end wander;

   procedure targetDestroyed (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end targetDestroyed;

   procedure processTargeting (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; dx : Integer; dy : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end processTargeting;

   procedure processTargetingNonWayPoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; dx : Integer; dy : Integer) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end processTargetingNonWayPoint;

   procedure removeWaypoint (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; waypointLayer_Param : access PathFindingLayerInterface'Class; reason : Unbounded_String) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      waypointLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (waypointLayer_Param);
   begin
        null;
   end removeWaypoint;

   procedure removeWaypointList (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior2_Param : access WaypointBehaviorBase'Class; list_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior2 : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior2_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        null;
   end removeWaypointList;

   procedure removeWaypointClear (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end removeWaypointClear;

   procedure clearTarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end clearTarget;

   procedure addWaypointFromUser (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
   begin
        null;
   end addWaypointFromUser;

   procedure targetMovedSoRetarget (This : in out Waypoint2LogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end targetMovedSoRetarget;

begin
   null;
   instance := Waypoint2LogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.Waypoint2LogHelper_Package;


