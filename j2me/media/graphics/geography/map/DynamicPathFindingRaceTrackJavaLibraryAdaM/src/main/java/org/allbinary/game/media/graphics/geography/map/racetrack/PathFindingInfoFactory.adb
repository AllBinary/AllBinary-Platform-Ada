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


package body org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

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
        PathFindingInfoFactory_Package.instance := PathFindingInfoFactory_Package.Create (SimplePathFinderGraphVisitorFactory_Package.Create (1, 1, Integer_Package.MAX_VALUE), max);
   end initMax;

   procedure Initialize (This : in out PathFindingInfoFactory'Class; pathFinderGraphVisitorFactoryInterface_Param : access PathFinderGraphVisitorFactoryBase'Class; max : Integer) is
      pathFinderGraphVisitorFactoryInterface : PathFinderGraphVisitorFactoryBase_Access := PathFinderGraphVisitorFactoryBase_Access (pathFinderGraphVisitorFactoryInterface_Param);
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

   function Create (pathFinderGraphVisitorFactoryInterface_Param : access PathFinderGraphVisitorFactoryBase'Class; max : Integer) return PathFindingInfoFactory_Access is
      This : constant PathFindingInfoFactory_Access := new PathFindingInfoFactory;
   begin
      PathFindingInfoFactory_Package.Initialize (This.all, pathFinderGraphVisitorFactoryInterface_Param, max);
      return This;
   end Create;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; mapArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access;
   begin
        pathFindingInfo := PathFindingInfo_Package.Create (This.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface, BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance.init;
        This.init (geographicMapInterface, pathFindingInfo, mapArray);
        This.basicGeographicMapPathFinder.init (geographicMapInterface, This.basicGeographicMapGraph, This.pathFinderGraphVisitorFactoryInterface.getInstance (geographicMapInterface));
        pathFindingInfo.setPathFinder (This.basicGeographicMapPathFinder);
        return pathFindingInfo;
   end getInstancePathFindingInfo;

   --  throws Exception
   procedure init (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access) is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
   begin
        BasePathFindingInfoFactory (This).init (geographicMapInterface, pathFindingInfo, mapArray);
        This.buildPathFindingNodes (geographicMapInterface, pathFindingInfo, mapArray);
   end init;

   --  throws Exception
   procedure buildPathFindingNodesForCellPosition (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access; cellPosition_Param : access GeographicMapCellPosition'Class) is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      cellPosition : GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
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
   procedure buildPathFindingNodes (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; mapArray : Integer_Array_Access_Array_Access) is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
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
                This.buildPathFindingNodesForCellPosition (geographicMapInterface, pathFindingInfo, mapArray, geographicMapCellPositionFactory.getAt (column, row));
            end loop;
        end loop;
   end buildPathFindingNodes;

   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface_Param : access BasicGeographicMap'Class; mapArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := PathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface_Param, mapArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

begin
   null;
   instance := null;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


