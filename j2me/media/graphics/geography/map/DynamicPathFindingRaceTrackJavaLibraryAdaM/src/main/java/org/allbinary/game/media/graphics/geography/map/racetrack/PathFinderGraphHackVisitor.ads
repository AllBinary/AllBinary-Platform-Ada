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

   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface : BasicGeographicMap_Access; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access;
   procedure visit (This : in out PathFinderGraphHackVisitor; graph : SimpleWeightedGraph_Access; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access);
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph : SimpleWeightedGraph_Access; startPathFindingNodeList : BasicArrayList_Access);
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph : SimpleWeightedGraph_Access; endPathFindingNodeList : BasicArrayList_Access);
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph : SimpleWeightedGraph_Access);
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList : BasicArrayList_Access; endPathFindingNodeList : BasicArrayList_Access; pathList : BasicArrayList_Access);
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList : BasicArrayList_Access);
   function isValid (This : in out PathFinderGraphHackVisitor; graphPath : GraphPath_Access) return Boolean;
   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath : GraphPath_Access);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


