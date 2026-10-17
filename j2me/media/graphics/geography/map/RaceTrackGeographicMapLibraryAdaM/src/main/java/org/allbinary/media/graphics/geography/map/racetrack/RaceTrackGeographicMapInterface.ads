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
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package is

   package GeographicMapInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;

   type RaceTrackGeographicMapInterface is interface and GeographicMapInterface;
   type RaceTrackGeographicMapInterface_Access is access all RaceTrackGeographicMapInterface'Class;
   type RaceTrackGeographicMapInterface_Access_Array is array (Natural range <>) of RaceTrackGeographicMapInterface_Access;
   type RaceTrackGeographicMapInterface_Access_Array_Access is access all RaceTrackGeographicMapInterface_Access_Array;
   function getRaceTrackInfo (This : in out RaceTrackGeographicMapInterface) return RaceTrackInfo_Access is abstract;
   procedure setRaceTrackInfo (This : in out RaceTrackGeographicMapInterface; aRaceTrackInfo_Param : access RaceTrackInfo'Class) is abstract;
   function getRaceTrackData (This : in out RaceTrackGeographicMapInterface) return RaceTrackData_Access is abstract;
   procedure setRaceTrackData (This : in out RaceTrackGeographicMapInterface; raceTrackData_Param : access RaceTrackData'Class) is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;


