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
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;

package org.allbinary.media.graphics.geography.map.racetrack.NormalRaceTrackGeographicMapCellTypeFactory_Package is


   type NormalRaceTrackGeographicMapCellTypeFactory is tagged;
   type NormalRaceTrackGeographicMapCellTypeFactory_Access is access all NormalRaceTrackGeographicMapCellTypeFactory'Class;
   type NormalRaceTrackGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of NormalRaceTrackGeographicMapCellTypeFactory_Access;
   type NormalRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is access all NormalRaceTrackGeographicMapCellTypeFactory_Access_Array;

   type NormalRaceTrackGeographicMapCellTypeFactory is new RaceTrackGeographicMapCellTypeFactory with null record;
   instanceC : NormalRaceTrackGeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out NormalRaceTrackGeographicMapCellTypeFactory'Class);
   function Create return NormalRaceTrackGeographicMapCellTypeFactory_Access;
   function getInstance return NormalRaceTrackGeographicMapCellTypeFactory_Access;
   procedure getInstance;

end org.allbinary.media.graphics.geography.map.racetrack.NormalRaceTrackGeographicMapCellTypeFactory_Package;


