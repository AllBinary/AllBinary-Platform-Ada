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
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;

   type RaceTrackInfo is tagged;
   type RaceTrackInfo_Access is access all RaceTrackInfo'Class;
   type RaceTrackInfo_Access_Array is array (Natural range <>) of RaceTrackInfo_Access;
   type RaceTrackInfo_Access_Array_Access is access all RaceTrackInfo_Access_Array;

   type RaceTrackInfo is new Java_Object with record
      id : Integer;
      name : Unbounded_String;
      raceTrackFrictionProperties : RaceTrackFrictionProperties_Access;
      foregroundBasicColor : BasicColor_Access;
      backgroundBasicColor : BasicColor_Access;
      qualifyTime : Integer;
      worstContinuePosition : Integer;
      totalLaps : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackInfo'Class; id : Integer; name : Unbounded_String; raceTrackFrictionProperties_Param : access RaceTrackFrictionProperties_Package.RaceTrackFrictionProperties'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; qualifyTime : Integer; worstContinuePosition : Integer; totalLaps : Integer);
   function Create (id : Integer; name : Unbounded_String; raceTrackFrictionProperties_Param : access RaceTrackFrictionProperties_Package.RaceTrackFrictionProperties'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; qualifyTime : Integer; worstContinuePosition : Integer; totalLaps : Integer) return RaceTrackInfo_Access;
   function getId (This : in out RaceTrackInfo) return Integer;
   procedure setId (This : in out RaceTrackInfo; id : Integer);
   function getName (This : in out RaceTrackInfo) return Unbounded_String;
   procedure setName (This : in out RaceTrackInfo; name : Unbounded_String);
   function getQualifyTime (This : in out RaceTrackInfo) return Integer;
   procedure setQualifyTime (This : in out RaceTrackInfo; qualifyTime : Integer);
   function getWorstContinuePosition (This : in out RaceTrackInfo) return Integer;
   procedure setWorstContinuePosition (This : in out RaceTrackInfo; worstContinuePosition : Integer);
   function getTotalLaps (This : in out RaceTrackInfo) return Integer;
   procedure setTotalLaps (This : in out RaceTrackInfo; totalLaps : Integer);
   function getForegroundBasicColor (This : in out RaceTrackInfo) return BasicColor_Access;
   procedure setForegroundBasicColor (This : in out RaceTrackInfo; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getBackgroundBasicColor (This : in out RaceTrackInfo) return BasicColor_Access;
   procedure setBackgroundBasicColor (This : in out RaceTrackInfo; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class);
   function getRaceTrackFrictionProperties (This : in out RaceTrackInfo) return RaceTrackFrictionProperties_Access;
   procedure setRaceTrackFrictionProperties (This : in out RaceTrackInfo; raceTrackFrictionProperties_Param : access RaceTrackFrictionProperties_Package.RaceTrackFrictionProperties'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;


