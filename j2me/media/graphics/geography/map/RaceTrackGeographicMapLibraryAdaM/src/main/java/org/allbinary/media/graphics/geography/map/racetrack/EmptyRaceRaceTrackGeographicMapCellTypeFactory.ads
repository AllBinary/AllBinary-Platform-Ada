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
with org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package; use org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package PathFindingNodeCostInfoData_Package renames Standard.org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoData_Package;

   type EmptyRaceRaceTrackGeographicMapCellTypeFactory is tagged;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access is access all EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is access all EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array;

   type EmptyRaceRaceTrackGeographicMapCellTypeFactory is new RaceTrackGeographicMapCellTypeFactory with null record;
   instanceC : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class);
   function Create return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;
   function getInstance return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;

end org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package;


