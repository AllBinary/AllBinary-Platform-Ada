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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References is
   type PathFindingNodeCost_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package.PathFindingNodeCost'Class;
   type PathFindingNodeCost_Access_Array is array (Natural range <>) of PathFindingNodeCost_Access;
   type PathFindingNodeCost_Access_Array_Access is access all PathFindingNodeCost_Access_Array;
   type PathFindingNodeCost_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCost_Access_Array_Access;
   type PathFindingNodeCost_Access_Array_Access_Array_Access is access all PathFindingNodeCost_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with java.lang.Comparable_Package; use java.lang.Comparable_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package is

   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
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
   subtype PathFindingNodeCostInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access;
   use type PathFindingNodeCostInfo_Access;
   subtype PathFindingNodeCostInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array;
   use type PathFindingNodeCostInfo_Access_Array;
   subtype PathFindingNodeCostInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access;
   use type PathFindingNodeCostInfo_Access_Array_Access;
   subtype PathFindingNodeCostInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access_Array;
   use type PathFindingNodeCostInfo_Access_Array_Access_Array;
   subtype PathFindingNodeCostInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access_Array_Access;
   use type PathFindingNodeCostInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingNodeCost_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access;
   function "=" (Left, Right : PathFindingNodeCost_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References."=";
   subtype PathFindingNodeCost_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array;
   function "=" (Left, Right : PathFindingNodeCost_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References."=";
   subtype PathFindingNodeCost_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCost_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References."=";
   subtype PathFindingNodeCost_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCost_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References."=";
   subtype PathFindingNodeCost_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCost_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References."=";

   type PathFindingNodeCost is new PathFindingNode and Comparable with record
      commonSeps : CommonSeps_Access;
      pathFindingNodeCostInfoP : PathFindingNodeCostInfo_Access;
   end record;
   NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY : PathFindingNodeCost_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out PathFindingNodeCost'Class; parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class);
   function Create (parent_Param : access Java_Object'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class) return PathFindingNodeCost_Access;
   function getPathFindingNodeCostInfo (This : in out PathFindingNodeCost) return PathFindingNodeCostInfo_Access;
   procedure setPathFindingNodeCostInfo (This : in out PathFindingNodeCost; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class);
   function compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost_Var_Param : access Java_Object'Class) return Integer;
   procedure compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost_Var_Param : access Java_Object'Class);
   function toString (This : in out PathFindingNodeCost) return Unbounded_String;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;


