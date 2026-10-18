-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;

package org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PickedUpLayerInterfaceFactoryBase is tagged;
   type PickedUpLayerInterfaceFactoryBase_Access is access all PickedUpLayerInterfaceFactoryBase'Class;
   type PickedUpLayerInterfaceFactoryBase_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryBase_Access;
   type PickedUpLayerInterfaceFactoryBase_Access_Array_Access is access all PickedUpLayerInterfaceFactoryBase_Access_Array;
   type PickedUpLayerInterfaceFactoryBase_Access_Array_Access_Array is array (Natural range <>) of PickedUpLayerInterfaceFactoryBase_Access_Array_Access;
   type PickedUpLayerInterfaceFactoryBase_Access_Array_Access_Array_Access is access all PickedUpLayerInterfaceFactoryBase_Access_Array_Access_Array;

   type PickedUpLayerInterfaceFactoryBase is new Java_Object and PickedUpLayerInterfaceFactoryInterface with null record;
   NULL_PICKED_UP_LAYER_FACTORY_BASE : PickedUpLayerInterfaceFactoryBase_Access;

   procedure Initialize (This : in out PickedUpLayerInterfaceFactoryBase'Class);
   function Create return PickedUpLayerInterfaceFactoryBase_Access;
   function getIconLayer (This : in out PickedUpLayerInterfaceFactoryBase) return AllBinaryLayer_Access;
   function getAnimationInterface (This : in out PickedUpLayerInterfaceFactoryBase) return Animation_Access;
   function getPickedUpLayerType (This : in out PickedUpLayerInterfaceFactoryBase) return PickedUpLayerType_Access;

end org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryBase_Package;


