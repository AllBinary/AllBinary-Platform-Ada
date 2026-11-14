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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References is
   type RaceTrackGeographicMapInterface_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package.RaceTrackGeographicMapInterface'Class;
   type RaceTrackGeographicMapInterface_Access_Array is array (Natural range <>) of RaceTrackGeographicMapInterface_Access;
   type RaceTrackGeographicMapInterface_Access_Array_Access is access all RaceTrackGeographicMapInterface_Access_Array;
   type RaceTrackGeographicMapInterface_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapInterface_Access_Array_Access;
   type RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapInterface_Access_Array_Access_Array;
   type RaceTrackGeographicMapInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapInterface_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapInterface_Access_Array_Object'Class then RaceTrackGeographicMapInterface_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGeographicMapInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapInterface_Access_Array_Access_Array_Object'Class then RaceTrackGeographicMapInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package is

   package GeographicMapInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
   package Reference_Types is
   subtype RaceTrackInfo_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access;
   use type RaceTrackInfo_Access;
   subtype RaceTrackInfo_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array;
   use type RaceTrackInfo_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access;
   subtype RaceTrackInfo_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array;
   use type RaceTrackInfo_Access_Array_Access_Array;
   subtype RaceTrackInfo_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package_References.RaceTrackInfo_Access_Array_Access_Array_Access;
   use type RaceTrackInfo_Access_Array_Access_Array_Access;
   subtype RaceTrackData_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access;
   use type RaceTrackData_Access;
   subtype RaceTrackData_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array;
   use type RaceTrackData_Access_Array;
   subtype RaceTrackData_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access;
   subtype RaceTrackData_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array;
   use type RaceTrackData_Access_Array_Access_Array;
   subtype RaceTrackData_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package_References.RaceTrackData_Access_Array_Access_Array_Access;
   use type RaceTrackData_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type RaceTrackGeographicMapInterface is interface and GeographicMapInterface;
   subtype RaceTrackGeographicMapInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapInterface_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapInterface_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.Java_Unbox_RaceTrackGeographicMapInterface_Access_Array;
   subtype RaceTrackGeographicMapInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.Java_Unbox_RaceTrackGeographicMapInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_RaceTrackGeographicMapInterface (Value : RaceTrackGeographicMapInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRaceTrackInfo (This : in out RaceTrackGeographicMapInterface) return RaceTrackInfo_Access is abstract;
   procedure setRaceTrackInfo (This : in out RaceTrackGeographicMapInterface; aRaceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class) is abstract;
   function getRaceTrackData (This : in out RaceTrackGeographicMapInterface) return RaceTrackData_Access is abstract;
   procedure setRaceTrackData (This : in out RaceTrackGeographicMapInterface; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;


