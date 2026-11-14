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
limited with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References is
   type PathGenerator_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package.PathGenerator'Class;
   type PathGenerator_Access_Array is array (Natural range <>) of PathGenerator_Access;
   type PathGenerator_Access_Array_Access is access all PathGenerator_Access_Array;
   type PathGenerator_Access_Array_Access_Array is array (Natural range <>) of PathGenerator_Access_Array_Access;
   type PathGenerator_Access_Array_Access_Array_Access is access all PathGenerator_Access_Array_Access_Array;
   type PathGenerator_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathGenerator_Access_Array_Access;
   end record;
   function Java_Box (Value : PathGenerator_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathGenerator_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathGenerator_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathGenerator_Access_Array_Access is (if Value /= null and then Value.all in PathGenerator_Access_Array_Object'Class then PathGenerator_Access_Array_Object'Class (Value.all).Value else null);
   type PathGenerator_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathGenerator_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathGenerator_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathGenerator_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathGenerator_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathGenerator_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathGenerator_Access_Array_Access_Array_Object'Class then PathGenerator_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References;
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
with org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package is

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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   use type MultipassState_Access;
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   use type MultipassState_Access_Array;
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   use type MultipassState_Access_Array_Access;
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   use type MultipassState_Access_Array_Access_Array;
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   use type MultipassState_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PathGenerator_Access is org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.PathGenerator_Access;
   function "=" (Left, Right : PathGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References."=";
   subtype PathGenerator_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.PathGenerator_Access_Array;
   function "=" (Left, Right : PathGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References."=";
   subtype PathGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.PathGenerator_Access_Array_Access;
   function "=" (Left, Right : PathGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References."=";
   function Java_Box (Value : PathGenerator_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.Java_Box;
   function Java_Unbox_PathGenerator_Access_Array (Value : access Java_Object'Class) return PathGenerator_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.Java_Unbox_PathGenerator_Access_Array;
   subtype PathGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.PathGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : PathGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References."=";
   subtype PathGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.PathGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References."=";
   function Java_Box (Value : PathGenerator_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.Java_Box;
   function Java_Unbox_PathGenerator_Access_Array_Access_Array (Value : access Java_Object'Class) return PathGenerator_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package_References.Java_Unbox_PathGenerator_Access_Array_Access_Array;

   type PathGenerator is new Java_Object and PathGeneratorInterface with null record;
   SINGLETON : PathGenerator_Access;

   procedure Initialize (This : in out PathGenerator'Class);
   function Create return PathGenerator_Access;
   function getInstance return PathGenerator_Access;
   procedure init (This : in out PathGenerator; geographicMapInterface_Param : access Java_Object'Class; totalPaths : Integer);
   function getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access;
   procedure getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer);
   function createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access;
   procedure createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer);
   function create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access;
   procedure create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer);
   function createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class) return Boolean;
   procedure isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;


