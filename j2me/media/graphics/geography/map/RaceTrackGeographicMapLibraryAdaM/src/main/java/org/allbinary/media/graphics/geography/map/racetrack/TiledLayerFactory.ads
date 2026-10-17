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
with org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package; use org.allbinary.media.graphics.geography.map.racetrack.RaceTrackData_Package;

package org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package is


   type TiledLayerFactory is tagged;
   type TiledLayerFactory_Access is access all TiledLayerFactory'Class;
   type TiledLayerFactory_Access_Array is array (Natural range <>) of TiledLayerFactory_Access;
   type TiledLayerFactory_Access_Array_Access is access all TiledLayerFactory_Access_Array;

   type TiledLayerFactory is new Java_Object with null record;

   procedure Initialize (This : in out TiledLayerFactory'Class);
   function Create return TiledLayerFactory_Access;
   function getInstance (This : in out TiledLayerFactory; raceTrackData : RaceTrackData_Access) return TiledLayer_Access;
   procedure getInstance (This : in out TiledLayerFactory; raceTrackData : RaceTrackData_Access);
   function getMiniInstance (This : in out TiledLayerFactory; raceTrackData : RaceTrackData_Access) return TiledLayer_Access;
   procedure getMiniInstance (This : in out TiledLayerFactory; raceTrackData : RaceTrackData_Access);

end org.allbinary.media.graphics.geography.map.racetrack.TiledLayerFactory_Package;


