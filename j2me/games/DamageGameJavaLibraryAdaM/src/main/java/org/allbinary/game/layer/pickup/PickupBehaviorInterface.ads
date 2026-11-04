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

limited with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
package org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References is
   type PickupBehaviorInterface_Access is access all org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package.PickupBehaviorInterface'Class;
   type PickupBehaviorInterface_Access_Array is array (Natural range <>) of PickupBehaviorInterface_Access;
   type PickupBehaviorInterface_Access_Array_Access is access all PickupBehaviorInterface_Access_Array;
   type PickupBehaviorInterface_Access_Array_Access_Array is array (Natural range <>) of PickupBehaviorInterface_Access_Array_Access;
   type PickupBehaviorInterface_Access_Array_Access_Array_Access is access all PickupBehaviorInterface_Access_Array_Access_Array;
end org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References;

with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;

package org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package is

   package Reference_Types is
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


   type PickupBehaviorInterface is interface;
   subtype PickupBehaviorInterface_Access is org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References.PickupBehaviorInterface_Access;
   function "=" (Left, Right : PickupBehaviorInterface_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References."=";
   subtype PickupBehaviorInterface_Access_Array is org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References.PickupBehaviorInterface_Access_Array;
   function "=" (Left, Right : PickupBehaviorInterface_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References."=";
   subtype PickupBehaviorInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References.PickupBehaviorInterface_Access_Array_Access;
   function "=" (Left, Right : PickupBehaviorInterface_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References."=";
   subtype PickupBehaviorInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References.PickupBehaviorInterface_Access_Array_Access_Array;
   function "=" (Left, Right : PickupBehaviorInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References."=";
   subtype PickupBehaviorInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References.PickupBehaviorInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickupBehaviorInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package_References."=";
   function Java_Object_Access_From_PickupBehaviorInterface (Value : PickupBehaviorInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure doPickup (This : in out PickupBehaviorInterface; pickupProcessorInterface_Param : access PickupProcessorInterface_Package.PickupProcessorInterface'Class) is abstract;
   procedure doPickupLayer (This : in out PickupBehaviorInterface; pickupLayerInterface_Param : access PickedUpLayerInterface_Package.PickedUpLayerInterface'Class) is abstract;

end org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;


