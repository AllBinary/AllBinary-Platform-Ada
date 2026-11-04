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

limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References is
   type RaceTrackInfo_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package.RaceTrackInfo'Class;
   type RaceTrackInfo_Access_Array is array (Natural range <>) of RaceTrackInfo_Access;
   type RaceTrackInfo_Access_Array_Access is access all RaceTrackInfo_Access_Array;
   type RaceTrackInfo_Access_Array_Access_Array is array (Natural range <>) of RaceTrackInfo_Access_Array_Access;
   type RaceTrackInfo_Access_Array_Access_Array_Access is access all RaceTrackInfo_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package is

   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package Reference_Types is
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype RaceTrackFrictionProperties_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access;
   use type RaceTrackFrictionProperties_Access;
   subtype RaceTrackFrictionProperties_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array;
   use type RaceTrackFrictionProperties_Access_Array;
   subtype RaceTrackFrictionProperties_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access;
   use type RaceTrackFrictionProperties_Access_Array_Access;
   subtype RaceTrackFrictionProperties_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access_Array;
   use type RaceTrackFrictionProperties_Access_Array_Access_Array;
   subtype RaceTrackFrictionProperties_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access_Array_Access;
   use type RaceTrackFrictionProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   function "=" (Left, Right : RaceTrackInfo_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References."=";

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


