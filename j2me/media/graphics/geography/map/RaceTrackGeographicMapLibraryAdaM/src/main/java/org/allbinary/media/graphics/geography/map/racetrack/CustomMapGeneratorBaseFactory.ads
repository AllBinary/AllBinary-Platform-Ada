-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package is


   type CustomMapGeneratorBaseFactory is tagged;
   type CustomMapGeneratorBaseFactory_Access is access all CustomMapGeneratorBaseFactory'Class;
   type CustomMapGeneratorBaseFactory_Access_Array is array (Natural range <>) of CustomMapGeneratorBaseFactory_Access;
   type CustomMapGeneratorBaseFactory_Access_Array_Access is access all CustomMapGeneratorBaseFactory_Access_Array;
   type CustomMapGeneratorBaseFactory_Access_Array_Access_Array is array (Natural range <>) of CustomMapGeneratorBaseFactory_Access_Array_Access;
   type CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access is access all CustomMapGeneratorBaseFactory_Access_Array_Access_Array;

   type CustomMapGeneratorBaseFactory is new Java_Object with null record;
   instance : CustomMapGeneratorBaseFactory_Access;

   procedure Initialize (This : in out CustomMapGeneratorBaseFactory'Class);
   function Create return CustomMapGeneratorBaseFactory_Access;
   function getInstance return CustomMapGeneratorBaseFactory_Access;
   function create (This : in out CustomMapGeneratorBaseFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGeneratorBase_Access;
   procedure create (This : in out CustomMapGeneratorBaseFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class);

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;


