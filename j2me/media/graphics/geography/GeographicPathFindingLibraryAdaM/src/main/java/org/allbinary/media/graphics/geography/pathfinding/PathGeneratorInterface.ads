-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References is
   type PathGeneratorInterface_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package.PathGeneratorInterface'Class;
   type PathGeneratorInterface_Access_Array is array (Natural range <>) of PathGeneratorInterface_Access;
   type PathGeneratorInterface_Access_Array_Access is access all PathGeneratorInterface_Access_Array;
   type PathGeneratorInterface_Access_Array_Access_Array is array (Natural range <>) of PathGeneratorInterface_Access_Array_Access;
   type PathGeneratorInterface_Access_Array_Access_Array_Access is access all PathGeneratorInterface_Access_Array_Access_Array;
   type PathGeneratorInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathGeneratorInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : PathGeneratorInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathGeneratorInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathGeneratorInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathGeneratorInterface_Access_Array_Access is (if Value /= null and then Value.all in PathGeneratorInterface_Access_Array_Object'Class then PathGeneratorInterface_Access_Array_Object'Class (Value.all).Value else null);
   type PathGeneratorInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathGeneratorInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathGeneratorInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathGeneratorInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathGeneratorInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathGeneratorInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathGeneratorInterface_Access_Array_Access_Array_Object'Class then PathGeneratorInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References;
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
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype PathFindingInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access;
   use type PathFindingInfo_Access;
   subtype PathFindingInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array;
   use type PathFindingInfo_Access_Array;
   subtype PathFindingInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access;
   subtype PathFindingInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array;
   use type PathFindingInfo_Access_Array_Access_Array;
   subtype PathFindingInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type PathGeneratorInterface is interface;
   subtype PathGeneratorInterface_Access is org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.PathGeneratorInterface_Access;
   function "=" (Left, Right : PathGeneratorInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References."=";
   subtype PathGeneratorInterface_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.PathGeneratorInterface_Access_Array;
   function "=" (Left, Right : PathGeneratorInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References."=";
   subtype PathGeneratorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.PathGeneratorInterface_Access_Array_Access;
   function "=" (Left, Right : PathGeneratorInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References."=";
   function Java_Box (Value : PathGeneratorInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_PathGeneratorInterface_Access_Array (Value : access Java_Object'Class) return PathGeneratorInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.Java_Unbox_PathGeneratorInterface_Access_Array;
   subtype PathGeneratorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.PathGeneratorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PathGeneratorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References."=";
   subtype PathGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.PathGeneratorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathGeneratorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References."=";
   function Java_Box (Value : PathGeneratorInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.Java_Box;
   function Java_Unbox_PathGeneratorInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return PathGeneratorInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package_References.Java_Unbox_PathGeneratorInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_PathGeneratorInterface (Value : PathGeneratorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function createList (This : in out PathGeneratorInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is abstract;
   procedure createList (This : in out PathGeneratorInterface; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) is abstract;

end org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;


