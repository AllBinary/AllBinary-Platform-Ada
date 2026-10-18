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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;

package org.allbinary.game.layer.pickup.PickupProcessorInterface_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type PickupProcessorInterface is interface;
   type PickupProcessorInterface_Access is access all PickupProcessorInterface'Class;
   type PickupProcessorInterface_Access_Array is array (Natural range <>) of PickupProcessorInterface_Access;
   type PickupProcessorInterface_Access_Array_Access is access all PickupProcessorInterface_Access_Array;
   type PickupProcessorInterface_Access_Array_Access_Array is array (Natural range <>) of PickupProcessorInterface_Access_Array_Access;
   type PickupProcessorInterface_Access_Array_Access_Array_Access is access all PickupProcessorInterface_Access_Array_Access_Array;
   procedure process (This : in out PickupProcessorInterface; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is abstract;

end org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;


