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
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package is

   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type PathFindingNodeCostInfoFactory is tagged;
   type PathFindingNodeCostInfoFactory_Access is access all PathFindingNodeCostInfoFactory'Class;
   type PathFindingNodeCostInfoFactory_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactory_Access;
   type PathFindingNodeCostInfoFactory_Access_Array_Access is access all PathFindingNodeCostInfoFactory_Access_Array;

   type PathFindingNodeCostInfoFactory is new PathFindingNodeCostInfoFactoryBase with record
      pathFindingNodeCostInfoAdjacencyList : PathFindingNodeCostInfo_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PathFindingNodeCostInfoFactory'Class; max : Integer);
   function Create (max : Integer) return PathFindingNodeCostInfoFactory_Access;
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer);
   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) return PathFindingNodeCostInfo_Access;
   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer);
   function getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return PathFindingNodeCostInfo_Access;
   procedure getInstance (This : in out PathFindingNodeCostInfoFactory; goingToFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return Long_Long_Integer;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


