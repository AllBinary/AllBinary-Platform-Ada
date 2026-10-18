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
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;

   type RaceTrackGeographicMapCellType is tagged;
   type RaceTrackGeographicMapCellType_Access is access all RaceTrackGeographicMapCellType'Class;
   type RaceTrackGeographicMapCellType_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellType_Access;
   type RaceTrackGeographicMapCellType_Access_Array_Access is access all RaceTrackGeographicMapCellType_Access_Array;
   type RaceTrackGeographicMapCellType_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellType_Access_Array_Access;
   type RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapCellType_Access_Array_Access_Array;

   type RaceTrackGeographicMapCellType is new GeographicMapCellType with record
      name : Unbounded_String;
      travelCost : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackGeographicMapCellType'Class; name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer);
   function Create (name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer) return RaceTrackGeographicMapCellType_Access;
   function getTravelCost (This : in out RaceTrackGeographicMapCellType) return Integer;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;


