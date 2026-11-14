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
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References is
   type PathFindingNodeCostInfoFactoryInterface_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package.PathFindingNodeCostInfoFactoryInterface'Class;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryInterface_Access;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Access is access all PathFindingNodeCostInfoFactoryInterface_Access_Array;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryInterface_Access_Array_Access;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array;
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactoryInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactoryInterface_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactoryInterface_Access_Array_Object'Class then PathFindingNodeCostInfoFactoryInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Object'Class then PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfo_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package is

   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package Reference_Types is
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


   type PathFindingNodeCostInfoFactoryInterface is interface and PathFindingNodeCostInfoFactoryBaseInterface;
   subtype PathFindingNodeCostInfoFactoryInterface_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.PathFindingNodeCostInfoFactoryInterface_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.PathFindingNodeCostInfoFactoryInterface_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.PathFindingNodeCostInfoFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactoryInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array;
   subtype PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package_References.Java_Unbox_PathFindingNodeCostInfoFactoryInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PathFindingNodeCostInfoFactoryInterface (Value : PathFindingNodeCostInfoFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) return PathFindingNodeCostInfo_Access is abstract;
   procedure getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is abstract;
   function getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return PathFindingNodeCostInfo_Access is abstract;
   procedure getInstance (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is abstract;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactoryInterface; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryInterface_Package;


