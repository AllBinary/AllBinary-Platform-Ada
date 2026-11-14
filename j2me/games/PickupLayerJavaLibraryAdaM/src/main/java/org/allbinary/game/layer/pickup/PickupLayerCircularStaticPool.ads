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
limited with org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;
package org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References is
   type PickupLayerCircularStaticPool_Access is access all org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package.PickupLayerCircularStaticPool'Class;
   type PickupLayerCircularStaticPool_Access_Array is array (Natural range <>) of PickupLayerCircularStaticPool_Access;
   type PickupLayerCircularStaticPool_Access_Array_Access is access all PickupLayerCircularStaticPool_Access_Array;
   type PickupLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of PickupLayerCircularStaticPool_Access_Array_Access;
   type PickupLayerCircularStaticPool_Access_Array_Access_Array_Access is access all PickupLayerCircularStaticPool_Access_Array_Access_Array;
   type PickupLayerCircularStaticPool_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickupLayerCircularStaticPool_Access_Array_Access;
   end record;
   function Java_Box (Value : PickupLayerCircularStaticPool_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickupLayerCircularStaticPool_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickupLayerCircularStaticPool_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickupLayerCircularStaticPool_Access_Array_Access is (if Value /= null and then Value.all in PickupLayerCircularStaticPool_Access_Array_Object'Class then PickupLayerCircularStaticPool_Access_Array_Object'Class (Value.all).Value else null);
   type PickupLayerCircularStaticPool_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PickupLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PickupLayerCircularStaticPool_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PickupLayerCircularStaticPool_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PickupLayerCircularStaticPool_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PickupLayerCircularStaticPool_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PickupLayerCircularStaticPool_Access_Array_Access_Array_Object'Class then PickupLayerCircularStaticPool_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References;

with org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package_References;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;

package org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package is

   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package Reference_Types is
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
   subtype PickedUpLayerInterfaceFactoryInterface_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array;
   subtype PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References.PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   use type PickedUpLayerInterfaceFactoryInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PickupLayerCircularStaticPool_Access is org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.PickupLayerCircularStaticPool_Access;
   function "=" (Left, Right : PickupLayerCircularStaticPool_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References."=";
   subtype PickupLayerCircularStaticPool_Access_Array is org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.PickupLayerCircularStaticPool_Access_Array;
   function "=" (Left, Right : PickupLayerCircularStaticPool_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References."=";
   subtype PickupLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.PickupLayerCircularStaticPool_Access_Array_Access;
   function "=" (Left, Right : PickupLayerCircularStaticPool_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : PickupLayerCircularStaticPool_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_PickupLayerCircularStaticPool_Access_Array (Value : access Java_Object'Class) return PickupLayerCircularStaticPool_Access_Array_Access renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.Java_Unbox_PickupLayerCircularStaticPool_Access_Array;
   subtype PickupLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.PickupLayerCircularStaticPool_Access_Array_Access_Array;
   function "=" (Left, Right : PickupLayerCircularStaticPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References."=";
   subtype PickupLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.PickupLayerCircularStaticPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PickupLayerCircularStaticPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References."=";
   function Java_Box (Value : PickupLayerCircularStaticPool_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.Java_Box;
   function Java_Unbox_PickupLayerCircularStaticPool_Access_Array_Access_Array (Value : access Java_Object'Class) return PickupLayerCircularStaticPool_Access_Array_Access_Array_Access renames org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package_References.Java_Unbox_PickupLayerCircularStaticPool_Access_Array_Access_Array;

   type PickupLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;
   SINGLETON : PickupLayerCircularStaticPool_Access;

   procedure Initialize (This : in out PickupLayerCircularStaticPool'Class);
   function Create return PickupLayerCircularStaticPool_Access;
   function getInstance return PickupLayerCircularStaticPool_Access;
   function getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer) return PickedUpLayerInterface_Access;
   procedure getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;


