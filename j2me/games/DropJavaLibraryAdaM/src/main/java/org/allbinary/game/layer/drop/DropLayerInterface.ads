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
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.layer.LayerInterface_Package; use org.allbinary.layer.LayerInterface_Package;

package org.allbinary.game.layer.drop.DropLayerInterface_Package is

   package PickedUpLayerInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
   package LayerInterface_Package renames Standard.org.allbinary.layer.LayerInterface_Package;

   type DropLayerInterface is interface and LayerInterface;
   type DropLayerInterface_Access is access all DropLayerInterface'Class;
   type DropLayerInterface_Access_Array is array (Natural range <>) of DropLayerInterface_Access;
   type DropLayerInterface_Access_Array_Access is access all DropLayerInterface_Access_Array;
   type DropLayerInterface_Access_Array_Access_Array is array (Natural range <>) of DropLayerInterface_Access_Array_Access;
   type DropLayerInterface_Access_Array_Access_Array_Access is access all DropLayerInterface_Access_Array_Access_Array;
   function getDroppedLayer (This : in out DropLayerInterface) return PickedUpLayerInterface_Access is abstract;

end org.allbinary.game.layer.drop.DropLayerInterface_Package;


