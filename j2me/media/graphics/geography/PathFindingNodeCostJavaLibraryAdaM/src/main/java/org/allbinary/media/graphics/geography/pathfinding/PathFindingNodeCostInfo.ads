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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References is
   type PathFindingNodeCostInfo_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package.PathFindingNodeCostInfo'Class;
   type PathFindingNodeCostInfo_Access_Array is array (Natural range <>) of PathFindingNodeCostInfo_Access;
   type PathFindingNodeCostInfo_Access_Array_Access is access all PathFindingNodeCostInfo_Access_Array;
   type PathFindingNodeCostInfo_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfo_Access_Array_Access;
   type PathFindingNodeCostInfo_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfo_Access_Array_Access_Array;
   type PathFindingNodeCostInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfo_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfo_Access_Array_Object'Class then PathFindingNodeCostInfo_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingNodeCostInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfo_Access_Array_Access_Array_Object'Class then PathFindingNodeCostInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.lang.Comparable_Package; use java.lang.Comparable_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package is

   package Reference_Types is
   subtype PathFindingNodeCostInfoData_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access;
   use type PathFindingNodeCostInfoData_Access;
   subtype PathFindingNodeCostInfoData_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array;
   use type PathFindingNodeCostInfoData_Access_Array;
   subtype PathFindingNodeCostInfoData_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access;
   use type PathFindingNodeCostInfoData_Access_Array_Access;
   subtype PathFindingNodeCostInfoData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access_Array;
   use type PathFindingNodeCostInfoData_Access_Array_Access_Array;
   subtype PathFindingNodeCostInfoData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package_References.PathFindingNodeCostInfoData_Access_Array_Access_Array_Access;
   use type PathFindingNodeCostInfoData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingNodeCostInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access;
   function "=" (Left, Right : PathFindingNodeCostInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References."=";
   subtype PathFindingNodeCostInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References."=";
   subtype PathFindingNodeCostInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfo_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfo_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.Java_Unbox_PathFindingNodeCostInfo_Access_Array;
   subtype PathFindingNodeCostInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References."=";
   subtype PathFindingNodeCostInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.PathFindingNodeCostInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfo_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References.Java_Unbox_PathFindingNodeCostInfo_Access_Array_Access_Array;

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
   function compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Var_Param : access Java_Object'Class) return Integer;
   procedure compareTo (This : in out PathFindingNodeCostInfo; pathFindingNodeCostInfo_Var_Param : access Java_Object'Class);
   function toString (This : in out PathFindingNodeCostInfo) return Unbounded_String;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;


