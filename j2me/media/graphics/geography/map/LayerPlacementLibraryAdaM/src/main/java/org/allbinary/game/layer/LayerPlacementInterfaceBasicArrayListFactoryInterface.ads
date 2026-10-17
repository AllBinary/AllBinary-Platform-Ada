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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;

   type LayerPlacementInterfaceBasicArrayListFactoryInterface is interface;
   type LayerPlacementInterfaceBasicArrayListFactoryInterface_Access is access all LayerPlacementInterfaceBasicArrayListFactoryInterface'Class;
   type LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array is array (Natural range <>) of LayerPlacementInterfaceBasicArrayListFactoryInterface_Access;
   type LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array_Access is access all LayerPlacementInterfaceBasicArrayListFactoryInterface_Access_Array;
   function getInstance (This : in out LayerPlacementInterfaceBasicArrayListFactoryInterface) return BasicArrayList_Access is abstract;
   function getOnDemandResources (This : in out LayerPlacementInterfaceBasicArrayListFactoryInterface) return Integer_Array_Access is abstract;

end org.allbinary.game.layer.LayerPlacementInterfaceBasicArrayListFactoryInterface_Package;


