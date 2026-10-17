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
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type PathFindingNodeCostInfoFactoryInterface is interface and PathFindingNodeCostInfoFactoryBaseInterface;
   type PathFindingNodeCostInfoFactoryInterface_Access is access all PathFindingNodeCostInfoFactoryInterface'Class;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryInterface_Access;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Access is access all PathFindingNodeCostInfoFactoryInterface_Access_Array;
   function getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) return PathFindingNodeCostInfo_Access is abstract;
   function getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingNodeCostInfo_Access is abstract;
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package;


