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
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package; use org.allbinary.game.ag.layer.pickup.FallingPickupLayer_Package;

package org.allbinary.game.ag.layer.pickup.FallingPickupLayerFactory_Package is

   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type FallingPickupLayerFactory is tagged;
   type FallingPickupLayerFactory_Access is access all FallingPickupLayerFactory'Class;
   type FallingPickupLayerFactory_Access_Array is array (Natural range <>) of FallingPickupLayerFactory_Access;
   type FallingPickupLayerFactory_Access_Array_Access is access all FallingPickupLayerFactory_Access_Array;

   type FallingPickupLayerFactory is new AllBinaryLayerFactoryInterface with null record;

   procedure Initialize (This : in out FallingPickupLayerFactory'Class);
   function Create return FallingPickupLayerFactory_Access;
   function getInstance (This : in out FallingPickupLayerFactory) return AllBinaryLayer_Access;

end org.allbinary.game.ag.layer.pickup.FallingPickupLayerFactory_Package;


