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
with org.allbinary.util.BasicArrayListUtil_Package; use org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListUtil_Package renames Standard.org.allbinary.util.BasicArrayListUtil_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
   package BaseDropCellPositionGenerator_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;
   package RaceTrackGeographicMapInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;

   type RaceTrackDropCellPositionGenerator is tagged;
   type RaceTrackDropCellPositionGenerator_Access is access all RaceTrackDropCellPositionGenerator'Class;
   type RaceTrackDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackDropCellPositionGenerator_Access;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access is access all RaceTrackDropCellPositionGenerator_Access_Array;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of RaceTrackDropCellPositionGenerator_Access_Array_Access;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access_Array_Access is access all RaceTrackDropCellPositionGenerator_Access_Array_Access_Array;

   type RaceTrackDropCellPositionGenerator is new BaseDropCellPositionGenerator with record
      list : BasicArrayList_Access;
      timeDelayHelper : TimeDelayHelper_Access;
      STRAIGHTAWAY : Integer;
      raceTrackGeographicMap : RaceTrackGeographicMapInterface_Access;
      raceTrackGeographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access;
      basicArrayListUtil : BasicArrayListUtil_Access;
   end record;

   procedure Initialize (This : in out RaceTrackDropCellPositionGenerator'Class);
   function Create return RaceTrackDropCellPositionGenerator_Access;
   procedure init (This : in out RaceTrackDropCellPositionGenerator);
   function isDropAllowedAt (This : in out RaceTrackDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean;
   procedure isDropAllowedAt (This : in out RaceTrackDropCellPositionGenerator; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class);
   procedure update (This : in out RaceTrackDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure processTick (This : in out RaceTrackDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   procedure drop (This : in out RaceTrackDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;


