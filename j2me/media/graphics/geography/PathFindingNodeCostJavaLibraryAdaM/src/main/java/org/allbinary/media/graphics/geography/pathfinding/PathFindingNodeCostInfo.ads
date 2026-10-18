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
with java.lang.Comparable_Package; use java.lang.Comparable_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package is


   type PathFindingNodeCostInfo is tagged;
   type PathFindingNodeCostInfo_Access is access all PathFindingNodeCostInfo'Class;
   type PathFindingNodeCostInfo_Access_Array is array (Natural range <>) of PathFindingNodeCostInfo_Access;
   type PathFindingNodeCostInfo_Access_Array_Access is access all PathFindingNodeCostInfo_Access_Array;
   type PathFindingNodeCostInfo_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfo_Access_Array_Access;
   type PathFindingNodeCostInfo_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfo_Access_Array_Access_Array;

   type PathFindingNodeCostInfo is new Java_Object and Comparable with record
      pathFindingNodeCostInfoData : PathFindingNodeCostInfoData_Access;
      costFromStartP : Long_Long_Integer;
      costToEndP : Long_Long_Integer;
      totalCostP : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out PathFindingNodeCostInfo'Class; costFromStart : Long_Long_Integer; costToGoal : Long_Long_Integer);
   function Create (costFromStart : Long_Long_Integer; costToGoal : Long_Long_Integer) return PathFindingNodeCostInfo_Access;
   procedure setCostToEnd (This : in out PathFindingNodeCostInfo; costToEnd : Long_Long_Integer);
   procedure setTotalCost (This : in out PathFindingNodeCostInfo; totalCost : Long_Long_Integer);
   procedure setCalculatedTotalCost (This : in out PathFindingNodeCostInfo);
   procedure setCostFromStart (This : in out PathFindingNodeCostInfo; cost : Long_Long_Integer);
   procedure addCostFromStart (This : in out PathFindingNodeCostInfo; cost : Long_Long_Integer);
   function compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class) return Integer;
   procedure compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Param : access PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class);
   function toString (This : in out PathFindingNodeCostInfo) return Unbounded_String;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;


