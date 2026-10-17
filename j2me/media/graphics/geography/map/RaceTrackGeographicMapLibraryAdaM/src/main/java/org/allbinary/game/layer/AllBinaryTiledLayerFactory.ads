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
--  with javax.microedition.lcdui.game.TiledLayer_Package; use javax.microedition.lcdui.game.TiledLayer_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
with org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package; use org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package; use org.allbinary.game.layer.AllBinaryJ2METiledLayer_Package;

package org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package is

   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package SmallIntegerSingletonFactory_Package renames Standard.org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package AllBinaryTiledLayerFactoryInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;
   package RaceTrackData_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
   package RaceTrackInfo_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;
   package TiledLayerFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;

   type AllBinaryTiledLayerFactory is tagged;
   type AllBinaryTiledLayerFactory_Access is access all AllBinaryTiledLayerFactory'Class;
   type AllBinaryTiledLayerFactory_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactory_Access;
   type AllBinaryTiledLayerFactory_Access_Array_Access is access all AllBinaryTiledLayerFactory_Access_Array;

   type AllBinaryTiledLayerFactory is new AllBinaryTiledLayerFactoryInterface with null record;

   procedure Initialize (This : in out AllBinaryTiledLayerFactory'Class);
   function Create return AllBinaryTiledLayerFactory_Access;
   function getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access;
   procedure getInstance (This : in out AllBinaryTiledLayerFactory; raceTrackInfo_Param : access RaceTrackInfo_Package.RaceTrackInfo'Class; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);
   function getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class) return AllBinaryTiledLayer_Access;
   procedure getMiniInstance (This : in out AllBinaryTiledLayerFactory; raceTrackData_Param : access RaceTrackData_Package.RaceTrackData'Class);

end org.allbinary.game.layer.AllBinaryTiledLayerFactory_Package;


