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
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References is
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package.RaceTrackRoadsGeographicMapCellHistoryFactory'Class;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array is array (Natural range <>) of RaceTrackRoadsGeographicMapCellHistoryFactory_Access;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access is access all RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array is array (Natural range <>) of RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access is access all RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array;
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Object'Class then RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Object'Class then RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package is

   package GeographicMapCellHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;
   package Reference_Types is
   subtype GeographicMapCellHistory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access;
   use type GeographicMapCellHistory_Access;
   subtype GeographicMapCellHistory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array;
   use type GeographicMapCellHistory_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access;
   subtype GeographicMapCellHistory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array;
   use type GeographicMapCellHistory_Access_Array_Access_Array;
   subtype GeographicMapCellHistory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package_References.GeographicMapCellHistory_Access_Array_Access_Array_Access;
   use type GeographicMapCellHistory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackRoadsGeographicMapCellHistoryFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.RaceTrackRoadsGeographicMapCellHistoryFactory_Access;
   function "=" (Left, Right : RaceTrackRoadsGeographicMapCellHistoryFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References."=";
   subtype RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array;
   function "=" (Left, Right : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References."=";
   subtype RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access;
   function "=" (Left, Right : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References."=";
   function Java_Box (Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array (Value : access Java_Object'Class) return RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array;
   subtype RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References."=";
   subtype RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References."=";
   function Java_Box (Value : RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.Java_Box;
   function Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package_References.Java_Unbox_RaceTrackRoadsGeographicMapCellHistoryFactory_Access_Array_Access_Array;

   type RaceTrackRoadsGeographicMapCellHistoryFactory is new Java_Object with null record;
   geographicMapCellHistory : GeographicMapCellHistory_Access;

   procedure Initialize (This : in out RaceTrackRoadsGeographicMapCellHistoryFactory'Class);
   function Create return RaceTrackRoadsGeographicMapCellHistoryFactory_Access;
   function getInstance return GeographicMapCellHistory_Access;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory_Package;


