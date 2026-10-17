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
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package; use org.allbinary.media.graphics.geography.pathfinding.PathGeneratorInterface_Package;

package org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package is

   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type PathGenerator is tagged;
   type PathGenerator_Access is access all PathGenerator'Class;
   type PathGenerator_Access_Array is array (Natural range <>) of PathGenerator_Access;
   type PathGenerator_Access_Array_Access is access all PathGenerator_Access_Array;

   type PathGenerator is new PathGeneratorInterface with null record;
   SINGLETON : PathGenerator_Access;

   procedure Initialize (This : in out PathGenerator'Class);
   function Create return PathGenerator_Access;
   function getInstance return PathGenerator_Access;
   procedure getInstance;
   procedure init (This : in out PathGenerator; geographicMapInterface : Java_Object_Access; totalPaths : Integer);
   function getInstanceNoCache (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure getInstanceNoCache (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer);
   function createList (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure createList (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; geographicMapCellHistory : GeographicMapCellHistory_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer);
   function create (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer) return BasicArrayList_Access;
   procedure create (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer);
   function createN (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer; multipassState : MultipassState_Access) return BasicArrayList_Access;
   procedure createN (This : in out PathGenerator; geographicMapInterface : BasicGeographicMap_Access; pathFindingInfo : PathFindingInfo_Access; totalPaths : Integer; multipassState : MultipassState_Access);
   function isValid (This : in out PathGenerator; pathList : BasicArrayList_Access; geographicMapCellHistory : GeographicMapCellHistory_Access) return Boolean;
   procedure isValid (This : in out PathGenerator; pathList : BasicArrayList_Access; geographicMapCellHistory : GeographicMapCellHistory_Access);

end org.allbinary.media.graphics.geography.pathfinding.PathGenerator_Package;


