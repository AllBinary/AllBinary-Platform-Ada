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
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package is

   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;

   type RaceTrackRoadsGeographicMapCellHistoryFactory is tagged;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access is access all RaceTrackRoadsGeographicMapCellHistoryFactory'Class;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array is array (Natural range <>) of RaceTrackRoadsGeographicMapCellHistoryFactory_Access;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access is access all RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array;

   type RaceTrackRoadsGeographicMapCellHistoryFactory is new Java_Object with null record;
   geographicMapCellHistory : GeographicMapCellHistory_Access;

   procedure Initialize (This : in out RaceTrackRoadsGeographicMapCellHistoryFactory'Class);
   function Create return RaceTrackRoadsGeographicMapCellHistoryFactory_Access;
   function getInstance return GeographicMapCellHistory_Access;
   procedure getInstance;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;


