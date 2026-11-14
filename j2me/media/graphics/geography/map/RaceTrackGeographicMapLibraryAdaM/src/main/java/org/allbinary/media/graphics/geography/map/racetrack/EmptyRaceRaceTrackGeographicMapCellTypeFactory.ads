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
limited with org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References is
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package.EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is access all EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class then EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class then EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;

package org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access Java_Object'Class) return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array;
   subtype EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;

   type EmptyRaceRaceTrackGeographicMapCellTypeFactory is new RaceTrackGeographicMapCellTypeFactory with null record;
   instanceC : EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out EmptyRaceRaceTrackGeographicMapCellTypeFactory'Class);
   function Create return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;
   function getInstance return EmptyRaceRaceTrackGeographicMapCellTypeFactory_Access;

end org.allbinary.media.graphics.geography.map.racetrack.EmptyRaceRaceTrackGeographicMapCellTypeFactory_Package;


