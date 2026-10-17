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
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;

package org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package is

   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package RaceTrackData_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;
   package RaceTrackInfo_Package renames Standard.org.allbinary.media.graphics.geography.map.racetrack.RaceTrackInfo_Package;

   type AllBinaryThreedTiledLayerFactory is tagged;
   type AllBinaryThreedTiledLayerFactory_Access is access all AllBinaryThreedTiledLayerFactory'Class;
   type AllBinaryThreedTiledLayerFactory_Access_Array is array (Natural range <>) of AllBinaryThreedTiledLayerFactory_Access;
   type AllBinaryThreedTiledLayerFactory_Access_Array_Access is access all AllBinaryThreedTiledLayerFactory_Access_Array;

   type AllBinaryThreedTiledLayerFactory is new Java_Object with null record;
   instance : AllBinaryThreedTiledLayerFactory_Access;

   procedure Initialize (This : in out AllBinaryThreedTiledLayerFactory'Class);
   function Create return AllBinaryThreedTiledLayerFactory_Access;
   function getInstance return AllBinaryThreedTiledLayerFactory_Access;
   procedure getInstance;
   function getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access) return AllBinaryTiledLayer_Access;
   procedure getInstance (This : in out AllBinaryThreedTiledLayerFactory; raceTrackInfo : RaceTrackInfo_Access; raceTrackData : RaceTrackData_Access);

end org.allbinary.media.graphics.geography.map.racetrack.threed.AllBinaryThreedTiledLayerFactory_Package;


