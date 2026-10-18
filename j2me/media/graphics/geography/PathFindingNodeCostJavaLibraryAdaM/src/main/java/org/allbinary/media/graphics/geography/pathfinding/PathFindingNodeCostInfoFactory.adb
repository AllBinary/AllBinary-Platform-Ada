--
-- AllBinary Open License Version 1
-- Copyright (c) 2006 AllBinary
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



package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package is

   procedure Initialize_Fields (This : in out PathFindingNodeCostInfoFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out PathFindingNodeCostInfoFactory'Class; max : Integer) is
   begin
      PathFindingNodeCostInfoFactoryBase_Package.Initialize (This);
      Initialize_Fields (This);
        This.pathFindingNodeCostInfoAdjacencyList := new PathFindingNodeCostInfo_Access_Array_Access_Array'(0 .. (max) - 1 => new PathFindingNodeCostInfo_Access_Array'(0 .. (max) - 1 => null));
   end Initialize;

   function Create (max : Integer) return PathFindingNodeCostInfoFactory_Access is
      This : constant PathFindingNodeCostInfoFactory_Access := new PathFindingNodeCostInfoFactory;
   begin
      PathFindingNodeCostInfoFactory_Package.Initialize (This.all, max);
      return This;
   end Create;

   --  throws Exception
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; goingToGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      goingToGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (goingToGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
   end create;

   --  throws Exception
   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) return PathFindingNodeCostInfo_Access is
      goingToGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (goingToGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access;
   begin
        pathFindingNodeCostInfo := PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToGeographicMapCellPosition, geographicMapCellPosition);
        if (pathFindingNodeCostInfo) = (null) then
            pathFindingNodeCostInfo := PathFindingNodeCostInfo_Package.Create (costFromStart, costToEnd);
            pathFindingNodeCostInfo.setCalculatedTotalCost;
            This.pathFindingNodeCostInfoAdjacencyList (geographicMapCellPosition.getId) (goingToGeographicMapCellPosition.getId) := pathFindingNodeCostInfo;
        else
            pathFindingNodeCostInfo.setCostFromStart (costFromStart);
            pathFindingNodeCostInfo.setCostToEnd (costToEnd);
            pathFindingNodeCostInfo.setCalculatedTotalCost;
        end if;
        return pathFindingNodeCostInfo;
   end getInstance;

   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingNodeCostInfo_Access is
      goingToFromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (goingToFromGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return This.pathFindingNodeCostInfoAdjacencyList (geographicMapCellPosition.getId) (goingToFromGeographicMapCellPosition.getId);
   end getInstance;

   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      comingFromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (comingFromGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        return PathFindingNodeCostInfoFactory'Class (This).getInstance (comingFromGeographicMapCellPosition, geographicMapCellPosition).totalCostP;
   end getTotalCost;

   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
      Java_Result : constant PathFindingNodeCostInfo_Access := PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToGeographicMapCellPosition_Param => goingToGeographicMapCellPosition_Param, geographicMapCellPosition_Param => geographicMapCellPosition_Param, costFromStart => costFromStart, costToEnd => costToEnd);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant PathFindingNodeCostInfo_Access := PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToFromGeographicMapCellPosition_Param => goingToFromGeographicMapCellPosition_Param, geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Long_Long_Integer := PathFindingNodeCostInfoFactory'Class (This).getTotalCost (geographicMapInterface_Param => geographicMapInterface_Param, comingFromGeographicMapCellPosition_Param => comingFromGeographicMapCellPosition_Param, geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalCost;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


