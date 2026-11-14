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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References is
   type RaceTrackGeographicMapCellType_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package.RaceTrackGeographicMapCellType'Class;
   type RaceTrackGeographicMapCellType_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellType_Access;
   type RaceTrackGeographicMapCellType_Access_Array_Access is access all RaceTrackGeographicMapCellType_Access_Array;
   type RaceTrackGeographicMapCellType_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellType_Access_Array_Access;
   type RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapCellType_Access_Array_Access_Array;
   type RaceTrackGeographicMapCellType_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellType_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellType_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellType_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellType_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellType_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellType_Access_Array_Object'Class then RaceTrackGeographicMapCellType_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGeographicMapCellType_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellType_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellType_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellType_Access_Array_Access_Array_Object'Class then RaceTrackGeographicMapCellType_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References;
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
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellType_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellType_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellType_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.Java_Unbox_RaceTrackGeographicMapCellType_Access_Array;
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellType_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.Java_Unbox_RaceTrackGeographicMapCellType_Access_Array_Access_Array;

   type RaceTrackGeographicMapCellType is new GeographicMapCellType with record
      name : Unbounded_String;
      travelCost : Integer;
   end record;

   procedure Initialize (This : in out RaceTrackGeographicMapCellType'Class; name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer);
   function Create (name : Unbounded_String; type_Id : Integer; travelCost : Integer; reset : Integer) return RaceTrackGeographicMapCellType_Access;
   function getTravelCost (This : in out RaceTrackGeographicMapCellType) return Integer;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;


