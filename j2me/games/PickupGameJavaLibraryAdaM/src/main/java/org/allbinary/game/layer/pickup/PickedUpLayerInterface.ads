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
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package is

   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;

   type PickedUpLayerInterface is interface and LayerInterface;
   type PickedUpLayerInterface_Access is access all PickedUpLayerInterface'Class;
   type PickedUpLayerInterface_Access_Array is array (Natural range <>) of PickedUpLayerInterface_Access;
   type PickedUpLayerInterface_Access_Array_Access is access all PickedUpLayerInterface_Access_Array;
   function getPickedUpLayerInterfaceFactoryInterface (This : in out PickedUpLayerInterface) return PickedUpLayerInterfaceFactoryInterface_Access is abstract;
   procedure setPickedUp (This : in out PickedUpLayerInterface) is abstract;

end org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;


