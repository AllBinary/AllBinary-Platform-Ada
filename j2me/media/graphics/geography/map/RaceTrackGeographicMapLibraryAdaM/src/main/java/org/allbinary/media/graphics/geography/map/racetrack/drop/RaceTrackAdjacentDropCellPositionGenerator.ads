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
with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package is

   package GroupCommonFactory_Package renames Standard.org.allbinary.game.identification.GroupCommonFactory_Package;
   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package LayerCoveringCellPositionsUtil_Package renames Standard.org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   package GeographicMapDirectionUtil_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
   package DropCellPositionGeneratorInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type RaceTrackAdjacentDropCellPositionGenerator is tagged;
   type RaceTrackAdjacentDropCellPositionGenerator_Access is access all RaceTrackAdjacentDropCellPositionGenerator'Class;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropCellPositionGenerator_Access;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access is access all RaceTrackAdjacentDropCellPositionGenerator_Access_Array;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array is array (Natural range <>) of RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access;
   type RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array_Access is access all RaceTrackAdjacentDropCellPositionGenerator_Access_Array_Access_Array;

   type RaceTrackAdjacentDropCellPositionGenerator is new RaceTrackDropCellPositionGenerator with record
      layerCoveringCellPositionsUtil : LayerCoveringCellPositionsUtil_Access;
      groupCommonFactory : GroupCommonFactory_Access;
      surroundingCellPositions : GeographicMapCellPosition_Access_Array_Access;
      hashtable : ABHashtable_Access;
      geographicMapDirectionUtil : GeographicMapDirectionUtil_Access;
   end record;
   SINGLETON : RaceTrackAdjacentDropCellPositionGenerator_Access;

   procedure Initialize (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class);
   function Create return RaceTrackAdjacentDropCellPositionGenerator_Access;
   function getInstance return DropCellPositionGeneratorInterface_Access;
   function getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) return GeographicMapCellPosition_Access;
   procedure getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer);
   procedure update (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class);
   procedure drop (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package;


