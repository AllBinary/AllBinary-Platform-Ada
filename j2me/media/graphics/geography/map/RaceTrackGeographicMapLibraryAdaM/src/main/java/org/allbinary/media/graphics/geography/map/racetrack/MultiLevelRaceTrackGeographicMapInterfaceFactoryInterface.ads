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

limited with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;
package org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References is
   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is access all org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface'Class;
   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is array (Natural range <>) of MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is access all MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterfaceFactoryInterface_Package;

package org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface is interface and RaceTrackGeographicMapInterfaceFactoryInterface;
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   subtype MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package_References."=";
   function Java_Object_Access_From_MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface (Value : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getFirstWaveWithTrack (This : in out MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface; track : Integer) return Integer is abstract;
   function getTotalTracks (This : in out MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface) return Integer is abstract;
   function getTotalLevels (This : in out MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface) return Integer is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface_Package;


