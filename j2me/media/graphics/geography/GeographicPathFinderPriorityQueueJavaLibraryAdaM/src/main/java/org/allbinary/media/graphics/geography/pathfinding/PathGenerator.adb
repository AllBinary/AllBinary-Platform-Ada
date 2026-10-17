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


package body org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package is

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
   procedure init (This : in out PathGenerator; geographicMapInterface : Java_Object_Access; totalPaths : Integer) is
   begin
        null;
   end init;

   --  throws Exception
   function getInstanceNoCache (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        geographicMapCellPositionBasicArrayList := This.create (geographicMapInterface, pathFindingInfo, totalPaths);
        return geographicMapCellPositionBasicArrayList;
   end getInstanceNoCache;

   --  throws Exception
   function createList (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createList;

   --  throws Exception
   function create (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access is
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
   function createN (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access is
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
   function isValid (This : in out PathGenerator; pathList : BasicArrayList_Access; geographicMapCellHistory : GeographicMapCellHistory_Access) return Boolean is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   procedure getInstanceNoCache (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).getInstanceNoCache (geographicMapInterface, pathFindingInfo, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceNoCache;

   procedure createList (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createList (geographicMapInterface, geographicMapCellHistory, pathFindingInfo, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

   procedure create (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).create (geographicMapInterface, pathFindingInfo, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure createN (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer; multipassState : MultipassState_Access) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createN (geographicMapInterface, pathFindingInfo, totalPaths, multipassState);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createN;

   procedure isValid (This : in out PathGenerator; pathList : BasicArrayList_Access; geographicMapCellHistory : GeographicMapCellHistory_Access) is
      Java_Result : constant Boolean := PathGenerator'Class (This).isValid (pathList, geographicMapCellHistory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   SINGLETON := PathGenerator_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;


