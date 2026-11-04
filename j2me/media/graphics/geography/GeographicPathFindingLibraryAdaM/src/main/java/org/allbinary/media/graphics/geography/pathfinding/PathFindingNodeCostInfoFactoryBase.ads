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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References is
   type PathFindingNodeCostInfoFactoryBase_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package.PathFindingNodeCostInfoFactoryBase'Class;
   type PathFindingNodeCostInfoFactoryBase_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBase_Access;
   type PathFindingNodeCostInfoFactoryBase_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBase_Access_Array;
   type PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBase_Access_Array_Access;
   type PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingNodeCostInfoFactoryBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBase_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBase_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBase_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References."=";

   type PathFindingNodeCostInfoFactoryBase is new Java_Object and PathFindingNodeCostInfoFactoryBaseInterface with null record;
   NULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE : PathFindingNodeCostInfoFactoryBase_Access;

   procedure Initialize (This : in out PathFindingNodeCostInfoFactoryBase'Class);
   function Create return PathFindingNodeCostInfoFactoryBase_Access;
   procedure create (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer);
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactoryBase; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;


