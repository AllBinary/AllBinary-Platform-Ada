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
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;

package org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCellPositionBaseFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
   package GeographicMapCellPositionFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
   package GeographicMapCellTypeFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;

   type BasicGeographicMapFactory is tagged;
   type BasicGeographicMapFactory_Access is access all BasicGeographicMapFactory'Class;
   type BasicGeographicMapFactory_Access_Array is array (Natural range <>) of BasicGeographicMapFactory_Access;
   type BasicGeographicMapFactory_Access_Array_Access is access all BasicGeographicMapFactory_Access_Array;

   type BasicGeographicMapFactory is new Java_Object with null record;

   procedure Initialize (This : in out BasicGeographicMapFactory'Class);
   function Create return BasicGeographicMapFactory_Access;
   function getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access) return BasicGeographicMap_Access;
   procedure getInstance (This : in out BasicGeographicMapFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access; tiledLayerFactoryInterface : AllBinaryTiledLayerFactoryInterface_Access; geographicMapCellPositionFactoryInterface : GeographicMapCellPositionFactoryInterface_Access; geographicMapCellTypeFactory : GeographicMapCellTypeFactory_Access);

end org.allbinary.media.graphics.geography.map.racetrack.BasicGeographicMapFactory_Package;


