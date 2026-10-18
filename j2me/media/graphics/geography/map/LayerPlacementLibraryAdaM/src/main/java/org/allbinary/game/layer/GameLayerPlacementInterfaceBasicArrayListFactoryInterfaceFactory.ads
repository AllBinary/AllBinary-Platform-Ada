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
with org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package; use org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package;

package org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package is


   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory is interface;
   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access is access all GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory'Class;
   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array is array (Natural range <>) of GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access;
   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access is access all GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array;
   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access;
   type GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array_Access is access all GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Access_Array_Access_Array;
   function getInstance (This : in out GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory; level : Integer) return LayerPlacementInterfaceBasicArrayListFactoryInterface_Access is abstract;
   function size (This : in out GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory) return Integer is abstract;

end org.allbinary.game.layer.GameLayerPlacementInterfaceBasicArrayListFactoryInterfaceFactory_Package;


