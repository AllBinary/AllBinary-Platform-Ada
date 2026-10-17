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
with org.allbinary.game.health.HealthInterfaceCompositeInterface_Package; use org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package; use org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package; use org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package; use org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;

package org.allbinary.game.layer.pickup.PickupBehavior_Package is

   package HealthInterfaceCompositeInterface_Package renames org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
   package CollidableCompositeLayer_Package renames org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CollidableDestroyableDamageableLayer_Package renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
   package CountedLayerInterfaceFactoryPart_Package renames org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
   package PartInterface_Package renames org.allbinary.game.part.PartInterface_Package;
   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type PickupBehavior is tagged;
   type PickupBehavior_Access is access all PickupBehavior'Class;
   type PickupBehavior_Access_Array is array (Natural range <>) of PickupBehavior_Access;
   type PickupBehavior_Access_Array_Access is access all PickupBehavior_Access_Array;

   type PickupBehavior is new PickupBehaviorInterface with record
      logUtil : LogUtil_Access;
      countedIndex : Integer;
      ownerLayerInterface : CollidableCompositeLayer_Access;
   end record;
   NULL_PICKUP_BEHAVIOR : Java_Object_Access;

   procedure Initialize (This : in out PickupBehavior'Class; ownerLayerInterface : CollidableCompositeLayer_Access; countedIndex : Integer);
   function Create (ownerLayerInterface : CollidableCompositeLayer_Access; countedIndex : Integer) return PickupBehavior_Access;
   function getNullInstance return PickupBehavior_Access;
   procedure getNullInstance;
   procedure doPickup (This : in out PickupBehavior; pickupProcessorInterface : PickupProcessorInterface_Access);
   procedure doPickupLayer (This : in out PickupBehavior; pickupLayerInterface : PickedUpLayerInterface_Access);
   procedure add (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface_Access);
   procedure addAt (This : in out PickupBehavior; countedPickedUpLayerInterfaceFactoryInterface : CountedPickedUpLayerInterfaceFactoryInterface_Access; partIndex : Integer);
   function getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access) return CountedLayerInterfaceFactoryPart_Access;
   procedure getFirstAvailableCountedLayerInterfaceFactory (This : in out PickupBehavior; pickedUpLayerTypeArray : PickedUpLayerType_Access_Array_Access);
   function getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer) return CountedLayerInterfaceFactoryPart_Access;
   procedure getCountedLayerInterfaceFactoryForSlot (This : in out PickupBehavior; slotIndex : Integer);
   function getCountedIndex (This : in out PickupBehavior) return Integer;
   procedure getCountedIndex (This : in out PickupBehavior);

end org.allbinary.game.layer.pickup.PickupBehavior_Package;


