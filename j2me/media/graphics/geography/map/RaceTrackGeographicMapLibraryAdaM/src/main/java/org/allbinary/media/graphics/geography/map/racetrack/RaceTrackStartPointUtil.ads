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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;

   type RaceTrackStartPointUtil is tagged;
   type RaceTrackStartPointUtil_Access is access all RaceTrackStartPointUtil'Class;
   type RaceTrackStartPointUtil_Access_Array is array (Natural range <>) of RaceTrackStartPointUtil_Access;
   type RaceTrackStartPointUtil_Access_Array_Access is access all RaceTrackStartPointUtil_Access_Array;
   type RaceTrackStartPointUtil_Access_Array_Access_Array is array (Natural range <>) of RaceTrackStartPointUtil_Access_Array_Access;
   type RaceTrackStartPointUtil_Access_Array_Access_Array_Access is access all RaceTrackStartPointUtil_Access_Array_Access_Array;

   type RaceTrackStartPointUtil is new Java_Object with null record;

   procedure Initialize (This : in out RaceTrackStartPointUtil'Class);
   function Create return RaceTrackStartPointUtil_Access;
   function get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer) return GPoint_Access;
   procedure get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package;


