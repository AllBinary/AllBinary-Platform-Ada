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

with AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickupBehavior_Package;
package org.allbinary.game.layer.pickup.PickupBehavior_Package_References is
   type PickupBehavior_Access is access all org.allbinary.game.layer.pickup.PickupBehavior_Package.PickupBehavior'Class;
   type PickupBehavior_Access_Array is array (Natural range <>) of PickupBehavior_Access;
   type PickupBehavior_Access_Array_Access is access all PickupBehavior_Access_Array;
   type PickupBehavior_Access_Array_Access_Array is array (Natural range <>) of PickupBehavior_Access_Array_Access;
   type PickupBehavior_Access_Array_Access_Array_Access is access all PickupBehavior_Access_Array_Access_Array;
   type PickupBehavior_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickupBehavior_Access_Array_Access;
   end record;
   function Java_Box (Value : PickupBehavior_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickupBehavior_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickupBehavior_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickupBehavior_Access_Array_Access is (if Value /= null and then Value.all in PickupBehavior_Access_Array_Object'Class then PickupBehavior_Access_Array_Object'Class (Value.all).Value else null);
   type PickupBehavior_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickupBehavior_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PickupBehavior_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickupBehavior_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickupBehavior_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickupBehavior_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PickupBehavior_Access_Array_Access_Array_Object'Class then PickupBehavior_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.PickupBehavior_Package_References;

with org.allbinary.game.layer.pickup.PickupBehavior_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.CollidableCompositeLayer_Package;
with org.allbinary.game.layer.CollidableCompositeLayer_Package_References;
limited with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
with org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package; use org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
limited with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerType_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References;
limited with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;

package org.allbinary.game.layer.pickup.PickupBehavior_Package is

   package CollidableCompositeLayer_Package renames Standard.org.allbinary.game.layer.CollidableCompositeLayer_Package;
   package CountedLayerInterfaceFactoryPart_Package renames Standard.org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
   subtype CollidableCompositeLayer_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access;
   use type CollidableCompositeLayer_Access;
   subtype CollidableCompositeLayer_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array;
   use type CollidableCompositeLayer_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access;
   subtype CollidableCompositeLayer_Access_Array_Access_Array is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array;
   use type CollidableCompositeLayer_Access_Array_Access_Array;
   subtype CollidableCompositeLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.CollidableCompositeLayer_Package_References.CollidableCompositeLayer_Access_Array_Access_Array_Access;
   use type CollidableCompositeLayer_Access_Array_Access_Array_Access;
   subtype CountedLayerInterfaceFactoryPart_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access;
   use type CountedLayerInterfaceFactoryPart_Access;
   subtype CountedLayerInterfaceFactoryPart_Access_Array is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array;
   use type CountedLayerInterfaceFactoryPart_Access_Array;
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access;
   use type CountedLayerInterfaceFactoryPart_Access_Array_Access;
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access_Array is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;
   use type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array;
   subtype CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access is org.allbinary.game.part.CountedLayerInterfaceFactoryPart_Package_References.CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access;
   use type CountedLayerInterfaceFactoryPart_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PickupProcessorInterface_Access is org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References.PickupProcessorInterface_Access;
   use type PickupProcessorInterface_Access;
   subtype PickupProcessorInterface_Access_Array is org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References.PickupProcessorInterface_Access_Array;
   use type PickupProcessorInterface_Access_Array;
   subtype PickupProcessorInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References.PickupProcessorInterface_Access_Array_Access;
   use type PickupProcessorInterface_Access_Array_Access;
   subtype PickupProcessorInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References.PickupProcessorInterface_Access_Array_Access_Array;
   use type PickupProcessorInterface_Access_Array_Access_Array;
   subtype PickupProcessorInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References.PickupProcessorInterface_Access_Array_Access_Array_Access;
   use type PickupProcessorInterface_Access_Array_Access_Array_Access;
   subtype PickedUpLayerType_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access;
   use type PickedUpLayerType_Access;
   subtype PickedUpLayerType_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array;
   use type PickedUpLayerType_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access;
   subtype PickedUpLayerType_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array;
   use type PickedUpLayerType_Access_Array_Access_Array;
   subtype PickedUpLayerType_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerType_Package_References.PickedUpLayerType_Access_Array_Access_Array_Access;
   use type PickedUpLayerType_Access_Array_Access_Array_Access;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access;
   use type CountedPickedUpLayerInterfaceFactoryInterface_Access;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array;
   use type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   use type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactoryInterface_Package_References.CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type CountedPickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   subtype PickedUpLayerInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access;
   use type PickedUpLayerInterface_Access;
   subtype PickedUpLayerInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array;
   use type PickedUpLayerInterface_Access_Array;
   subtype PickedUpLayerInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access;
   use type PickedUpLayerInterface_Access_Array_Access;
   subtype PickedUpLayerInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References.PickedUpLayerInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PickupBehavior_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access;
   function "=" (Left, Right : PickupBehavior_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array;
   function "=" (Left, Right : PickupBehavior_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   function Java_Box (Value : PickupBehavior_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References.Java_Box;
   function Java_Unbox_PickupBehavior_Access_Array (Value : access Java_Object'Class) return PickupBehavior_Access_Array_Access renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References.Java_Unbox_PickupBehavior_Access_Array;
   subtype PickupBehavior_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   subtype PickupBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehavior_Package_References.PickupBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickupBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References."=";
   function Java_Box (Value : PickupBehavior_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References.Java_Box;
   function Java_Unbox_PickupBehavior_Access_Array_Access_Array (Value : access Java_Object'Class) return PickupBehavior_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.PickupBehavior_Package_References.Java_Unbox_PickupBehavior_Access_Array_Access_Array;

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


