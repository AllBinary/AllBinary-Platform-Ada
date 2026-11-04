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

limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References is
   type CustomMapGeneratorBaseFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package.CustomMapGeneratorBaseFactory'Class;
   type CustomMapGeneratorBaseFactory_Access_Array is array (Natural range <>) of CustomMapGeneratorBaseFactory_Access;
   type CustomMapGeneratorBaseFactory_Access_Array_Access is access all CustomMapGeneratorBaseFactory_Access_Array;
   type CustomMapGeneratorBaseFactory_Access_Array_Access_Array is array (Natural range <>) of CustomMapGeneratorBaseFactory_Access_Array_Access;
   type CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access is access all CustomMapGeneratorBaseFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package is

   package Reference_Types is
   subtype CustomMapGeneratorBase_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access;
   use type CustomMapGeneratorBase_Access;
   subtype CustomMapGeneratorBase_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array;
   use type CustomMapGeneratorBase_Access_Array;
   subtype CustomMapGeneratorBase_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access;
   use type CustomMapGeneratorBase_Access_Array_Access;
   subtype CustomMapGeneratorBase_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access_Array;
   use type CustomMapGeneratorBase_Access_Array_Access_Array;
   subtype CustomMapGeneratorBase_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References.CustomMapGeneratorBase_Access_Array_Access_Array_Access;
   use type CustomMapGeneratorBase_Access_Array_Access_Array_Access;
   subtype RaceTrackGeographicMap_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access;
   use type RaceTrackGeographicMap_Access;
   subtype RaceTrackGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array;
   use type RaceTrackGeographicMap_Access_Array;
   subtype RaceTrackGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access;
   use type RaceTrackGeographicMap_Access_Array_Access;
   subtype RaceTrackGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array;
   use type RaceTrackGeographicMap_Access_Array_Access_Array;
   subtype RaceTrackGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References.RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   use type RaceTrackGeographicMap_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype CustomMapGeneratorBaseFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access;
   function "=" (Left, Right : CustomMapGeneratorBaseFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References."=";
   subtype CustomMapGeneratorBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array;
   function "=" (Left, Right : CustomMapGeneratorBaseFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References."=";
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access;
   function "=" (Left, Right : CustomMapGeneratorBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References."=";
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomMapGeneratorBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References."=";
   subtype CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References.CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomMapGeneratorBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package_References."=";

   type CustomMapGeneratorBaseFactory is new Java_Object with null record;
   instance : CustomMapGeneratorBaseFactory_Access;

   procedure Initialize (This : in out CustomMapGeneratorBaseFactory'Class);
   function Create return CustomMapGeneratorBaseFactory_Access;
   function getInstance return CustomMapGeneratorBaseFactory_Access;
   function create (This : in out CustomMapGeneratorBaseFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGeneratorBase_Access;
   procedure create (This : in out CustomMapGeneratorBaseFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class);

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;


