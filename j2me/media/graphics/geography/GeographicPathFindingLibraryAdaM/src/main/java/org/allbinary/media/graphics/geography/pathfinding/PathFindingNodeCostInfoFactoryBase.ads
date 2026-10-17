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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type PathFindingNodeCostInfoFactoryBase is tagged;
   type PathFindingNodeCostInfoFactoryBase_Access is access all PathFindingNodeCostInfoFactoryBase'Class;
   type PathFindingNodeCostInfoFactoryBase_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBase_Access;
   type PathFindingNodeCostInfoFactoryBase_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBase_Access_Array;

   type PathFindingNodeCostInfoFactoryBase is new PathFindingNodeCostInfoFactoryBaseInterface with null record;
   NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE : PathFindingNodeCostInfoFactoryBase_Access;

   procedure Initialize (This : in out PathFindingNodeCostInfoFactoryBase'Class);
   function Create return PathFindingNodeCostInfoFactoryBase_Access;
   procedure create (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer);
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class) return Long_Long_Integer;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;


