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
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;

package org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package is

   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;

   type RaceTracksPathPrinter is tagged;
   type RaceTracksPathPrinter_Access is access all RaceTracksPathPrinter'Class;
   type RaceTracksPathPrinter_Access_Array is array (Natural range <>) of RaceTracksPathPrinter_Access;
   type RaceTracksPathPrinter_Access_Array_Access is access all RaceTracksPathPrinter_Access_Array;

   type RaceTracksPathPrinter is new Java_Object with null record;

   procedure Initialize (This : in out RaceTracksPathPrinter'Class);
   function Create return RaceTracksPathPrinter_Access;
   procedure printPath (This : in out RaceTracksPathPrinter; list : BasicArrayList_Access);
   procedure printPaths (This : in out RaceTracksPathPrinter; list : BasicArrayList_Access);

end org.allbinary.media.graphics.geography.map.racetrack.RaceTracksPathPrinter_Package;


