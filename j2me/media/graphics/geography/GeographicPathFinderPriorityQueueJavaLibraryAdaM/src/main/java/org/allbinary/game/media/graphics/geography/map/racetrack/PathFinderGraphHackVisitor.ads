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
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package; use org.allbinary.game.media.graphics.geography.map.racetrack.BasePathFinderGraphVisitor_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;

   type PathFinderGraphHackVisitor is tagged;
   type PathFinderGraphHackVisitor_Access is access all PathFinderGraphHackVisitor'Class;
   type PathFinderGraphHackVisitor_Access_Array is array (Natural range <>) of PathFinderGraphHackVisitor_Access;
   type PathFinderGraphHackVisitor_Access_Array_Access is access all PathFinderGraphHackVisitor_Access_Array;

   type PathFinderGraphHackVisitor is new BasePathFinderGraphVisitor with null record;

   procedure Initialize (This : in out PathFinderGraphHackVisitor'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return PathFinderGraphHackVisitor_Access;
   procedure visit (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixStart (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixEnd (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure fixOverPassEdges (This : in out PathFinderGraphHackVisitor; graph_Param : access Java_Object'Class);
   procedure fixPath (This : in out PathFinderGraphHackVisitor; startPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; endPathFindingNodeList_Param : access BasicArrayList_Package.BasicArrayList'Class; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure removeOverPassEdges (This : in out PathFinderGraphHackVisitor; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access Java_Object'Class) return Boolean;
   procedure isValid (This : in out PathFinderGraphHackVisitor; graphPath_Param : access Java_Object'Class);

end org.allbinary.game.media.graphics.geography.map.racetrack.PathFinderGraphHackVisitor_Package;


