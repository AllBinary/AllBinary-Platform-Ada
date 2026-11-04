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

limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References is
   type RaceTrackGeographicMapInterfaceFactoryInterface_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package.RaceTrackGeographicMapInterfaceFactoryInterface'Class;
   type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is array (Natural range <>) of RaceTrackGeographicMapInterfaceFactoryInterface_Access;
   type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is access all RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   type RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package is

   package Reference_Types is
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


   type RaceTrackGeographicMapInterfaceFactoryInterface is interface;
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References.RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_RaceTrackGeographicMapInterfaceFactoryInterface (Value : RaceTrackGeographicMapInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getLevelInstance (This : in out RaceTrackGeographicMapInterfaceFactoryInterface; id : Integer) return RaceTrackGeographicMap_Access is abstract;
   function getTrackInstance (This : in out RaceTrackGeographicMapInterfaceFactoryInterface; id : Integer) return RaceTrackGeographicMap_Access is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;


