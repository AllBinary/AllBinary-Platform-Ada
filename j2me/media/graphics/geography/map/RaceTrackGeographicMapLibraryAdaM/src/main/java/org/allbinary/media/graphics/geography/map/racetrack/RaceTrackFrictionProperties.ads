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

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package is


   type RaceTrackFrictionProperties is tagged;
   type RaceTrackFrictionProperties_Access is access all RaceTrackFrictionProperties'Class;
   type RaceTrackFrictionProperties_Access_Array is array (Natural range <>) of RaceTrackFrictionProperties_Access;
   type RaceTrackFrictionProperties_Access_Array_Access is access all RaceTrackFrictionProperties_Access_Array;
   type RaceTrackFrictionProperties_Access_Array_Access_Array is array (Natural range <>) of RaceTrackFrictionProperties_Access_Array_Access;
   type RaceTrackFrictionProperties_Access_Array_Access_Array_Access is access all RaceTrackFrictionProperties_Access_Array_Access_Array;

   type RaceTrackFrictionProperties is new Java_Object with record
      ROAD_FRICTION_NOMINATOR : Integer;
      GROUND_FRICTION_NOMINATOR : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackFrictionProperties'Class; roadFriction : Integer; groundFriction : Integer);
   function Create (roadFriction : Integer; groundFriction : Integer) return RaceTrackFrictionProperties_Access;
   function getRoadFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer;
   function getGroundFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;


