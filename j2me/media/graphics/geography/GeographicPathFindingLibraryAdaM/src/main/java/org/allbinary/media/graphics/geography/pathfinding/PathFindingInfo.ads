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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;

   type PathFindingInfo is tagged;
   type PathFindingInfo_Access is access all PathFindingInfo'Class;
   type PathFindingInfo_Access_Array is array (Natural range <>) of PathFindingInfo_Access;
   type PathFindingInfo_Access_Array_Access is access all PathFindingInfo_Access_Array;

   type PathFindingInfo is new PathFindingInfoInterface with record
      pathFinder : GeographicPathFinderBase_Access;
      startPathFindingNodeList : BasicArrayList_Access;
      endPathFindingNodeList : BasicArrayList_Access;
      pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access;
   end record;
   NULL_PATH_FINDING_INFO : PathFindingInfo_Access;

   procedure Initialize (This : in out PathFindingInfo'Class; pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access);
   function Create (pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access) return PathFindingInfo_Access;
   function getStartPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access;
   function getEndPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access;
   function getPathFinder (This : in out PathFindingInfo) return GeographicPathFinderBase_Access;
   procedure addStartPathFindingNode (This : in out PathFindingInfo; startPathFindingNode : PathFindingNode_Access);
   procedure addEndPathFindingNode (This : in out PathFindingInfo; endPathFindingNode : PathFindingNode_Access);
   procedure setPathFinder (This : in out PathFindingInfo; pathFinder : GeographicPathFinderBase_Access);
   function getPathFindingNodeCostInfoFactoryInterface (This : in out PathFindingInfo) return PathFindingNodeCostInfoFactoryBase_Access;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;


