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

limited with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package;
package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References is
   type RaceTrackRandomDropCellPositionGenerator_Access is access all org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package.RaceTrackRandomDropCellPositionGenerator'Class;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackRandomDropCellPositionGenerator_Access;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array_Access is access all RaceTrackRandomDropCellPositionGenerator_Access_Array;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of RaceTrackRandomDropCellPositionGenerator_Access_Array_Access;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array_Access is access all RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array;
end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References;

with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
limited with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.game.rand.MyRandomFactory_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package MyRandomFactory_Package renames Standard.org.allbinary.game.rand.MyRandomFactory_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package Reference_Types is
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
   subtype MyRandomFactory_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access;
   use type MyRandomFactory_Access;
   subtype MyRandomFactory_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array;
   use type MyRandomFactory_Access_Array;
   subtype MyRandomFactory_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access;
   subtype MyRandomFactory_Access_Array_Access_Array is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array;
   use type MyRandomFactory_Access_Array_Access_Array;
   subtype MyRandomFactory_Access_Array_Access_Array_Access is org.allbinary.game.rand.MyRandomFactory_Package_References.MyRandomFactory_Access_Array_Access_Array_Access;
   use type MyRandomFactory_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype RaceTrackRandomDropCellPositionGenerator_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References.RaceTrackRandomDropCellPositionGenerator_Access;
   function "=" (Left, Right : RaceTrackRandomDropCellPositionGenerator_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackRandomDropCellPositionGenerator_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References.RaceTrackRandomDropCellPositionGenerator_Access_Array;
   function "=" (Left, Right : RaceTrackRandomDropCellPositionGenerator_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackRandomDropCellPositionGenerator_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References.RaceTrackRandomDropCellPositionGenerator_Access_Array_Access;
   function "=" (Left, Right : RaceTrackRandomDropCellPositionGenerator_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References.RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array;
   function "=" (Left, Right : RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References."=";
   subtype RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References.RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RaceTrackRandomDropCellPositionGenerator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package_References."=";

   type RaceTrackRandomDropCellPositionGenerator is new RaceTrackDropCellPositionGenerator with record
      myRandomFactory : MyRandomFactory_Access;
      cellsPerRowOrColumn : Integer;
      totalCells : Integer;
      rowArray : Integer_Array_Access;
      columnArray : Integer_Array_Access;
      cellWidth : Integer;
      cellHeight : Integer;
   end record;
   SINGLETON : RaceTrackRandomDropCellPositionGenerator_Access;

   procedure Initialize (This : in out RaceTrackRandomDropCellPositionGenerator'Class);
   function Create return RaceTrackRandomDropCellPositionGenerator_Access;
   function getInstance return RaceTrackRandomDropCellPositionGenerator_Access;
   procedure update (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure drop (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package;


