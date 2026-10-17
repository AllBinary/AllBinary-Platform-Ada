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


package body org.allbinary.game.layer.waypoint.WaypointLogHelper_Package is

   procedure Initialize_Fields (This : in out WaypointLogHelper'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointLogHelper'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointLogHelper_Access is
      This : constant WaypointLogHelper_Access := new WaypointLogHelper;
   begin
      WaypointLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointLogHelper_Access is
   begin
        return WaypointLogHelper_Package.instance;
   end getInstance;

   procedure onWaypointEvent (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end onWaypointEvent;

   procedure addWaypointFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end addWaypointFromBuilding;

   procedure addWaypointFromBuildingList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access; list : BasicArrayList_Access) is
   begin
        null;
   end addWaypointFromBuildingList;

   procedure insertWaypoint (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String) is
   begin
        null;
   end insertWaypoint;

   procedure insertWaypointList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String; list : BasicArrayList_Access) is
   begin
        null;
   end insertWaypointList;

   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access) is
   begin
        null;
   end setRandomGeographicMapCellHistoryList;

   procedure moveAwayFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end moveAwayFromBuilding;

   procedure needToMove (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior : WaypointBehaviorBase_Access) is
   begin
        null;
   end needToMove;

   procedure setRandomGeographicMapCellHistory (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        null;
   end setRandomGeographicMapCellHistory;

   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access; currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end setCurrentPathGeographicMapCellPosition;

   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end setNextUnvisitedPathGeographicMapCellPosition;

begin
   null;
   instance := WaypointLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;


