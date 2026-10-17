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

   procedure onWaypointEvent (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
   begin
        null;
   end onWaypointEvent;

   procedure addWaypointFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
   begin
        null;
   end addWaypointFromBuilding;

   procedure addWaypointFromBuildingList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; list_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        null;
   end addWaypointFromBuildingList;

   procedure insertWaypoint (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
   begin
        null;
   end insertWaypoint;

   procedure insertWaypointList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String; list_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
   begin
        null;
   end insertWaypointList;

   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      pathsList : BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
   begin
        null;
   end setRandomGeographicMapCellHistoryList;

   procedure moveAwayFromBuilding (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end moveAwayFromBuilding;

   procedure needToMove (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior_Param : access WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior_Param);
   begin
        null;
   end needToMove;

   procedure setRandomGeographicMapCellHistory (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        null;
   end setRandomGeographicMapCellHistory;

   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; existingCurrentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; currentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingCurrentPathGeographicMapCellPosition_Param);
      currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentPathGeographicMapCellPosition_Param);
   begin
        null;
   end setCurrentPathGeographicMapCellPosition;

   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; existingNextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingNextUnvisitedPathGeographicMapCellPosition_Param);
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextUnvisitedPathGeographicMapCellPosition_Param);
   begin
        null;
   end setNextUnvisitedPathGeographicMapCellPosition;

begin
   null;
   instance := WaypointLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointLogHelper_Package;


