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
   procedure init (This : in out PathGenerator; geographicMapInterface_Param : access Java_Object'Class; totalPaths : Integer) is
      geographicMapInterface : Java_Object_Access := Java_Object_Access (geographicMapInterface_Param);
   begin
        null;
   end init;

   --  throws Exception
   function getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      geographicMapCellPositionBasicArrayList : BasicArrayList_Access;
   begin
        geographicMapCellPositionBasicArrayList := This.create (geographicMapInterface, pathFindingInfo, totalPaths);
        return geographicMapCellPositionBasicArrayList;
   end getInstanceNoCache;

   --  throws Exception
   function createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      geographicMapCellHistory : GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end createList;

   --  throws Exception
   function create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) return BasicArrayList_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
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
   function createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState'Class) return BasicArrayList_Access is
      geographicMapInterface : BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      pathFindingInfo : PathFindingInfo_Access := PathFindingInfo_Access (pathFindingInfo_Param);
      multipassState : MultipassState_Access := MultipassState_Access (multipassState_Param);
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
   function isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class) return Boolean is
      pathList : BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      geographicMapCellHistory : GeographicMapCellHistory_Access := GeographicMapCellHistory_Access (geographicMapCellHistory_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end isValid;

   procedure getInstanceNoCache (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).getInstanceNoCache (geographicMapInterface_Param, pathFindingInfo_Param, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceNoCache;

   procedure createList (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createList (geographicMapInterface_Param, geographicMapCellHistory_Param, pathFindingInfo_Param, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createList;

   procedure create (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).create (geographicMapInterface_Param, pathFindingInfo_Param, totalPaths);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end create;

   procedure createN (This : in out PathGenerator; geographicMapInterface_Param : access BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo'Class; totalPaths : Integer; multipassState_Param : access MultipassState'Class) is
      Java_Result : constant BasicArrayList_Access := PathGenerator'Class (This).createN (geographicMapInterface_Param, pathFindingInfo_Param, totalPaths, multipassState_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createN;

   procedure isValid (This : in out PathGenerator; pathList_Param : access BasicArrayList'Class; geographicMapCellHistory_Param : access GeographicMapCellHistory'Class) is
      Java_Result : constant Boolean := PathGenerator'Class (This).isValid (pathList_Param, geographicMapCellHistory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isValid;

begin
   null;
   SINGLETON := PathGenerator_Package.Create;

end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;


