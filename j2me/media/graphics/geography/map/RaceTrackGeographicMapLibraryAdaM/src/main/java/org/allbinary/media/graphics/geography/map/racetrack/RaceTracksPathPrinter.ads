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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type RaceTracksPathPrinter is tagged;
   type RaceTracksPathPrinter_Access is access all RaceTracksPathPrinter'Class;
   type RaceTracksPathPrinter_Access_Array is array (Natural range <>) of RaceTracksPathPrinter_Access;
   type RaceTracksPathPrinter_Access_Array_Access is access all RaceTracksPathPrinter_Access_Array;
   type RaceTracksPathPrinter_Access_Array_Access_Array is array (Natural range <>) of RaceTracksPathPrinter_Access_Array_Access;
   type RaceTracksPathPrinter_Access_Array_Access_Array_Access is access all RaceTracksPathPrinter_Access_Array_Access_Array;

   type RaceTracksPathPrinter is new Java_Object with null record;

   procedure Initialize (This : in out RaceTracksPathPrinter'Class);
   function Create return RaceTracksPathPrinter_Access;
   procedure printPath (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class);
   procedure printPaths (This : in out RaceTracksPathPrinter; list_Param : access BasicArrayList_Package.BasicArrayList'Class);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;


