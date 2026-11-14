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


with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;
with org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package; use org.allbinary.media.graphics.geography.pathfinding.GeographicPathFinderBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package; use org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package;

package body org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package is

   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellHistory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
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
   subtype MultipassState_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access;
   function "=" (Left, Right : MultipassState_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   subtype MultipassState_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References.MultipassState_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipassState_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.pathfinding.MultipassState_Package_References."=";
   procedure Initialize_Fields (This : in out PathGenerator'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return PathGenerator_Access is
   begin
        return PathGenerator_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out PathGenerator'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return PathGenerator_Access is
      This : constant PathGenerator_Access := new PathGenerator;
   begin
      PathGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out PathGenerator; geographicMapInterface_Param : access Java_Object'Class; totalPaths : Integer) is
      geographicMapInterface : constant Java_Object_Access := Java_Object_Access (geographicMapInterface_Param);
   begin
        null;
   end init;

   --  throws Exception
   function getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        geographicMapCellPositionBasicArrayList := PathGenerator'Class (This).create (geographicMapInterface, pathFindingInfo, totalPaths);
        return geographicMapCellPositionBasicArrayList;
   end getInstanceNoCache;

   --  throws Exception
   function createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
   end createList;

   --  throws Exception
   function create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      startPathFindingNodeList : BasicArrayList_Access;
      endPathFindingNodeList : BasicArrayList_Access;
      geographicPathFinderInterface : GeographicPathFinderBase_Access;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        startPathFindingNodeList := pathFindingInfo.getStartPathFindingNodeList;
        endPathFindingNodeList := pathFindingInfo.getEndPathFindingNodeList;
        geographicPathFinderInterface := pathFindingInfo.getPathFinder;
        geographicMapCellPositionBasicArrayList := geographicPathFinderInterface.searchTotalPath (startPathFindingNodeList, endPathFindingNodeList, totalPaths);
        return geographicMapCellPositionBasicArrayList;
   end create;

   --  throws Exception
   function createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) return BasicArrayList_Access is
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : constant PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      multipassState : constant MultipassState_Access := MultipassState_Access (multipassState_Param);
      startPathFindingNodeList : BasicArrayList_Access;
      endPathFindingNodeList : BasicArrayList_Access;
      geographicPathFinderInterface : GeographicPathFinderBase_Access;
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        startPathFindingNodeList := pathFindingInfo.getStartPathFindingNodeList;
        endPathFindingNodeList := pathFindingInfo.getEndPathFindingNodeList;
        geographicPathFinderInterface := pathFindingInfo.getPathFinder;
        geographicMapCellPositionBasicArrayList := geographicPathFinderInterface.searchTotalPathN (startPathFindingNodeList, endPathFindingNodeList, totalPaths, multipassState);
        return geographicMapCellPositionBasicArrayList;
   end createN;

   --  throws Exception
   function isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class) return Boolean is
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      geographicMapCellHistory : constant GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return False;
   end isValid;

   procedure getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).getInstanceNoCache (geographicMapInterface_Param => geographicMapInterface_Param, pathFindingInfo_Param => pathFindingInfo_Param, totalPaths => totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceNoCache;

   procedure createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createList (geographicMapInterface_Param => geographicMapInterface_Param, geographicMapCellHistory_Param => geographicMapCellHistory_Param, pathFindingInfo_Param => pathFindingInfo_Param, totalPaths => totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

   procedure create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).create (geographicMapInterface_Param => geographicMapInterface_Param, pathFindingInfo_Param => pathFindingInfo_Param, totalPaths => totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState_Package.MultipassState'Class) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createN (geographicMapInterface_Param => geographicMapInterface_Param, pathFindingInfo_Param => pathFindingInfo_Param, totalPaths => totalPaths, multipassState_Param => multipassState_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createN;

   procedure isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory_Package.GeographicMapCellHistory'Class) is
      Java_Result : constant Boolean := PathGenerator'Class (This).isValid (pathList_Param => pathList_Param, geographicMapCellHistory_Param => geographicMapCellHistory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   SINGLETON := PathGenerator_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;


