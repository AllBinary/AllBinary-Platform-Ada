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



package body org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package is

   procedure Initialize_Fields (This : in out PathFindingNodeCostInfoFactoryBase'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out PathFindingNodeCostInfoFactoryBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return PathFindingNodeCostInfoFactoryBase_Access is
      This : constant PathFindingNodeCostInfoFactoryBase_Access := new PathFindingNodeCostInfoFactoryBase;
   begin
      PathFindingNodeCostInfoFactoryBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure create (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      comingFromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (comingFromGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end create;

   --  throws Exception
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      comingFromGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (comingFromGeographicMapCellPosition_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return 0;
   end getTotalCost;

   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Long_Long_Integer := PathFindingNodeCostInfoFactoryBase'Class (This).getTotalCost (geographicMapInterface_Param, comingFromGeographicMapCellPosition_Param, geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getTotalCost;

begin
   null;
   NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE := PathFindingNodeCostInfoFactoryBase_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;


