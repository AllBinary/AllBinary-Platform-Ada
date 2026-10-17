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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.media.graphics.geography.pathfinding.Comparable_Package; use org.allbinary.media.graphics.geography.pathfinding.Comparable_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;

   type PathFindingNodeCost is tagged;
   type PathFindingNodeCost_Access is access all PathFindingNodeCost'Class;
   type PathFindingNodeCost_Access_Array is array (Natural range <>) of PathFindingNodeCost_Access;
   type PathFindingNodeCost_Access_Array_Access is access all PathFindingNodeCost_Access_Array;

   type PathFindingNodeCost is new PathFindingNode and Comparable with record
      commonSeps : CommonSeps_Access;
      pathFindingNodeCostInfoP : PathFindingNodeCostInfo_Access;
   end record;
   NULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY : PathFindingNodeCost_Access_Array_Access_Array_Access;

   procedure Initialize (This : in out PathFindingNodeCost'Class; parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access);
   function Create (parent : Java_Object_Access; geographicMapCellPosition : GeographicMapCellPosition_Access; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access) return PathFindingNodeCost_Access;
   function getPathFindingNodeCostInfo (This : in out PathFindingNodeCost) return PathFindingNodeCostInfo_Access;
   procedure setPathFindingNodeCostInfo (This : in out PathFindingNodeCost; pathFindingNodeCostInfo : PathFindingNodeCostInfo_Access);
   function compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost : PathFindingNodeCost_Access) return Integer;
   procedure compareTo (This : in out PathFindingNodeCost; pathFindingNodeCost : PathFindingNodeCost_Access);
   function toString (This : in out PathFindingNodeCost) return Unbounded_String;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;


