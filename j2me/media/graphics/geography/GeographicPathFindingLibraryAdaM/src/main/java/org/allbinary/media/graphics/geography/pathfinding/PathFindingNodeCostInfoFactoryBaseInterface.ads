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

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package is

   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type PathFindingNodeCostInfoFactoryBaseInterface is interface;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access is access all PathFindingNodeCostInfoFactoryBaseInterface'Class;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBaseInterface_Access;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBaseInterface_Access_Array;
   procedure create (This : in out PathFindingNodeCostInfoFactoryBaseInterface; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is abstract;
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryBaseInterface; geographicMapInterface : BasicGeographicMap_Access; comingFromGeographicMapCellPosition : GeographicMapCellPosition_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return Long_Long_Integer is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;


