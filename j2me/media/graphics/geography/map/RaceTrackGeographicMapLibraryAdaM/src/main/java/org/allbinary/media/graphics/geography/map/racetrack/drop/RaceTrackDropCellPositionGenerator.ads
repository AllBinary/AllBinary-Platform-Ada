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

limited with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;
package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References is
   type RaceTrackDropCellPositionGenerator_Access is access all org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package.RaceTrackDropCellPositionGenerator'Class;
   type RaceTrackDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackDropCellPositionGenerator_Access;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access is access all RaceTrackDropCellPositionGenerator_Access_Array;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of RaceTrackDropCellPositionGenerator_Access_Array_Access;
   type RaceTrackDropCellPositionGenerator_Access_Array_Access_Array_Access is access all RaceTrackDropCellPositionGenerator_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References;
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
limited with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package_References;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
limited with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
with org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.drop.BaseDropCellPositionGenerator_Package;
limited with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

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
   subtype BasicArrayListUtil_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access;
   use type BasicArrayListUtil_Access;
   subtype BasicArrayListUtil_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array;
   use type BasicArrayListUtil_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access;
   subtype BasicArrayListUtil_Access_Array_Access_Array is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array;
   use type BasicArrayListUtil_Access_Array_Access_Array;
   subtype BasicArrayListUtil_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayListUtil_Package_References.BasicArrayListUtil_Access_Array_Access_Array_Access;
   use type BasicArrayListUtil_Access_Array_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   use type AllBinaryGameLayerManager_Access;
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array;
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   use type BasicGeographicMap_Access;
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   use type BasicGeographicMap_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access;
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   use type BasicGeographicMap_Access_Array_Access_Array;
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   use type BasicGeographicMap_Access_Array_Access_Array_Access;
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   use type GeographicMapCellPosition_Access;
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   use type GeographicMapCellPosition_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access;
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   use type GeographicMapCellPosition_Access_Array_Access_Array;
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   use type GeographicMapCellPosition_Access_Array_Access_Array_Access;
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   use type GeographicMapCellTypeFactory_Access;
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array;
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   use type GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   subtype RaceTrackGeographicMapInterface_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access;
   use type RaceTrackGeographicMapInterface_Access;
   subtype RaceTrackGeographicMapInterface_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array;
   use type RaceTrackGeographicMapInterface_Access_Array;
   subtype RaceTrackGeographicMapInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access;
   use type RaceTrackGeographicMapInterface_Access_Array_Access;
   subtype RaceTrackGeographicMapInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access_Array;
   use type RaceTrackGeographicMapInterface_Access_Array_Access_Array;
   subtype RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package_References.RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access;
   use type RaceTrackGeographicMapInterface_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackDropCellPositionGenerator_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References.RaceTrackDropCellPositionGenerator_Access;
   function "=" (Left, Right : RaceTrackDropCellPositionGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackDropCellPositionGenerator_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References.RaceTrackDropCellPositionGenerator_Access_Array;
   function "=" (Left, Right : RaceTrackDropCellPositionGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackDropCellPositionGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References.RaceTrackDropCellPositionGenerator_Access_Array_Access;
   function "=" (Left, Right : RaceTrackDropCellPositionGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackDropCellPositionGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References.RaceTrackDropCellPositionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackDropCellPositionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackDropCellPositionGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References.RaceTrackDropCellPositionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackDropCellPositionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package_References."=";

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


