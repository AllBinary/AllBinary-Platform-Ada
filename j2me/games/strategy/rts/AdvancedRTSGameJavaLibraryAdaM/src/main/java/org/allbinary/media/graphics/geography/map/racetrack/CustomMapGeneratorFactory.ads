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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References is
   type CustomMapGeneratorFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package.CustomMapGeneratorFactory'Class;
   type CustomMapGeneratorFactory_Access_Array is array (Natural range <>) of CustomMapGeneratorFactory_Access;
   type CustomMapGeneratorFactory_Access_Array_Access is access all CustomMapGeneratorFactory_Access_Array;
   type CustomMapGeneratorFactory_Access_Array_Access_Array is array (Natural range <>) of CustomMapGeneratorFactory_Access_Array_Access;
   type CustomMapGeneratorFactory_Access_Array_Access_Array_Access is access all CustomMapGeneratorFactory_Access_Array_Access_Array;
   type CustomMapGeneratorFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomMapGeneratorFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomMapGeneratorFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomMapGeneratorFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomMapGeneratorFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomMapGeneratorFactory_Access_Array_Access is (if Value /= null and then Value.all in CustomMapGeneratorFactory_Access_Array_Object'Class then CustomMapGeneratorFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CustomMapGeneratorFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CustomMapGeneratorFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CustomMapGeneratorFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CustomMapGeneratorFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CustomMapGeneratorFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CustomMapGeneratorFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CustomMapGeneratorFactory_Access_Array_Access_Array_Object'Class then CustomMapGeneratorFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBaseFactory_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package;
with org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorBase_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package is

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


   subtype CustomMapGeneratorFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.CustomMapGeneratorFactory_Access;
   function "=" (Left, Right : CustomMapGeneratorFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References."=";
   subtype CustomMapGeneratorFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.CustomMapGeneratorFactory_Access_Array;
   function "=" (Left, Right : CustomMapGeneratorFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References."=";
   subtype CustomMapGeneratorFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.CustomMapGeneratorFactory_Access_Array_Access;
   function "=" (Left, Right : CustomMapGeneratorFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References."=";
   function Java_Box (Value : CustomMapGeneratorFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.Java_Box;
   function Java_Unbox_CustomMapGeneratorFactory_Access_Array (Value : access Java_Object'Class) return CustomMapGeneratorFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.Java_Unbox_CustomMapGeneratorFactory_Access_Array;
   subtype CustomMapGeneratorFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.CustomMapGeneratorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CustomMapGeneratorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References."=";
   subtype CustomMapGeneratorFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.CustomMapGeneratorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CustomMapGeneratorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References."=";
   function Java_Box (Value : CustomMapGeneratorFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.Java_Box;
   function Java_Unbox_CustomMapGeneratorFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CustomMapGeneratorFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package_References.Java_Unbox_CustomMapGeneratorFactory_Access_Array_Access_Array;

   type CustomMapGeneratorFactory is new CustomMapGeneratorBaseFactory with null record;

   procedure Initialize (This : in out CustomMapGeneratorFactory'Class);
   function Create return CustomMapGeneratorFactory_Access;
   function create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class) return CustomMapGeneratorBase_Access;
   procedure create (This : in out CustomMapGeneratorFactory; raceTrackGeographicMap_Param : access RaceTrackGeographicMap_Package.RaceTrackGeographicMap'Class);

end org.allbinary.media.graphics.geography.map.racetrack.CustomMapGeneratorFactory_Package;


