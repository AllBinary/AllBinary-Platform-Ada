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
limited with org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References is
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package.CloseLoopRaceTrackGeographicMapCellTypeFactory'Class;
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array is array (Natural range <>) of CloseLoopRaceTrackGeographicMapCellTypeFactory_Access;
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is access all CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array;
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is array (Natural range <>) of CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is access all CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is (if Value /= null and then Value.all in CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class then CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Object'Class (Value.all).Value else null);
   type CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class then CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;

package org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype CloseLoopRaceTrackGeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.CloseLoopRaceTrackGeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array (Value : access Java_Object'Class) return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array;
   subtype CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   subtype CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References."=";
   function Java_Box (Value : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Box;
   function Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array_Access renames org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package_References.Java_Unbox_CloseLoopRaceTrackGeographicMapCellTypeFactory_Access_Array_Access_Array;

   type CloseLoopRaceTrackGeographicMapCellTypeFactory is new RaceTrackGeographicMapCellTypeFactory with null record;
   instanceC : CloseLoopRaceTrackGeographicMapCellTypeFactory_Access;

   procedure Initialize (This : in out CloseLoopRaceTrackGeographicMapCellTypeFactory'Class);
   function Create return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access;
   function getInstance return CloseLoopRaceTrackGeographicMapCellTypeFactory_Access;

end org.allbinary.media.graphics.geography.map.racetrack.CloseLoopRaceTrackGeographicMapCellTypeFactory_Package;


