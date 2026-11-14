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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References is
   type PathFindingNodeCostInfoFactoryBaseInterface_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package.PathFindingNodeCostInfoFactoryBaseInterface'Class;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBaseInterface_Access;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBaseInterface_Access_Array;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array;
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Object'Class then PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Object'Class then PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References;
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

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package is

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


   type PathFindingNodeCostInfoFactoryBaseInterface is interface;
   subtype PathFindingNodeCostInfoFactoryBaseInterface_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.PathFindingNodeCostInfoFactoryBaseInterface_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBaseInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBaseInterface_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.PathFindingNodeCostInfoFactoryBaseInterface_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array;
   subtype PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References."=";
   subtype PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package_References.Java_Unbox_PathFindingNodeCostInfoFactoryBaseInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PathFindingNodeCostInfoFactoryBaseInterface (Value : PathFindingNodeCostInfoFactoryBaseInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure create (This : in out PathFindingNodeCostInfoFactoryBaseInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer) is abstract;
   function getTotalCost (This : in out PathFindingNodeCostInfoFactoryBaseInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer is abstract;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactoryBaseInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBaseInterface_Package;


