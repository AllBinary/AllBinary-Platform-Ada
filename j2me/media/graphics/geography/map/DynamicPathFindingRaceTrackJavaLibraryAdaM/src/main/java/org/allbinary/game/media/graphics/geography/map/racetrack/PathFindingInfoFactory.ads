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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapGraph_Package; use org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapGraph_Package;
with org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapPathFinder_Package; use org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapPathFinder_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;
with org.allbinary.util.BasicArrayListS_Package; use org.allbinary.util.BasicArrayListS_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package is

   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package AllBinaryTiledLayer_Package renames org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package BasicGeographicMapUtil_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellType_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package BasePathFindingInfoFactory_Package renames org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory_Package;
   package RaceTrackGeographicMapCellType_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package RaceTrackRoadsGeographicMapCellHistoryFactory_Package renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
   package PathFindingNodeCostInfoFactoryBase_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase_Package;
   package BasicGeographicMapGraph_Package renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapGraph_Package;
   package BasicGeographicMapPathFinder_Package renames org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapPathFinder_Package;
   package PathFinderGraphVisitorFactoryBase_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
   package PathFindingInfo_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package PathFindingNodeCostInfoFactory_Package renames org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory_Package;
   package BasicArrayListS_Package renames org.allbinary.util.BasicArrayListS_Package;

   type PathFindingInfoFactory is tagged;
   type PathFindingInfoFactory_Access is access all PathFindingInfoFactory'Class;
   type PathFindingInfoFactory_Access_Array is array (Natural range <>) of PathFindingInfoFactory_Access;
   type PathFindingInfoFactory_Access_Array_Access is access all PathFindingInfoFactory_Access_Array;

   type PathFindingInfoFactory is new BasePathFindingInfoFactory with record
      MAX_DIRECTIONS : Integer;
      pathFindingInfo : PathFindingInfo_Access;
      basicGeographicMapGraph : BasicGeographicMapGraph_Access;
      basicGeographicMapPathFinder : BasicGeographicMapPathFinder_Access;
      pathFinderGraphVisitorFactoryInterface : PathFinderGraphVisitorFactoryBase_Access;
   end record;
   instance : PathFindingInfoFactory_Access;

   procedure Initialize (This : in out PathFindingInfoFactory'Class; pathFinderGraphVisitorFactoryInterface : PathFinderGraphVisitorFactoryBase_Access; max : Integer);
   function Create (pathFinderGraphVisitorFactoryInterface : PathFinderGraphVisitorFactoryBase_Access; max : Integer) return PathFindingInfoFactory_Access;
   function getInstance return PathFindingInfoFactory_Access;
   procedure getInstance;
   procedure initMax (max : Integer);
   function getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; mapArray : Integer_Array_Access_Array_Access) return PathFindingInfo_Access;
   procedure getInstancePathFindingInfo (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; mapArray : Integer_Array_Access_Array_Access);
   procedure init (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access);
   procedure buildPathFindingNodesForCellPosition (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access; cellPosition : GeographicMapCellPosition_Access);
   procedure buildPathFindingNodes (This : in out PathFindingInfoFactory; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; mapArray : Integer_Array_Access_Array_Access);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory_Package;


