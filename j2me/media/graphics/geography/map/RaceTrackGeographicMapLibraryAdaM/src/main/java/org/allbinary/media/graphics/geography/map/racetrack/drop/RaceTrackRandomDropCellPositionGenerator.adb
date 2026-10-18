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


with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.drop.DropLayerFactory_Package; use org.allbinary.game.layer.drop.DropLayerFactory_Package;
with org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package; use org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;
with org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package; use org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package is

   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package DropLayerFactory_Package renames Standard.org.allbinary.game.layer.drop.DropLayerFactory_Package;
   package PickupLayerCircularStaticPool_Package renames Standard.org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;
   package RaceTrackPickupLayer_Package renames Standard.org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package GeographicMapCellPosition_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
   procedure Initialize_Fields (This : in out RaceTrackRandomDropCellPositionGenerator'Class) is
   begin
      null;
      This.myRandomFactory := MyRandomFactory_Package.getInstance;
      This.cellsPerRowOrColumn := 3;
      This.totalCells := (This.cellsPerRowOrColumn) * (This.cellsPerRowOrColumn);
      This.rowArray := new Integer_Array'(0, 1, 2, 0, 1, 2, 0, 1, 2);
      This.columnArray := new Integer_Array'(0, 0, 0, 1, 1, 1, 2, 2, 2);
      This.cellWidth := 0;
      This.cellHeight := 0;
   end Initialize_Fields;


   function getInstance return RaceTrackRandomDropCellPositionGenerator_Access is
   begin
        return RaceTrackRandomDropCellPositionGenerator_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out RaceTrackRandomDropCellPositionGenerator'Class) is
   begin
      RaceTrackDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RaceTrackRandomDropCellPositionGenerator_Access is
      This : constant RaceTrackRandomDropCellPositionGenerator_Access := new RaceTrackRandomDropCellPositionGenerator;
   begin
      RaceTrackRandomDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   procedure update (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      tiledLayer : AllBinaryTiledLayer_Access;
   begin
        RaceTrackDropCellPositionGenerator (This).update (allBinaryGameLayerManager, geographicMapInterface);
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer;
        This.cellWidth := (tiledLayer.getCellWidth) / (This.cellsPerRowOrColumn);
        This.cellHeight := (tiledLayer.getCellHeight) / (This.cellsPerRowOrColumn);
   end update;

   --  throws Exception
   procedure drop (This : in out RaceTrackRandomDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      point : GPoint_Access;
      randomCell : Integer;
      row : Integer;
      column : Integer;
      x : Integer;
      y : Integer;
      pickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactoryInterface_Access;
      tiledLayer : AllBinaryTiledLayer_Access;
      pickupLayer : RaceTrackPickupLayer_Access;
   begin
        geographicMapCellPosition := GeographicMapCellPosition_Access (This.list.get (index));
        point := geographicMapCellPosition.getPoint;
        randomCell := This.myRandomFactory.getAbsoluteNextInt (This.totalCells);
        row := This.rowArray (randomCell);
        column := This.columnArray (randomCell);
        x := (point.getX) + (((row) * (This.cellWidth)));
        y := (point.getY) + (((column) * (This.cellHeight)));
        pickedUpLayerInterfaceFactory := PickedUpLayerInterfaceFactoryInterface_Access (DropLayerFactory_Package.getInstance.getRandomInstance);
        tiledLayer := This.raceTrackGeographicMap.getAllBinaryTiledLayer;
        pickupLayer := RaceTrackPickupLayer_Access (PickupLayerCircularStaticPool_Package.getInstance.getInstanceXYZ (pickedUpLayerInterfaceFactory, x, y, (tiledLayer.getZP) + (3)));
        pickupLayer.setTiledLayer (tiledLayer);
        allBinaryLayerManager.append (pickupLayer);
   end drop;

begin
   null;
   SINGLETON := RaceTrackRandomDropCellPositionGenerator_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackRandomDropCellPositionGenerator_Package;


