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
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package is


   type RaceTrackGeographicMapCellTypes is tagged;
   type RaceTrackGeographicMapCellTypes_Access is access all RaceTrackGeographicMapCellTypes'Class;
   type RaceTrackGeographicMapCellTypes_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellTypes_Access;
   type RaceTrackGeographicMapCellTypes_Access_Array_Access is access all RaceTrackGeographicMapCellTypes_Access_Array;

   type RaceTrackGeographicMapCellTypes is new Java_Object with record
      BOTTOM_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      VERTICAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      START_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      DEFAULT_FINISH_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
   end record;
   instance : RaceTrackGeographicMapCellTypes_Access;

   procedure Initialize (This : in out RaceTrackGeographicMapCellTypes'Class);
   function Create return RaceTrackGeographicMapCellTypes_Access;
   function getInstance return RaceTrackGeographicMapCellTypes_Access;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package;


