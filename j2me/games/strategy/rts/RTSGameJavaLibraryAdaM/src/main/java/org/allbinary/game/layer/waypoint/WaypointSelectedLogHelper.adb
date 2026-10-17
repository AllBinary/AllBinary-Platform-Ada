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


package body org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package is

   procedure Initialize_Fields (This : in out WaypointSelectedLogHelper'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonSeps := CommonSeps_Package.getInstance;
      This.stringUtil := StringUtil_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out WaypointSelectedLogHelper'Class) is
   begin
      WaypointLogHelper_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return WaypointSelectedLogHelper_Access is
      This : constant WaypointSelectedLogHelper_Access := new WaypointSelectedLogHelper;
   begin
      WaypointSelectedLogHelper_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return WaypointSelectedLogHelper_Access is
   begin
        return WaypointSelectedLogHelper_Package.instanceC;
   end getInstance;

   procedure onWaypointEvent (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" onWaypointEvent: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (advancedRTSGameLayer.getParentLayer) /= (null) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("onWaypointEvent"));
   end onWaypointEvent;

   procedure addWaypointFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Adding Waypoint: "));
        stringBuffer.append (advancedRTSGameLayer.getName);
        if (advancedRTSGameLayer.getParentLayer) /= (null) then
            stringBuffer.append (To_Unbounded_String (" With Parent: "));
            stringBuffer.append (advancedRTSGameLayer.getParentLayer.getName);
        end if;
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuilding;

   procedure addWaypointFromBuildingList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; advancedRTSGameLayer : PathFindingLayerInterface_Access; list : BasicArrayList_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuildingList;

   procedure insertWaypoint (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointName);
        stringBuffer.append (To_Unbounded_String (" Insert: "));
        stringBuffer.append (rtsLayer.getName);
        stringBuffer.append (To_Unbounded_String (" for Waypoint: "));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypoint;

   procedure insertWaypointList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; index : Integer; rtsLayer : CollidableDestroyableDamageableLayer_Access; waypointName : Unbounded_String; list : BasicArrayList_Access) is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointName);
        stringBuffer.append (To_Unbounded_String (" Insert: "));
        stringBuffer.append (rtsLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypointList;

   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; pathsList : BasicArrayList_Access) is
      size : Integer;
      stringBuffer : StringMaker_Access;
   begin
        size := pathsList.size;
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (CommonLabels_Package.getInstance.START);
        stringBuffer.appendint (size);
        stringBuffer.append (To_Unbounded_String (" -> "));
        stringBuffer.append (This.stringUtil.toString (pathsList));
        This.logUtil.putF (stringBuffer.toString, This'Unchecked_Access, To_Unbounded_String ("selected: setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistoryList;

   procedure moveAwayFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Trying to move away from building")).toString, This'Unchecked_Access, To_Unbounded_String ("selected: moveAwayFromBuilding"));
   end moveAwayFromBuilding;

   procedure needToMove (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; unitWaypointBehavior : WaypointBehaviorBase_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (unitWaypointBehavior.getMovementLogicAsString).toString, This'Unchecked_Access, To_Unbounded_String ("needToMove"));
   end needToMove;

   procedure setRandomGeographicMapCellHistory (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" pathsList is null")).toString, This'Unchecked_Access, To_Unbounded_String ("setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistory;

   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access; currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        if (existingCurrentPathGeographicMapCellPosition) = (null) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" currentPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (currentPathGeographicMapCellPosition)).toString, This'Unchecked_Access, To_Unbounded_String ("setCurrentPathGeographicMapCellPosition"));
        end if;
   end setCurrentPathGeographicMapCellPosition;

   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access; existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access; nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access) is
   begin
        if (existingNextUnvisitedPathGeographicMapCellPosition) /= (nextUnvisitedPathGeographicMapCellPosition) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" nextUnvisitedPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (nextUnvisitedPathGeographicMapCellPosition)).toString, This'Unchecked_Access, To_Unbounded_String ("setNextUnvisitedPathGeographicMapCellPosition"));
        end if;
   end setNextUnvisitedPathGeographicMapCellPosition;

begin
   null;
   instanceC := WaypointSelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;


