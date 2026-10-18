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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;

package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PickedUpLayerInterfaceFactoryInterface is interface;
   type PickedUpLayerInterfaceFactoryInterface_Access is access all PickedUpLayerInterfaceFactoryInterface'Class;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryInterface_Access;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is access all PickedUpLayerInterfaceFactoryInterface_Access_Array;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is access all PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryInterface) return PickedUpLayerType_Access is abstract;
   function getIconLayer (This : in out PickedUpLayerInterfaceFactoryInterface) return AllBinaryLayer_Access is abstract;
   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryInterface) return Animation_Access is abstract;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;


