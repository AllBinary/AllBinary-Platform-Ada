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
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
   begin
        This.getInstance (goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
   end create;

   --  throws Exception
   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) return PathFindingNodeCostInfo_Access is
      pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access;
   begin
        pathFindingNodeCostInfo := This.getInstance (goingToGeographicMapCellPosition, geographicMapCellPosition);
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

   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingNodeCostInfo_Access is
   begin
        return This.pathFindingNodeCostInfoAdjacencyList (geographicMapCellPosition.getId) (goingToFromGeographicMapCellPosition.getId);
   end getInstance;

   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return Long_Long_Integer is
   begin
        return This.getInstance (comingFromGeographicMapCellPosition, geographicMapCellPosition).totalCostP;
   end getTotalCost;

   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
      Java_Result : constant PathFindingNodeCostInfo_Access := PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToGeographicMapCellPosition, geographicMapCellPosition, costFromStart, costToEnd);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant PathFindingNodeCostInfo_Access := PathFindingNodeCostInfoFactory'Class (This).getInstance (goingToFromGeographicMapCellPosition, geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant Long_Long_Integer := PathFindingNodeCostInfoFactory'Class (This).getTotalCost (geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalCost;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


