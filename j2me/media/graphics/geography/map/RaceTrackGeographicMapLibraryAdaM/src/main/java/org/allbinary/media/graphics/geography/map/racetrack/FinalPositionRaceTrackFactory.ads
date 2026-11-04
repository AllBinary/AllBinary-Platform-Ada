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

limited with org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package;
package org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References is
   type FinalPositionRaceTrackFactory_Access is access all org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package.FinalPositionRaceTrackFactory'Class;
   type FinalPositionRaceTrackFactory_Access_Array is array (Natural range <>) of FinalPositionRaceTrackFactory_Access;
   type FinalPositionRaceTrackFactory_Access_Array_Access is access all FinalPositionRaceTrackFactory_Access_Array;
   type FinalPositionRaceTrackFactory_Access_Array_Access_Array is array (Natural range <>) of FinalPositionRaceTrackFactory_Access_Array_Access;
   type FinalPositionRaceTrackFactory_Access_Array_Access_Array_Access is access all FinalPositionRaceTrackFactory_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype FinalPositionRaceTrackFactory_Access is org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References.FinalPositionRaceTrackFactory_Access;
   function "=" (Left, Right : FinalPositionRaceTrackFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References."=";
   subtype FinalPositionRaceTrackFactory_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References.FinalPositionRaceTrackFactory_Access_Array;
   function "=" (Left, Right : FinalPositionRaceTrackFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References."=";
   subtype FinalPositionRaceTrackFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References.FinalPositionRaceTrackFactory_Access_Array_Access;
   function "=" (Left, Right : FinalPositionRaceTrackFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References."=";
   subtype FinalPositionRaceTrackFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References.FinalPositionRaceTrackFactory_Access_Array_Access_Array;
   function "=" (Left, Right : FinalPositionRaceTrackFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References."=";
   subtype FinalPositionRaceTrackFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References.FinalPositionRaceTrackFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : FinalPositionRaceTrackFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package_References."=";

   type FinalPositionRaceTrackFactory is new Java_Object with null record;
   FIRST_POSITION : constant Integer := 1;
   index : Integer;

   procedure Initialize (This : in out FinalPositionRaceTrackFactory'Class);
   function Create return FinalPositionRaceTrackFactory_Access;
   function getInstance return Integer;
   procedure reset;

end org.allbinary.media.graphics.geography.map.racetrack.FinalPositionRaceTrackFactory_Package;


