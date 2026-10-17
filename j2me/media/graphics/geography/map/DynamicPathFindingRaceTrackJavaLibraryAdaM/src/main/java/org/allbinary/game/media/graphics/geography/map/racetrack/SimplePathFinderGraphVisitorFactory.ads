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
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;

package org.allbinary.game.media.graphics.geography.map.racetrack.SimplePathFinderGraphVisitorFactory_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFinderGraphVisitorFactoryBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase_Package;
   package PathFinderGraphVisitorBase_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase_Package;

   type SimplePathFinderGraphVisitorFactory is tagged;
   type SimplePathFinderGraphVisitorFactory_Access is access all SimplePathFinderGraphVisitorFactory'Class;
   type SimplePathFinderGraphVisitorFactory_Access_Array is array (Natural range <>) of SimplePathFinderGraphVisitorFactory_Access;
   type SimplePathFinderGraphVisitorFactory_Access_Array_Access is access all SimplePathFinderGraphVisitorFactory_Access_Array;

   type SimplePathFinderGraphVisitorFactory is new PathFinderGraphVisitorFactoryBase with record
      edgeMinimum : Integer;
      minPathWeight : Integer;
      maxPathWeight : Integer;
   end record;

   procedure Initialize (This : in out SimplePathFinderGraphVisitorFactory'Class; edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer);
   function Create (edgeMinimum : Integer; minPathWeight : Integer; maxPathWeight : Integer) return SimplePathFinderGraphVisitorFactory_Access;
   function getInstance (This : in out SimplePathFinderGraphVisitorFactory; geographicMapInterface : BasicGeographicMap_Access) return PathFinderGraphVisitorBase_Access;
   procedure getInstance (This : in out SimplePathFinderGraphVisitorFactory; geographicMapInterface : BasicGeographicMap_Access);

end org.allbinary.game.media.graphics.geography.map.racetrack.SimplePathFinderGraphVisitorFactory_Package;


