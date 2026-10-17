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

   procedure onWaypointEvent (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
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
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("onWaypointEvent"));
   end onWaypointEvent;

   procedure addWaypointFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
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
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuilding;

   procedure addWaypointFromBuildingList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; advancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; list_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      advancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (advancedRTSGameLayer_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (To_Unbounded_String (" Waypoints: "));
        stringBuffer.append (This.stringUtil.toString (list));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: onWaypointEvent"));
   end addWaypointFromBuildingList;

   procedure insertWaypoint (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (associatedAdvancedRTSGameLayer.getName);
        stringBuffer.append (This.commonSeps.SPACE);
        stringBuffer.append (waypointName);
        stringBuffer.append (To_Unbounded_String (" Insert: "));
        stringBuffer.append (rtsLayer.getName);
        stringBuffer.append (To_Unbounded_String (" for Waypoint: "));
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypoint;

   procedure insertWaypointList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; index : Integer; rtsLayer_Param : access CollidableDestroyableDamageableLayer'Class; waypointName : Unbounded_String; list_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      rtsLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (rtsLayer_Param);
      list : BasicArrayList_Access := BasicArrayList_Access (list_Param);
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
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: insertWaypoint"));
   end insertWaypointList;

   procedure setRandomGeographicMapCellHistoryList (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; pathsList_Param : access BasicArrayList'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      pathsList : BasicArrayList_Access := BasicArrayList_Access (pathsList_Param);
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
        This.logUtil.putF (stringBuffer.toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistoryList;

   procedure moveAwayFromBuilding (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" Trying to move away from building")).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("selected: moveAwayFromBuilding"));
   end moveAwayFromBuilding;

   procedure needToMove (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; unitWaypointBehavior_Param : access WaypointBehaviorBase'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      unitWaypointBehavior : WaypointBehaviorBase_Access := WaypointBehaviorBase_Access (unitWaypointBehavior_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (unitWaypointBehavior.getMovementLogicAsString).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("needToMove"));
   end needToMove;

   procedure setRandomGeographicMapCellHistory (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" pathsList is null")).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setRandomGeographicMapCellHistory"));
   end setRandomGeographicMapCellHistory;

   procedure setCurrentPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; existingCurrentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; currentPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingCurrentPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingCurrentPathGeographicMapCellPosition_Param);
      currentPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (currentPathGeographicMapCellPosition_Param);
   begin
        if (existingCurrentPathGeographicMapCellPosition) = (null) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" currentPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (currentPathGeographicMapCellPosition)).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setCurrentPathGeographicMapCellPosition"));
        end if;
   end setCurrentPathGeographicMapCellPosition;

   procedure setNextUnvisitedPathGeographicMapCellPosition (This : in out WaypointSelectedLogHelper; associatedAdvancedRTSGameLayer_Param : access PathFindingLayerInterface'Class; existingNextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; nextUnvisitedPathGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class) is
      associatedAdvancedRTSGameLayer : PathFindingLayerInterface_Access := PathFindingLayerInterface_Access (associatedAdvancedRTSGameLayer_Param);
      existingNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (existingNextUnvisitedPathGeographicMapCellPosition_Param);
      nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (nextUnvisitedPathGeographicMapCellPosition_Param);
   begin
        if (existingNextUnvisitedPathGeographicMapCellPosition) /= (nextUnvisitedPathGeographicMapCellPosition) then
            This.logUtil.putF (StringMaker_Package.Create.append (associatedAdvancedRTSGameLayer.getName).append (To_Unbounded_String (" nextUnvisitedPathGeographicMapCellPosition: ")).append (This.stringUtil.toString (nextUnvisitedPathGeographicMapCellPosition)).toString, WaypointSelectedLogHelper_Access'(This'Unchecked_Access), To_Unbounded_String ("setNextUnvisitedPathGeographicMapCellPosition"));
        end if;
   end setNextUnvisitedPathGeographicMapCellPosition;

begin
   null;
   instanceC := WaypointSelectedLogHelper_Package.Create;

end org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper_Package;


