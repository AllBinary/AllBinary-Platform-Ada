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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References is
   type RaceTrackGeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package.RaceTrackGeographicMapCellTypeFactory'Class;
   type RaceTrackGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellTypeFactory_Access;
   type RaceTrackGeographicMapCellTypeFactory_Access_Array_Access is access all RaceTrackGeographicMapCellTypeFactory_Access_Array;
   type RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   type RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   type RaceTrackGeographicMapCellTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class then RaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class then RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package is

   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package Reference_Types is
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   use type GeographicMapCellType_Access;
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   use type GeographicMapCellType_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access;
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   use type GeographicMapCellType_Access_Array_Access_Array;
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   use type GeographicMapCellType_Access_Array_Access_Array_Access;
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


   subtype RaceTrackGeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.RaceTrackGeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype RaceTrackGeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.RaceTrackGeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype RaceTrackGeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.RaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellTypeFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array;
   subtype RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_RaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;

   type RaceTrackGeographicMapCellTypeFactory is new GeographicMapCellTypeFactory with record
      EMPTY_CELL_TYPE : GeographicMapCellType_Access;
      EASY_CELL_TYPE : GeographicMapCellType_Access;
      BOTTOM_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      BOTTOM_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_LEFT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      TOP_RIGHT_TURN_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      HORIZONTAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      VERTICAL_STRAIGHT_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      START_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      DEFAULT_FINISH_LINE_ROAD_CELL_TYPE : RaceTrackGeographicMapCellType_Access;
      FINISH_LINE_ROAD_CELL_TYPE : GeographicMapCellType_Access;
   end record;
   instanceC : RaceTrackGeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out RaceTrackGeographicMapCellTypeFactory'Class);
   function Create return RaceTrackGeographicMapCellTypeFactory_Access;
   function getInstance return RaceTrackGeographicMapCellTypeFactory_Access;
   function getStartType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer;
   function getEndType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer;
   function getEmptyType (This : in out RaceTrackGeographicMapCellTypeFactory) return Integer;
   function isPath (This : in out RaceTrackGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class) return Boolean;
   procedure isPath (This : in out RaceTrackGeographicMapCellTypeFactory; cellType_Param : access GeographicMapCellType_Package.GeographicMapCellType'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;


