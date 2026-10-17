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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapInterface_Package;

package org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPositionBaseFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;

   type BaseRaceTrackGeographicMap is tagged;
   type BaseRaceTrackGeographicMap_Access is access all BaseRaceTrackGeographicMap'Class;
   type BaseRaceTrackGeographicMap_Access_Array is array (Natural range <>) of BaseRaceTrackGeographicMap_Access;
   type BaseRaceTrackGeographicMap_Access_Array_Access is access all BaseRaceTrackGeographicMap_Access_Array;

   type BaseRaceTrackGeographicMap is new BasicGeographicMap and RaceTrackGeographicMapInterface with record
      logUtil : LogUtil_Access;
      raceTrackInfo : RaceTrackInfo_Access;
      raceTrackData : RaceTrackData_Access;
      miniGeographicMap : BasicGeographicMap_Access;
   end record;

   procedure Initialize (This : in out BaseRaceTrackGeographicMap'Class; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayer : AllBinaryTiledLayer_Access; miniGeographicMap : BasicGeographicMap_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access);
   function Create (raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayer : AllBinaryTiledLayer_Access; miniGeographicMap : BasicGeographicMap_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellPositionBaseFactory : GeographicMapCellPositionBaseFactory_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) return BaseRaceTrackGeographicMap_Access;
   function getRaceTrackInfo (This : in out BaseRaceTrackGeographicMap) return RaceTrackInfo_Access;
   procedure getRaceTrackInfo (This : in out BaseRaceTrackGeographicMap);
   procedure setRaceTrackInfo (This : in out BaseRaceTrackGeographicMap; aRaceTrackInfo : RaceTrackInfo_Access);
   procedure setMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap; miniBasicGeographicMap : BasicGeographicMap_Access);
   function getMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap) return BasicGeographicMap_Access;
   procedure getMiniBasicGeographicMap (This : in out BaseRaceTrackGeographicMap);
   function getRaceTrackData (This : in out BaseRaceTrackGeographicMap) return RaceTrackData_Access;
   procedure getRaceTrackData (This : in out BaseRaceTrackGeographicMap);
   procedure setRaceTrackData (This : in out BaseRaceTrackGeographicMap; raceTrackData : RaceTrackData_Access);

end org.allbinary.media.graphics.geography.map.racetrack.BaseRaceTrackGeographicMap_Package;


