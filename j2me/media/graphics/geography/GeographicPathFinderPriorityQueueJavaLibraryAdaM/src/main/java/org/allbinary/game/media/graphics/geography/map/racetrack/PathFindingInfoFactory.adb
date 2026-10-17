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
      
      
   end Initialize_Fields;


   function getInstance return PathFindingInfoFactory_Access is
   begin
        return PathFindingInfoFactory_Package.instance;
   end getInstance;

   procedure initMax (max_Case : Integer) is
   begin
        PathFindingInfoFactory_Package.MAX := max_Case;
   end initMax;

   procedure Initialize (This : in out PathFindingInfoFactory'Class) is
   begin
      BasePathFindingInfoFactory_Package.Initialize (This);
      Initialize_Fields (This);
        This.pathFindingInfo := PathFindingInfo_Package.Create (PathFindingNodeCostInfoFactory_Package.Create (PathFindingInfoFactory_Package.MAX), BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        This.pathFinder := PathFinder_Package.Create;
   end Initialize;

   function Create return PathFindingInfoFactory_Access is
      This : constant PathFindingInfoFactory_Access := new PathFindingInfoFactory;
   begin
      PathFindingInfoFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; mapArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access is
      pathFindingInfo : PathFindingInfo_Access;
   begin
        pathFindingInfo := PathFindingInfo_Package.Create (This.pathFindingInfo.getPathFindingNodeCostInfoFactoryInterface, BasicArrayListS_Package.Create (1), BasicArrayListS_Package.Create (1));
        RaceTrackRoadsGeographicMapCellHistoryFactory_Package.getInstance.init;
        This.init (geographicMapInterface, pathFindingInfo, mapArray);
        This.pathFinder.init (geographicMapInterface);
        pathFindingInfo.setPathFinder (This.pathFinder);
        return pathFindingInfo;
   end getInstancePathFindingInfo;

   --  throws Exception
   procedure init (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access) is
   begin
        BasePathFindingInfoFactory (This).init (geographicMapInterface, pathFindingInfo, mapArray);
        This.buildPathFindingNodes (geographicMapInterface, pathFindingInfo, mapArray);
   end init;

   --  throws Exception
   procedure buildPathFindingNodesForCellPosition (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access; cellPosition : GeographicMapCellPosition_Access) is
   begin
        null;
   end buildPathFindingNodesForCellPosition;

   --  throws Exception
   procedure buildPathFindingNodes (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access) is
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

   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; mapArray : Integer_Array_Access_Array_Access) is
      Java_Result : constant PathFindingInfo_Access := PathFindingInfoFactory'Class (This).getInstancePathFindingInfo (geographicMapInterface, mapArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstancePathFindingInfo;

begin
   null;
   instance := PathFindingInfoFactory_Package.Create;
   MAX := 32768;

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


