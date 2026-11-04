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

limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References is
   type PathFindingInfo_Access is access all org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package.PathFindingInfo'Class;
   type PathFindingInfo_Access_Array is array (Natural range <>) of PathFindingInfo_Access;
   type PathFindingInfo_Access_Array_Access is access all PathFindingInfo_Access_Array;
   type PathFindingInfo_Access_Array_Access_Array is array (Natural range <>) of PathFindingInfo_Access_Array_Access;
   type PathFindingInfo_Access_Array_Access_Array_Access is access all PathFindingInfo_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;

with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfoInterface_Package;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package_References;

package org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
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
   subtype PathFindingNodeCostInfoFactoryBase_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access;
   use type PathFindingNodeCostInfoFactoryBase_Access;
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array;
   use type PathFindingNodeCostInfoFactoryBase_Access_Array;
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access;
   use type PathFindingNodeCostInfoFactoryBase_Access_Array_Access;
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array;
   use type PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array;
   subtype PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package_References.PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access;
   use type PathFindingNodeCostInfoFactoryBase_Access_Array_Access_Array_Access;
   subtype GeographicPathFinderBase_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access;
   use type GeographicPathFinderBase_Access;
   subtype GeographicPathFinderBase_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array;
   use type GeographicPathFinderBase_Access_Array;
   subtype GeographicPathFinderBase_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access;
   use type GeographicPathFinderBase_Access_Array_Access;
   subtype GeographicPathFinderBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access_Array;
   use type GeographicPathFinderBase_Access_Array_Access_Array;
   subtype GeographicPathFinderBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package_References.GeographicPathFinderBase_Access_Array_Access_Array_Access;
   use type GeographicPathFinderBase_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype PathFindingInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access;
   function "=" (Left, Right : PathFindingInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References."=";
   subtype PathFindingInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array;
   function "=" (Left, Right : PathFindingInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References."=";
   subtype PathFindingInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access;
   function "=" (Left, Right : PathFindingInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References."=";
   subtype PathFindingInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array;
   function "=" (Left, Right : PathFindingInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References."=";
   subtype PathFindingInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PathFindingInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References."=";

   type PathFindingInfo is new Java_Object and PathFindingInfoInterface with record
      pathFinder : GeographicPathFinderBase_Access;
      startPathFindingNodeList : BasicArrayList_Access;
      endPathFindingNodeList : BasicArrayList_Access;
      pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase_Access;
   end record;
   NULL_PATH_FINDING_INFO : PathFindingInfo_Access;

   procedure Initialize (This : in out PathFindingInfo'Class; pathFindingNodeCostInfoFactoryInterface_Param : access PathFindingNodeCostInfoFactoryBase_Package.PathFindingNodeCostInfoFactoryBase'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function Create (pathFindingNodeCostInfoFactoryInterface_Param : access PathFindingNodeCostInfoFactoryBase_Package.PathFindingNodeCostInfoFactoryBase'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class) return PathFindingInfo_Access;
   function getStartPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access;
   function getEndPathFindingNodeList (This : in out PathFindingInfo) return BasicArrayList_Access;
   function getPathFinder (This : in out PathFindingInfo) return GeographicPathFinderBase_Access;
   procedure addStartPathFindingNode (This : in out PathFindingInfo; startPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class);
   procedure addEndPathFindingNode (This : in out PathFindingInfo; endPathFindingNode_Param : access PathFindingNode_Package.PathFindingNode'Class);
   procedure setPathFinder (This : in out PathFindingInfo; pathFinder_Param : access GeographicPathFinderBase_Package.GeographicPathFinderBase'Class);
   function getPathFindingNodeCostInfoFactoryInterface (This : in out PathFindingInfo) return PathFindingNodeCostInfoFactoryBase_Access;

end org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;


