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
limited with org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References is
   type PathFinder_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package.PathFinder'Class;
   type PathFinder_Access_Array is array (Natural range <>) of PathFinder_Access;
   type PathFinder_Access_Array_Access is access all PathFinder_Access_Array;
   type PathFinder_Access_Array_Access_Array is array (Natural range <>) of PathFinder_Access_Array_Access;
   type PathFinder_Access_Array_Access_Array_Access is access all PathFinder_Access_Array_Access_Array;
   type PathFinder_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinder_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinder_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinder_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinder_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinder_Access_Array_Access is (if Value /= null and then Value.all in PathFinder_Access_Array_Object'Class then PathFinder_Access_Array_Object'Class (Value.all).Value else null);
   type PathFinder_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PathFinder_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PathFinder_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PathFinder_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PathFinder_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PathFinder_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PathFinder_Access_Array_Access_Array_Object'Class then PathFinder_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.util.ABHashSet_Package;
with org.allbinary.util.ABHashSet_Package_References;
limited with org.allbinary.util.ABPriorityQueue_Package;
with org.allbinary.util.ABPriorityQueue_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package ABHashSet_Package renames Standard.org.allbinary.util.ABHashSet_Package;
   package ABPriorityQueue_Package renames Standard.org.allbinary.util.ABPriorityQueue_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package Reference_Types is
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   use type MathUtil_Access;
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   use type MathUtil_Access_Array;
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   use type MathUtil_Access_Array_Access;
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   use type MathUtil_Access_Array_Access_Array;
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   use type MathUtil_Access_Array_Access_Array_Access;
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
   subtype ABHashSet_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access;
   use type ABHashSet_Access;
   subtype ABHashSet_Access_Array is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array;
   use type ABHashSet_Access_Array;
   subtype ABHashSet_Access_Array_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access;
   use type ABHashSet_Access_Array_Access;
   subtype ABHashSet_Access_Array_Access_Array is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access_Array;
   use type ABHashSet_Access_Array_Access_Array;
   subtype ABHashSet_Access_Array_Access_Array_Access is org.allbinary.util.ABHashSet_Package_References.ABHashSet_Access_Array_Access_Array_Access;
   use type ABHashSet_Access_Array_Access_Array_Access;
   subtype ABPriorityQueue_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access;
   use type ABPriorityQueue_Access;
   subtype ABPriorityQueue_Access_Array is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array;
   use type ABPriorityQueue_Access_Array;
   subtype ABPriorityQueue_Access_Array_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access;
   use type ABPriorityQueue_Access_Array_Access;
   subtype ABPriorityQueue_Access_Array_Access_Array is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access_Array;
   use type ABPriorityQueue_Access_Array_Access_Array;
   subtype ABPriorityQueue_Access_Array_Access_Array_Access is org.allbinary.util.ABPriorityQueue_Package_References.ABPriorityQueue_Access_Array_Access_Array_Access;
   use type ABPriorityQueue_Access_Array_Access_Array_Access;
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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype PathFindingNodeCost_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access;
   use type PathFindingNodeCost_Access;
   subtype PathFindingNodeCost_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array;
   use type PathFindingNodeCost_Access_Array;
   subtype PathFindingNodeCost_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access;
   use type PathFindingNodeCost_Access_Array_Access;
   subtype PathFindingNodeCost_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access_Array;
   use type PathFindingNodeCost_Access_Array_Access_Array;
   subtype PathFindingNodeCost_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCost_Package_References.PathFindingNodeCost_Access_Array_Access_Array_Access;
   use type PathFindingNodeCost_Access_Array_Access_Array_Access;
   subtype PathFindingNode_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access;
   use type PathFindingNode_Access;
   subtype PathFindingNode_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array;
   use type PathFindingNode_Access_Array;
   subtype PathFindingNode_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access;
   use type PathFindingNode_Access_Array_Access;
   subtype PathFindingNode_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access_Array;
   use type PathFindingNode_Access_Array_Access_Array;
   subtype PathFindingNode_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References.PathFindingNode_Access_Array_Access_Array_Access;
   use type PathFindingNode_Access_Array_Access_Array_Access;
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


   subtype PathFinder_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.PathFinder_Access;
   function "=" (Left, Right : PathFinder_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References."=";
   subtype PathFinder_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.PathFinder_Access_Array;
   function "=" (Left, Right : PathFinder_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References."=";
   subtype PathFinder_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.PathFinder_Access_Array_Access;
   function "=" (Left, Right : PathFinder_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References."=";
   function Java_Box (Value : PathFinder_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.Java_Box;
   function Java_Unbox_PathFinder_Access_Array (Value : access Java_Object'Class) return PathFinder_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.Java_Unbox_PathFinder_Access_Array;
   subtype PathFinder_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.PathFinder_Access_Array_Access_Array;
   function "=" (Left, Right : PathFinder_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References."=";
   subtype PathFinder_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.PathFinder_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFinder_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References."=";
   function Java_Box (Value : PathFinder_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.Java_Box;
   function Java_Unbox_PathFinder_Access_Array_Access_Array (Value : access Java_Object'Class) return PathFinder_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package_References.Java_Unbox_PathFinder_Access_Array_Access_Array;

   type PathFinder is new GeographicPathFinderBase with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
      mathUtil : MathUtil_Access;
      openPriorityQueue : ABPriorityQueue_Access;
      closedSet : ABHashSet_Access;
      geographicMapInterface : Java_Object_Access;
      costArray : PathFindingNodeCost_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PathFinder'Class);
   function Create return PathFinder_Access;
   procedure init (This : in out PathFinder; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   function searchTotalPath (This : in out PathFinder; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer) return BasicArrayList_Access;
   procedure searchTotalPath (This : in out PathFinder; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer);
   function searchTotalPathN (This : in out PathFinder; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure searchTotalPathN (This : in out PathFinder; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function search (This : in out PathFinder; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class) return BasicArrayList_Access;
   procedure search (This : in out PathFinder; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class);
   procedure searchStart (This : in out PathFinder; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function searchN (This : in out PathFinder; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure searchN (This : in out PathFinder; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function findPath (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; target_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return BasicArrayList_Access;
   procedure findPath (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; target_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure findPathStart (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; target_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function findPathEnd (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; target_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access;
   procedure findPathEnd (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; target_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; multipassState_Param : access MultipassState_Package.MultipassState'Class);
   function extractPath (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; current_Param : access PathFindingNodeCost_Package.PathFindingNodeCost'Class) return BasicArrayList_Access;
   procedure extractPath (This : in out PathFinder; start_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; current_Param : access PathFindingNodeCost_Package.PathFindingNodeCost'Class);

end org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package;


