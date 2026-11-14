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
limited with org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References is
   type LifePickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package.LifePickedUpLayerInterfaceFactory'Class;
   type LifePickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of LifePickedUpLayerInterfaceFactory_Access;
   type LifePickedUpLayerInterfaceFactory_Access_Array_Access is access all LifePickedUpLayerInterfaceFactory_Access_Array;
   type LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of LifePickedUpLayerInterfaceFactory_Access_Array_Access;
   type LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   type LifePickedUpLayerInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifePickedUpLayerInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifePickedUpLayerInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in LifePickedUpLayerInterfaceFactory_Access_Array_Object'Class then LifePickedUpLayerInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class then LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References;

package org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package is

   package PickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupProcessorInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   use type AllBinaryLayer_Access;
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   use type AllBinaryLayer_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access;
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   use type AllBinaryLayer_Access_Array_Access_Array;
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   use type AllBinaryLayer_Access_Array_Access_Array_Access;
   subtype LifeLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access;
   use type LifeLayerCircularStaticPool_Access;
   subtype LifeLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array;
   use type LifeLayerCircularStaticPool_Access_Array;
   subtype LifeLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access;
   use type LifeLayerCircularStaticPool_Access_Array_Access;
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array;
   use type LifeLayerCircularStaticPool_Access_Array_Access_Array;
   subtype LifeLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package_References.LifeLayerCircularStaticPool_Access_Array_Access_Array_Access;
   use type LifeLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LifePickedUpLayerInterfaceFactory_Access is org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.LifePickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : LifePickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References."=";
   subtype LifePickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.LifePickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : LifePickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References."=";
   subtype LifePickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.LifePickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : LifePickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array (Value : access Java_Object'Class) return LifePickedUpLayerInterfaceFactory_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array;
   subtype LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References."=";
   subtype LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References."=";
   function Java_Box (Value : LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package_References.Java_Unbox_LifePickedUpLayerInterfaceFactory_Access_Array_Access_Array;

   type LifePickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and PickupProcessorInterface with record
      pool : LifeLayerCircularStaticPool_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out LifePickedUpLayerInterfaceFactory'Class);
   function Create return LifePickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getTotal (This : in out LifePickedUpLayerInterfaceFactory) return Integer;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure process (This : in out LifePickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.life.LifePickedUpLayerInterfaceFactory_Package;


