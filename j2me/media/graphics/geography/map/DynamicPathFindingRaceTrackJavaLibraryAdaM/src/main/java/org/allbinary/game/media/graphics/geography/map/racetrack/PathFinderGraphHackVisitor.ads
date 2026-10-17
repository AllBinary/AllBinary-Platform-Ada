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
with org.jgrapht.GraphPath_Package; use org.jgrapht.GraphPath_Package;
with org.jgrapht.graph.DefaultWeightedEdge_Package; use org.jgrapht.graph.DefaultWeightedEdge_Package;
with org.jgrapht.graph.SimpleWeightedGraph_Package; use org.jgrapht.graph.SimpleWeightedGraph_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.graphics.CellPosition_Package; use org.allbinary.graphics.CellPosition_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package is

   package GraphPath_Package renames Standard.org.jgrapht.GraphPath_Package;
   package DefaultWeightedEdge_Package renames Standard.org.jgrapht.graph.DefaultWeightedEdge_Package;
   package SimpleWeightedGraph_Package renames Standard.org.jgrapht.graph.SimpleWeightedGraph_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package CellPosition_Package renames Standard.org.allbinary.graphics.CellPosition_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package BasicGeographicMapUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package RaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
   package PathFindingNode_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;

   type PathFinderGraphHackVisitor is tagged;
   type PathFinderGraphHackVisitor_Access is access all PathFinderGraphHackVisitor'Class;
   type PathFinderGraphHackVisitor_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitor_Access;
   type PathFinderGraphHackVisitor_Access_Array_Access is access all PathFinderGraphHackVisitor_Access_Array;

   type PathFinderGraphHackVisitor is new BasePathFinderGraphVisitor with record
      logUtil : LogUtil_Access;
   end record;

   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access;
   procedure visit (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class);
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList'Class);
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph'Class; endPathFindingNodeList_Param : access BasicArrayList'Class);
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph_Param : access SimpleWeightedGraph'Class);
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList_Param : access BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList'Class; pathList_Param : access BasicArrayList'Class);
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList_Param : access BasicArrayList'Class);
   function isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath'Class) return Boolean;
   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access GraphPath'Class);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


