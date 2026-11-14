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
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References is
   type PathFindingNodeCostInfoFactory_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package.PathFindingNodeCostInfoFactory'Class;
   type PathFindingNodeCostInfoFactory_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactory_Access;
   type PathFindingNodeCostInfoFactory_Access_Array_Access is access all PathFindingNodeCostInfoFactory_Access_Array;
   type PathFindingNodeCostInfoFactory_Access_Array_Access_Array is array (Natural range <>) of PathFindingNodeCostInfoFactory_Access_Array_Access;
   type PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access is access all PathFindingNodeCostInfoFactory_Access_Array_Access_Array;
   type PathFindingNodeCostInfoFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactory_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactory_Access_Array_Object'Class then PathFindingNodeCostInfoFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Object'Class then PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References;
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
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package is

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


   subtype PathFindingNodeCostInfoFactory_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.PathFindingNodeCostInfoFactory_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References."=";
   subtype PathFindingNodeCostInfoFactory_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.PathFindingNodeCostInfoFactory_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References."=";
   subtype PathFindingNodeCostInfoFactory_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.PathFindingNodeCostInfoFactory_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array;
   subtype PathFindingNodeCostInfoFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.PathFindingNodeCostInfoFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingNodeCostInfoFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References."=";
   subtype PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References."=";
   function Java_Box (Value : PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.Java_Box;
   function Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFindingNodeCostInfoFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package_References.Java_Unbox_PathFindingNodeCostInfoFactory_Access_Array_Access_Array;

   type PathFindingNodeCostInfoFactory is new PathFindingNodeCostInfoFactoryBase with null record;

   procedure Initialize (This : in out PathFindingNodeCostInfoFactory'Class; max : Integer);
   function Create (max : Integer) return PathFindingNodeCostInfoFactory_Access;
   procedure create (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; goingToGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; costFromStart : Long_Long_Integer; costToEnd : Long_Long_Integer);
   function getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Long_Long_Integer;
   procedure getTotalCost (This : in out PathFindingNodeCostInfoFactory; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; comingFromGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;


