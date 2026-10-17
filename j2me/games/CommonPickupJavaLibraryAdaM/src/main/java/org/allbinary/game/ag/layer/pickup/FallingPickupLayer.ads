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
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickupLayer_Package; use org.allbinary.game.layer.pickup.PickupLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;

package org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package is

   package NullAnimationFactory_Package renames org.allbinary.animation.NullAnimationFactory_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package PickupLayer_Package renames org.allbinary.game.layer.pickup.PickupLayer_Package;
   package RemoteInfo_Package renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package TickableInterface_Package renames org.allbinary.game.tick.TickableInterface_Package;
   package PointFactory_Package renames org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;
   package ViewPosition_Package renames org.allbinary.view.ViewPosition_Package;

   type FallingPickupLayer is tagged;
   type FallingPickupLayer_Access is access all FallingPickupLayer'Class;
   type FallingPickupLayer_Access_Array is array (Natural range <>) of FallingPickupLayer_Access;
   type FallingPickupLayer_Access_Array_Access is access all FallingPickupLayer_Access_Array;

   type FallingPickupLayer is new PickupLayer and TickableInterface with null record;
   NAME : Unbounded_String;

   procedure Initialize (This : in out FallingPickupLayer'Class; remoteInfo : RemoteInfo_Access);
   function Create (remoteInfo : RemoteInfo_Access) return FallingPickupLayer_Access;
   procedure processTick (This : in out FallingPickupLayer; allBinaryLayerManager : AllBinaryLayerManager_Access);
   function implmentsTickableInterface (This : in out FallingPickupLayer) return Boolean;
   procedure implmentsTickableInterface (This : in out FallingPickupLayer);

end org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;


