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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.HashSet_Package; use java.util.HashSet_Package;
--  with java.util.PriorityQueue_Package; use java.util.PriorityQueue_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package MathUtil_Package renames Standard.org.allbinary.logic.math.MathUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type PathFinder is tagged;
   type PathFinder_Access is access all PathFinder'Class;
   type PathFinder_Access_Array is array (Natural range <>) of PathFinder_Access;
   type PathFinder_Access_Array_Access is access all PathFinder_Access_Array;

   type PathFinder is new GeographicPathFinderBase with record
      logUtil : LogUtil_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
      mathUtil : MathUtil_Access;
      openPriorityQueue : PriorityQueue_Access;
      closedSet : HashSet_Access;
      geographicMapInterface : Java_Object_Access;
      costArray : PathFindingNodeCost_Access_Array_Access_Array_Access;
   end record;

   procedure Initialize (This : in out PathFinder'Class);
   function Create return PathFinder_Access;
   procedure init (This : in out PathFinder; geographicMapInterface : BasicGeographicMap_Access);
   function searchTotalPath (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure searchTotalPath (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer);
   function searchTotalPathN (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure searchTotalPathN (This : in out PathFinder; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; totalPaths : Integer; multipassState : MultipassState_Access);
   function search (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access) return BasicArrayList_Access;
   procedure search (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access);
   procedure searchStart (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access);
   function searchN (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure searchN (This : in out PathFinder; startPathFindingNode : PathFindingNode_Access; endPathFindingNode : PathFindingNode_Access; multipassState : MultipassState_Access);
   function findPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access) return BasicArrayList_Access;
   procedure findPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access);
   procedure findPathStart (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access);
   function findPathEnd (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure findPathEnd (This : in out PathFinder; start : GeographicMapCellPosition_Access; target : GeographicMapCellPosition_Access; multipassState : MultipassState_Access);
   function extractPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; current : PathFindingNodeCost_Access) return BasicArrayList_Access;
   procedure extractPath (This : in out PathFinder; start : GeographicMapCellPosition_Access; current : PathFindingNodeCost_Access);

end org.allbinary.media.graphics.geography.pathfinding.PathFinder_Package;


