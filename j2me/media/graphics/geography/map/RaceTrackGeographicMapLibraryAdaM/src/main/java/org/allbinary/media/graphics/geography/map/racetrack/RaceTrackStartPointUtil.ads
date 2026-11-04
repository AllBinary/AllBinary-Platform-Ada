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

limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References is
   type RaceTrackStartPointUtil_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package.RaceTrackStartPointUtil'Class;
   type RaceTrackStartPointUtil_Access_Array is array (Natural range <>) of RaceTrackStartPointUtil_Access;
   type RaceTrackStartPointUtil_Access_Array_Access is access all RaceTrackStartPointUtil_Access_Array;
   type RaceTrackStartPointUtil_Access_Array_Access_Array is array (Natural range <>) of RaceTrackStartPointUtil_Access_Array_Access;
   type RaceTrackStartPointUtil_Access_Array_Access_Array_Access is access all RaceTrackStartPointUtil_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
with org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package PathFindingInfo_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype PathFindingInfo_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access;
   use type PathFindingInfo_Access;
   subtype PathFindingInfo_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array;
   use type PathFindingInfo_Access_Array;
   subtype PathFindingInfo_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access;
   subtype PathFindingInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array;
   use type PathFindingInfo_Access_Array_Access_Array;
   subtype PathFindingInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo_Package_References.PathFindingInfo_Access_Array_Access_Array_Access;
   use type PathFindingInfo_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackStartPointUtil_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References.RaceTrackStartPointUtil_Access;
   function "=" (Left, Right : RaceTrackStartPointUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References."=";
   subtype RaceTrackStartPointUtil_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References.RaceTrackStartPointUtil_Access_Array;
   function "=" (Left, Right : RaceTrackStartPointUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References."=";
   subtype RaceTrackStartPointUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References.RaceTrackStartPointUtil_Access_Array_Access;
   function "=" (Left, Right : RaceTrackStartPointUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References."=";
   subtype RaceTrackStartPointUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References.RaceTrackStartPointUtil_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackStartPointUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References."=";
   subtype RaceTrackStartPointUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References.RaceTrackStartPointUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackStartPointUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package_References."=";

   type RaceTrackStartPointUtil is new Java_Object with null record;

   procedure Initialize (This : in out RaceTrackStartPointUtil'Class);
   function Create return RaceTrackStartPointUtil_Access;
   function get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer) return GPoint_Access;
   procedure get (geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class; pathFindingInfo_Param : access PathFindingInfo_Package.PathFindingInfo'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackStartPointUtil_Package;


