--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.SimplePathFinderGraphVisitorFactory_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.SimplePathFinderGraphVisitorFactory_Package;

package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package BasicGeographicMapUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package RaceTrackRoadsGeographicMapCellHistoryFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
   package PathFindingNodeCostInfoFactoryBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
   package PathFindingNodeCostInfoFactory_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;
   package BasicArrayListS_Package renames Standard.org.allbinary.util.BasicArrayListS_Package;
   procedure Initialize_Fields (This : in out PathFindingInfoFactory'Class) is
   begin
      null;
      This.MAX_DIRECTIONS := 4;
      
      
      
      
   end Initialize_Fields;


   function getInstance return PathFindingInfoFactory_Access is
   begin
        return PathFindingInfoFactory_Package.instance;
   end getInstance;

   procedure initMax (max : Integer) is
   begin
        PathFindingInfoFactory_Package.instance := PathFindingInfoFactory_Package.Create (SimplePathFinderGraphVisitorFactory_Package.Create (1, 1, Integer'Last), max);
   end initMax;

   procedure Initialize (This : in out PathFindingInfoFactory'Class; pathFinderGraphVisitorFactoryInterface_Param : access PathFinderGraphVisitorFactoryBase_Package.PathFinderGraphVisitorFactoryBase'Class; max : Integer) is
      pathFinderGraphVisitorFactoryInterface : constant PathFinderGraphVisitorFactoryBase_Access := PathFinderGraphVisitorFactoryBase_Access (pathFinderGraphVisitorFactoryInterface_Param);
      commonStrings : CommonStrings_Access;
   begin
      BasePathFindingInfoFactory_Package.Initialize (This);
      Initialize_Fields (This);
        commonStrings := CommonStrings_Package.getInstance;
        PreLogUtil_Package.put (To_Unbounded_String ("Using Dynamic Path Finding"), PathFindingInfoFactory_Access'(This'Unchecked_Access), commonStrings.GET_INSTANCE);
        This.basicGeographicMapPathFinder := BasicGeographicMapPathFinder_Package.Create (max);
        This.pathFindingInfo := PathFindingInfo_Package.Create (PathFindingNodeCostInfoFactory_Package.Create (max), BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        This.basicGeographicMapGraph := BasicGeographicMapGraph_Package.Create (PathFindingNodeCostInfoFactory_Access (This.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface));
        This.pathFinderGraphVisitorFactoryInterface := pathFinderGraphVisitorFactoryInterface;
   end Initialize;

   function Create (pathFinderGraphVisitorFactoryInterface_Param : access PathFinderGraphVisitorFactoryBase_Package.PathFinderGraphVisitorFactoryBase'Class; max : Integer) return PathFindingInfoFactory_Access is
      This : constant PathFindingInfoFactory_Access := new PathFindingInfoFactory;
   begin
      PathFindingInfoFactory_Package.Initialize (This.all, pathFinderGraphVisitorFactoryInterface_Param, max);
      return This;
   end Create;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; mapArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access;
   begin
        pathFindingInfo := PathFindingInfo_Package.Create (This.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface, BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance.init;
        PathFindingInfoFactory'Class (This).init (geographicMapInterface, pathFindingInfo, mapArray);
        This.basicGeographicMapPathFinder.init (geographicMapInterface, This.basicGeographicMapGraph, This.pathFinderGraphVisitorFactoryInterface.getInstance (geographicMapInterface));
        pathFindingInfo.setPathFinder (This.basicGeographicMapPathFinder);
        return pathFindingInfo;
   end getInstancePathFindingInfo;

   --  throws Exception
   procedure init (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
   begin
        BasePathFindingInfoFactory (This).init (geographicMapInterface, pathFindingInfo, mapArray);
        PathFindingInfoFactory'Class (This).buildPathFindingNodes (geographicMapInterface, pathFindingInfo, mapArray);
   end init;

   --  throws Exception
   procedure buildPathFindingNodesForCellPosition (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      cellTypeId : Integer;
      geographicMapCellType : GeographicMapCellType_Access;
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access;
      basicGeographicMapUtil : BasicGeographicMapUtil_Access;
      row : Integer;
      column : Integer;
      goingToGeographicMapCellPosition : GeographicMapCellPosition_Access;
      costFromStart : Integer;
      costToEnd : Integer;
      index : Integer;
   begin
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        cellTypeId := mapArray (cellPosition.getRow) (cellPosition.getColumn);
        geographicMapCellType := GeographicMapCellTypeFactory_Package.getInstance.get (geographicMapInterface.getCellTypeFromMapCellTypeInt (cellTypeId));
        raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (geographicMapCellType);
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        pathFindingNodeCostInfoFactoryInterface := pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface;
        basicGeographicMapUtil := BasicGeographicMapUtil_Package.getInstance;
        row := 0;
        column := 0;
        goingToGeographicMapCellPosition := null;
        costFromStart := 0;
        costToEnd := 0;
        for index in 0 .. (This.MAX_DIRECTIONS) - 1 loop
            row := basicGeographicMapUtil.getBorderingRow (index, cellPosition);
            column := basicGeographicMapUtil.getBorderingColumn (index, cellPosition);
            if ((((row) < (allBinaryTiledLayer.getRows)) and then ((column) < (allBinaryTiledLayer.getColumns))) and then ((row) >= (0))) and then ((column) >= (0)) then
                goingToGeographicMapCellPosition := geographicMapCellPositionFactory.getAt (column, row);
                costFromStart := raceTrackGeographicMapCellType.getTravelCost;
                costToEnd := costFromStart;
                pathFindingNodeCostInfoFactoryInterface.create (geographicMapInterface, goingToGeographicMapCellPosition, cellPosition, costFromStart, costToEnd);
            end if;
        end loop;
   end buildPathFindingNodesForCellPosition;

   --  throws Exception
   procedure buildPathFindingNodes (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      totalColumns : Integer;
      totalRows : Integer;
      row : Integer;
      column : Integer;
   begin
        geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory;
        allBinaryTiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        totalColumns := allBinaryTiledLayer.getColumns;
        totalRows := allBinaryTiledLayer.getRows;
        for column in 0 .. (totalColumns) - 1 loop
            for row in 0 .. (totalRows) - 1 loop
                PathFindingInfoFactory'Class (This).buildPathFindingNodesForCellPosition (geographicMapInterface, pathFindingInfo, mapArray, geographicMapCellPositionFactory.getAt (column, row));
            end loop;
        end loop;
   end buildPathFindingNodes;

   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; mapArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := PathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface_Param => geographicMapInterface_Param, mapArray => mapArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

begin
   null;
   instance := null;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


