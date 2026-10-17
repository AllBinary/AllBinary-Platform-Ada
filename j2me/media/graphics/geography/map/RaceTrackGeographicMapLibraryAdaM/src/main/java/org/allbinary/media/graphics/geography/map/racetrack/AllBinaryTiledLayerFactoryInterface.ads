--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;

package org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;

   type AllBinaryTiledLayerFactoryInterface is interface;
   type AllBinaryTiledLayerFactoryInterface_Access is access all AllBinaryTiledLayerFactoryInterface'Class;
   type AllBinaryTiledLayerFactoryInterface_Access_Array is array (Natural range <>) of AllBinaryTiledLayerFactoryInterface_Access;
   type AllBinaryTiledLayerFactoryInterface_Access_Array_Access is access all AllBinaryTiledLayerFactoryInterface_Access_Array;
   function getInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access is abstract;
   function getMiniInstance (This : in out AllBinaryTiledLayerFactoryInterface; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access is abstract;

end org.allbinary.media.graphics.geography.map.racetrack.AllBinaryTiledLayerFactoryInterface_Package;


