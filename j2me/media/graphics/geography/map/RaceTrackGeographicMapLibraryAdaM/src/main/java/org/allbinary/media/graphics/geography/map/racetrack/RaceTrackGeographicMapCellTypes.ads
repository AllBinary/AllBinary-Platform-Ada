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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References is
   type RaceTrackGeographicMapCellTypes_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package.RaceTrackGeographicMapCellTypes'Class;
   type RaceTrackGeographicMapCellTypes_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellTypes_Access;
   type RaceTrackGeographicMapCellTypes_Access_Array_Access is access all RaceTrackGeographicMapCellTypes_Access_Array;
   type RaceTrackGeographicMapCellTypes_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellTypes_Access_Array_Access;
   type RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapCellTypes_Access_Array_Access_Array;
   type RaceTrackGeographicMapCellTypes_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellTypes_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellTypes_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellTypes_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellTypes_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellTypes_Access_Array_Object'Class then RaceTrackGeographicMapCellTypes_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Object'Class then RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package is

   package Reference_Types is
   subtype RaceTrackGeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access;
   use type RaceTrackGeographicMapCellType_Access;
   subtype RaceTrackGeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array;
   use type RaceTrackGeographicMapCellType_Access_Array;
   subtype RaceTrackGeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access;
   use type RaceTrackGeographicMapCellType_Access_Array_Access;
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array;
   use type RaceTrackGeographicMapCellType_Access_Array_Access_Array;
   subtype RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References.RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access;
   use type RaceTrackGeographicMapCellType_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackGeographicMapCellTypes_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.RaceTrackGeographicMapCellTypes_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypes_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References."=";
   subtype RaceTrackGeographicMapCellTypes_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.RaceTrackGeographicMapCellTypes_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypes_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References."=";
   subtype RaceTrackGeographicMapCellTypes_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.RaceTrackGeographicMapCellTypes_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypes_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellTypes_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellTypes_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array;
   subtype RaceTrackGeographicMapCellTypes_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.RaceTrackGeographicMapCellTypes_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypes_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References."=";
   subtype RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellTypes_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package_References.Java_Unbox_RaceTrackGeographicMapCellTypes_Access_Array_Access_Array;

   type RaceTrackGeographicMapCellTypes is new Java_Object with record
      BOTTOM_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      VERTICAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      START_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      DEFAULT_FINISH_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
   end record;
   instance : RaceTrackGeographicMapCellTypes_Access;

   procedure Initialize (This : in out RaceTrackGeographicMapCellTypes'Class);
   function Create return RaceTrackGeographicMapCellTypes_Access;
   function getInstance return RaceTrackGeographicMapCellTypes_Access;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypes_Package;


