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
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package; use org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.event.ViewPositionEventHandler_Package; use org.allbinary.view.event.ViewPositionEventHandler_Package;
with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;

package org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package is

   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package TileLayerPositionIntoViewPosition_Package renames Standard.org.allbinary.game.view.TileLayerPositionIntoViewPosition_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package ViewPositionEventHandler_Package renames Standard.org.allbinary.view.event.ViewPositionEventHandler_Package;

   type RaceTrackPickupLayer is tagged;
   type RaceTrackPickupLayer_Access is access all RaceTrackPickupLayer'Class;
   type RaceTrackPickupLayer_Access_Array is array (Natural range <>) of RaceTrackPickupLayer_Access;
   type RaceTrackPickupLayer_Access_Array_Access is access all RaceTrackPickupLayer_Access_Array;

   type RaceTrackPickupLayer is new PickupLayer with record
      viewPositionEventHandler : ViewPositionEventHandler_Access;
   end record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out RaceTrackPickupLayer'Class);
   function Create return RaceTrackPickupLayer_Access;
   procedure setTiledLayer (This : in out RaceTrackPickupLayer; tiledLayer : AllBinaryTiledLayer_Access);
   procedure setDestroyed (This : in out RaceTrackPickupLayer; destroyed : Boolean);

end org.allbinary.game.layer.pickup.RaceTrackPickupLayer_Package;


