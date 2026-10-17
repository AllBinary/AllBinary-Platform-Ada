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
with org.allbinary.game.layer.pickup.PickupBehavior_Package; use org.allbinary.game.layer.pickup.PickupBehavior_Package;

package org.allbinary.game.layer.pickup.PickupCompositeInterface_Package is


   type PickupCompositeInterface is interface;
   type PickupCompositeInterface_Access is access all PickupCompositeInterface'Class;
   type PickupCompositeInterface_Access_Array is array (Natural range <>) of PickupCompositeInterface_Access;
   type PickupCompositeInterface_Access_Array_Access is access all PickupCompositeInterface_Access_Array;
   function getPickupBehavior (This : in out PickupCompositeInterface) return PickupBehavior_Access is abstract;
   procedure setPickupBehavior (This : in out PickupCompositeInterface; pickupBehavior : PickupBehavior_Access) is abstract;

end org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;


