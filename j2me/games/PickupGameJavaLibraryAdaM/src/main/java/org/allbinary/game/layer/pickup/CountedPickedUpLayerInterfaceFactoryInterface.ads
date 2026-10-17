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
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package is

   package LayerInterfaceFactoryInterface_Package renames org.allbinary.layer.LayerInterfaceFactoryInterface_Package;

   type CountedPickedUpLayerInterfaceFactoryInterface is interface and PickedUpLayerInterfaceFactoryInterface and LayerInterfaceFactoryInterface;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access is access all CountedPickedUpLayerInterfaceFactoryInterface'Class;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array is array (Natural range <>) of CountedPickedUpLayerInterfaceFactoryInterface_Access;
   type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access is access all CountedPickedUpLayerInterfaceFactoryInterface_Access_Array;
   function getId (This : in out CountedPickedUpLayerInterfaceFactoryInterface) return Integer is abstract;
   function getTotal (This : in out CountedPickedUpLayerInterfaceFactoryInterface) return Integer is abstract;

end org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;


