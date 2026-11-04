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

limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;
package org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References is
   type RaceTracksPathPrinter_Access is access all org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package.RaceTracksPathPrinter'Class;
   type RaceTracksPathPrinter_Access_Array is array (Natural range <>) of RaceTracksPathPrinter_Access;
   type RaceTracksPathPrinter_Access_Array_Access is access all RaceTracksPathPrinter_Access_Array;
   type RaceTracksPathPrinter_Access_Array_Access_Array is array (Natural range <>) of RaceTracksPathPrinter_Access_Array_Access;
   type RaceTracksPathPrinter_Access_Array_Access_Array_Access is access all RaceTracksPathPrinter_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTracksPathPrinter_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References.RaceTracksPathPrinter_Access;
   function "=" (Left, Right : RaceTracksPathPrinter_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References."=";
   subtype RaceTracksPathPrinter_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References.RaceTracksPathPrinter_Access_Array;
   function "=" (Left, Right : RaceTracksPathPrinter_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References."=";
   subtype RaceTracksPathPrinter_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References.RaceTracksPathPrinter_Access_Array_Access;
   function "=" (Left, Right : RaceTracksPathPrinter_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References."=";
   subtype RaceTracksPathPrinter_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References.RaceTracksPathPrinter_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTracksPathPrinter_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References."=";
   subtype RaceTracksPathPrinter_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References.RaceTracksPathPrinter_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTracksPathPrinter_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package_References."=";

   type RaceTracksPathPrinter is new Java_Object with null record;

   procedure Initialize (This : in out RaceTracksPathPrinter'Class);
   function Create return RaceTracksPathPrinter_Access;
   procedure printPath (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure printPaths (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;


