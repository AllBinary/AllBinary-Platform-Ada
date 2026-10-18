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
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package; use org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package; use org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package; use org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;

package org.allbinary.game.layer.pickup.PickupBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CountedLayerInterfaceFactoryPart_Package renames Standard.org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type PickupBehavior is tagged;
   type PickupBehavior_Access is access all PickupBehavior'Class;
   type PickupBehavior_Access_Array is array (Natural range <>) of PickupBehavior_Access;
   type PickupBehavior_Access_Array_Access is access all PickupBehavior_Access_Array;
   type PickupBehavior_Access_Array_Access_Array is array (Natural range <>) of PickupBehavior_Access_Array_Access;
   type PickupBehavior_Access_Array_Access_Array_Access is access all PickupBehavior_Access_Array_Access_Array;

   type PickupBehavior is new Java_Object and PickupBehaviorInterface with record
      logUtil : LogUtil_Access;
      countedIndex : Integer;
      ownerLayerInterface : CollidableCompositeLayer_Access;
   end record;
   NULL_PICKUP_BEHAVIOR : Java_Object_Access;

   procedure Initialize (This : in out PickupBehavior'Class; ownerLayerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; countedIndex : Integer);
   function Create (ownerLayerInterface_Param : access CollidableCompositeLayer_Package.CollidableCompositeLayer'Class; countedIndex : Integer) return PickupBehavior_Access;
   function getNullInstance return PickupBehavior_Access;
   procedure doPickup (This : in out PickupBehavior; pickupProcessorInterface_Param : access PickupProcessorInterface_Package.PickupProcessorInterface'Class);
   procedure doPickupLayer (This : in out PickupBehavior; pickupLayerInterface_Param : access PickedUpLayerInterface_Package.PickedUpLayerInterface'Class);
   procedure add (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface_Param : access CountedPickedUpLayerInterfaceFactoryInterface_Package.CountedPickedUpLayerInterfaceFactoryInterface'Class);
   procedure addAt (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface_Param : access CountedPickedUpLayerInterfaceFactoryInterface_Package.CountedPickedUpLayerInterfaceFactoryInterface'Class; partIndex : Integer);
   function getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access) return CountedLayerInterfaceFactoryPart_Access;
   procedure getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access);
   function getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer) return CountedLayerInterfaceFactoryPart_Access;
   procedure getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer);
   function getCountedIndex (This : in out PickupBehavior) return Integer;

end org.allbinary.game.layer.pickup.PickupBehavior_Package;


