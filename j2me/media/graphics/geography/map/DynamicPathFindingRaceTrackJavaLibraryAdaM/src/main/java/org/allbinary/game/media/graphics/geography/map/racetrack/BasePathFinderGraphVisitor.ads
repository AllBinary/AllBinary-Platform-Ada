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
with org.jgrapht.graph.SimpleWeightedGraph_Package; use org.jgrapht.graph.SimpleWeightedGraph_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package is

   package GraphPath_Package renames Standard.org.jgrapht.GraphPath_Package;
   package SimpleWeightedGraph_Package renames Standard.org.jgrapht.graph.SimpleWeightedGraph_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFinderGraphVisitorBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;
   package PathFindingNode_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNode_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type BasePathFinderGraphVisitor is tagged;
   type BasePathFinderGraphVisitor_Access is access all BasePathFinderGraphVisitor'Class;
   type BasePathFinderGraphVisitor_Access_Array is array (Natural range <>) of BasePathFinderGraphVisitor_Access;
   type BasePathFinderGraphVisitor_Access_Array_Access is access all BasePathFinderGraphVisitor_Access_Array;

   type BasePathFinderGraphVisitor is new PathFinderGraphVisitorBase with record
      geographicMapInterface : BasicGeographicMap_Access;
      edgeMinimum : Integer;
      minPathWeight : Integer;
      maxPathWeight : Integer;
   end record;

   procedure Initialize (This : in out BasePathFinderGraphVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return BasePathFinderGraphVisitor_Access;
   procedure visit (This : in out BasePathFinderGraphVisitor; graph_Param : access SimpleWeightedGraph_Package.SimpleWeightedGraph'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixPath (This : in out BasePathFinderGraphVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Boolean;
   procedure isValid (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class);
   function getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class) return Unbounded_String;
   procedure getInvalidReason (This : in out BasePathFinderGraphVisitor; graphPath_Param : access GraphPath_Package.GraphPath'Class);

end org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;


