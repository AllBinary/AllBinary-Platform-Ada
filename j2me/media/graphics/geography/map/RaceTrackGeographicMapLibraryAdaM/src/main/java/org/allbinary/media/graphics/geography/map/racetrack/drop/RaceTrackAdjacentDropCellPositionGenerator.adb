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


with org.allbinary.game.identification.GroupCommonFactory_Package; use org.allbinary.game.identification.GroupCommonFactory_Package;
with org.allbinary.game.identification.GroupCommonFactory_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.direction.Direction_Package; use org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package; use org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package;
with org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package; use org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References;
with org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package; use org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package; use org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ABHashtable_Package_References;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;
with org.allbinary.util.ABStack_Package;
with org.allbinary.util.ABVector_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.rand.MyRandomFactory_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropLayerFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackFrictionProperties_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package Direction_Package renames Standard.org.allbinary.direction.Direction_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package BasicGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
   package GeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
   package DropCellPositionHistory_Package renames Standard.org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory_Package;
   package BaseRaceTrackGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;
   package RaceTrackGeographicMapCellType_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType_Package;
   package RaceTrackGeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory_Package;
   subtype GroupCommonFactory_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access;
   function "=" (Left, Right : GroupCommonFactory_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access_Array is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype GroupCommonFactory_Access_Array_Access_Array_Access is org.allbinary.game.identification.GroupCommonFactory_Package_References.GroupCommonFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GroupCommonFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.identification.GroupCommonFactory_Package_References."=";
   subtype AllBinaryGameLayerManager_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype AllBinaryGameLayerManager_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References.AllBinaryGameLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryGameLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryGameLayerManager_Package_References."=";
   subtype LayerCoveringCellPositionsUtil_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access;
   function "=" (Left, Right : LayerCoveringCellPositionsUtil_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References."=";
   subtype LayerCoveringCellPositionsUtil_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array;
   function "=" (Left, Right : LayerCoveringCellPositionsUtil_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References."=";
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access;
   function "=" (Left, Right : LayerCoveringCellPositionsUtil_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References."=";
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LayerCoveringCellPositionsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References."=";
   subtype LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access is org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References.LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LayerCoveringCellPositionsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapDirectionUtil_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype GeographicMapDirectionUtil_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References.GeographicMapDirectionUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapDirectionUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References.DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : DropCellPositionGeneratorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.drop.DropCellPositionGeneratorInterface_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class) is
   begin
      null;
      This.layerCoveringCellPositionsUtil := LayerCoveringCellPositionsUtil_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.surroundingCellPositions := new GeographicMapCellPosition_Access_Array'(0 .. (4) - 1 => null);
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.geographicMapDirectionUtil := GeographicMapDirectionUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return DropCellPositionGeneratorInterface_Access is
   begin
        return DropCellPositionGeneratorInterface_Access (RaceTrackAdjacentDropCellPositionGenerator_Package.SINGLETON);
   end getInstance;

   procedure Initialize (This : in out RaceTrackAdjacentDropCellPositionGenerator'Class) is
   begin
      RaceTrackDropCellPositionGenerator_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return RaceTrackAdjacentDropCellPositionGenerator_Access is
      This : constant RaceTrackAdjacentDropCellPositionGenerator_Access := new RaceTrackAdjacentDropCellPositionGenerator;
   begin
      RaceTrackAdjacentDropCellPositionGenerator_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) return GeographicMapCellPosition_Access is
      nonRoadGeographicMapCellPosition : GeographicMapCellPosition_Access;
      geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory_Access;
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access;
      raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory_Access;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType_Access;
      index : Integer;
   begin
        nonRoadGeographicMapCellPosition := GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        geographicMapCellPositionFactory := This.raceTrackGeographicMap.getGeographicMapCellPositionFactory;
        This.surroundingCellPositions (0) := geographicMapCellPositionFactory.getAt (column, (row) - (1));
        This.surroundingCellPositions (1) := geographicMapCellPositionFactory.getAt (column, (row) + (1));
        This.surroundingCellPositions (2) := geographicMapCellPositionFactory.getAt ((column) - (1), row);
        This.surroundingCellPositions (3) := geographicMapCellPositionFactory.getAt ((column) + (1), row);
        baseRaceTrackGeographicMap := BaseRaceTrackGeographicMap_Access (This.raceTrackGeographicMap);
        raceTrackGeographicMapCellTypeFactory := RaceTrackGeographicMapCellTypeFactory_Access (baseRaceTrackGeographicMap.getGeographicMapCellTypeFactory);
        geographicMapCellPosition := null;
        raceTrackGeographicMapCellType := null;
        index := This.surroundingCellPositions'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            geographicMapCellPosition := This.surroundingCellPositions (index);
            raceTrackGeographicMapCellType := RaceTrackGeographicMapCellType_Access (This.raceTrackGeographicMap.getCellTypeAt (geographicMapCellPosition));
            if not (raceTrackGeographicMapCellTypeFactory.isPath (raceTrackGeographicMapCellType)) then
                nonRoadGeographicMapCellPosition := geographicMapCellPosition;
                exit;
            end if;
        end loop;
        return nonRoadGeographicMapCellPosition;
   end getFirstNonRoadAdjacentCellPosition;

   --  throws Exception
   procedure update (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
   begin
        This.hashtable.put (AllBinaryGameLayerManager_Package.ID, allBinaryGameLayerManager);
        RaceTrackDropCellPositionGenerator_Package.RaceTrackDropCellPositionGenerator (This).update (allBinaryGameLayerManager, geographicMapInterface);
   end update;

   --  throws Exception
   procedure drop (This : in out RaceTrackAdjacentDropCellPositionGenerator; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; index : Integer) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      randomGeographicMapCellPosition : GeographicMapCellPosition_Access;
      dropCellPositionHistory : DropCellPositionHistory_Access;
      direction : Direction_Access;
      objectCanBeNull : Java_Object_Access;
      point : GPoint_Access;
      x : Integer;
      y : Integer;
      z : Integer;
      layerInterface : AllBinaryLayer_Access;
      baseRaceTrackGeographicMap : BaseRaceTrackGeographicMap_Access;
      list : BasicArrayList_Access;
      geographicMapCellType : GeographicMapCellType_Access;
      index2 : Integer;
   begin
        geographicMapCellPosition := GeographicMapCellPosition_Access (This.list.get (index));
        randomGeographicMapCellPosition := RaceTrackAdjacentDropCellPositionGenerator'Class (This).getFirstNonRoadAdjacentCellPosition (geographicMapCellPosition.getColumn, geographicMapCellPosition.getRow);
        if (randomGeographicMapCellPosition) = (null) then
            return;
        end if;
        dropCellPositionHistory := DropCellPositionHistory_Package.getInstance;
        if not (dropCellPositionHistory.isCellPositionWithDrop (geographicMapCellPosition)) then
            direction := This.geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition (randomGeographicMapCellPosition, geographicMapCellPosition);
            objectCanBeNull := This.hashtable.get (This.groupCommonFactory.ID);
            if (objectCanBeNull) /= (null) then
                null;
            else
                This.hashtable.put (This.groupCommonFactory.ID, BasicGroupFactory_Package.getInstance.NONE_ARRAY);
            end if;
            This.hashtable.put (DirectionFactory_Package.getInstance.NAME, direction);
            point := randomGeographicMapCellPosition.getPoint;
            x := point.getX;
            y := point.getY;
            z := point.getZ;
            layerInterface := RaceTrackAdjacentDropLayerFactory_Package.getInstance.getRandomInstance.getNextInstance (This.hashtable, x, y, z);
            baseRaceTrackGeographicMap := BaseRaceTrackGeographicMap_Access (This.raceTrackGeographicMap);
            list := This.layerCoveringCellPositionsUtil.getAll (baseRaceTrackGeographicMap, randomGeographicMapCellPosition, layerInterface, BasicArrayListD_Package.Create);
            if dropCellPositionHistory.anyCellPositionWithDrop (list) then
                return;
            end if;
            geographicMapCellType := null;
            index2 := list.size;
            while (Java_Pre_Decrement (index2)) >= (0) loop
                geographicMapCellType := This.raceTrackGeographicMap.getCellTypeAt (GeographicMapCellPosition_Access (list.get (index2)));
                if This.raceTrackGeographicMapCellTypeFactory.isPath (geographicMapCellType) then
                    return;
                end if;
            end loop;
            dropCellPositionHistory.addAll (list, layerInterface);
            allBinaryLayerManager.append (layerInterface);
        end if;
   end drop;

   procedure getFirstNonRoadAdjacentCellPosition (This : in out RaceTrackAdjacentDropCellPositionGenerator; column : Integer; row : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := RaceTrackAdjacentDropCellPositionGenerator'Class (This).getFirstNonRoadAdjacentCellPosition (column => column, row => row);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getFirstNonRoadAdjacentCellPosition;

begin
   null;
   SINGLETON := RaceTrackAdjacentDropCellPositionGenerator_Package.Create;

end org.allbinary.media.graphics.geography.map.racetrack.drop.RaceTrackAdjacentDropCellPositionGenerator_Package;


