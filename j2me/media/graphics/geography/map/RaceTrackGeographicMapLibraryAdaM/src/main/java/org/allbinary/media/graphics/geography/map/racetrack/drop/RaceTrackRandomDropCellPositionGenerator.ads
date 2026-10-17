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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.drop.DropLayerFactory_Package; use org.allbinary.game.layer.drop.DropLayerFactory_Package;
with org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package; use org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;
with org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package; use org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;
with org.allbinary.game.rand.MyRandomFactory_Package; use org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package; use org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackDropCellPositionGenerator_Package;

package org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package is

   package PickedUpLayerInterfaceFactoryInterface_Package renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package AllBinaryGameLayerManager_Package renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
   package AllBinaryTiledLayer_Package renames org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package DropLayerFactory_Package renames org.allbinary.game.layer.drop.DropLayerFactory_Package;
   package PickupLayerCircularStaticPool_Package renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;
   package RaceTrackPickupLayer_Package renames org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;
   package MyRandomFactory_Package renames org.allbinary.game.rand.MyRandomFactory_Package;
   package GPoint_Package renames org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicGeographicMap_Package renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPosition_Package renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

   type RaceTrackRandomDropCellPositionGenerator is tagged;
   type RaceTrackRandomDropCellPositionGenerator_Access is access all RaceTrackRandomDropCellPositionGenerator'Class;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array is array (Natural range <>) of RaceTrackRandomDropCellPositionGenerator_Access;
   type RaceTrackRandomDropCellPositionGenerator_Access_Array_Access is access all RaceTrackRandomDropCellPositionGenerator_Access_Array;

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
   procedure getInstance;
   procedure update (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access; geographicMapInterface : BasicGeographicMap_Access);
   procedure drop (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryLayerManager : AllBinaryLayerManager_Access; index : Integer);

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package;


