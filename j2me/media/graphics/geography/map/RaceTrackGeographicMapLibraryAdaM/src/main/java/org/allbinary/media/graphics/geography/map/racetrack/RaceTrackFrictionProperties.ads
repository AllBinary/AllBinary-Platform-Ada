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

with AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References is
   type RaceTrackFrictionProperties_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package.RaceTrackFrictionProperties'Class;
   type RaceTrackFrictionProperties_Access_Array is array (Natural range <>) of RaceTrackFrictionProperties_Access;
   type RaceTrackFrictionProperties_Access_Array_Access is access all RaceTrackFrictionProperties_Access_Array;
   type RaceTrackFrictionProperties_Access_Array_Access_Array is array (Natural range <>) of RaceTrackFrictionProperties_Access_Array_Access;
   type RaceTrackFrictionProperties_Access_Array_Access_Array_Access is access all RaceTrackFrictionProperties_Access_Array_Access_Array;
   type RaceTrackFrictionProperties_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackFrictionProperties_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackFrictionProperties_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackFrictionProperties_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackFrictionProperties_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackFrictionProperties_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackFrictionProperties_Access_Array_Object'Class then RaceTrackFrictionProperties_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackFrictionProperties_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackFrictionProperties_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackFrictionProperties_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackFrictionProperties_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackFrictionProperties_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackFrictionProperties_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackFrictionProperties_Access_Array_Access_Array_Object'Class then RaceTrackFrictionProperties_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackFrictionProperties_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access;
   function "=" (Left, Right : RaceTrackFrictionProperties_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References."=";
   subtype RaceTrackFrictionProperties_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array;
   function "=" (Left, Right : RaceTrackFrictionProperties_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References."=";
   subtype RaceTrackFrictionProperties_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access;
   function "=" (Left, Right : RaceTrackFrictionProperties_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References."=";
   function Java_Box (Value : RaceTrackFrictionProperties_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.Java_Box;
   function Java_Unbox_RaceTrackFrictionProperties_Access_Array (Value : access Java_Object'Class) return RaceTrackFrictionProperties_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.Java_Unbox_RaceTrackFrictionProperties_Access_Array;
   subtype RaceTrackFrictionProperties_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackFrictionProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References."=";
   subtype RaceTrackFrictionProperties_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.RaceTrackFrictionProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackFrictionProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References."=";
   function Java_Box (Value : RaceTrackFrictionProperties_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.Java_Box;
   function Java_Unbox_RaceTrackFrictionProperties_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackFrictionProperties_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package_References.Java_Unbox_RaceTrackFrictionProperties_Access_Array_Access_Array;

   type RaceTrackFrictionProperties is new Java_Object with record
      ROAD_FRICTION_NOMINATOR : Integer;
      GROUND_FRICTION_NOMINATOR : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackFrictionProperties'Class; roadFriction : Integer; groundFriction : Integer);
   function Create (roadFriction : Integer; groundFriction : Integer) return RaceTrackFrictionProperties_Access;
   function getRoadFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer;
   function getGroundFrictionNominator (This : in out RaceTrackFrictionProperties) return Integer;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;


