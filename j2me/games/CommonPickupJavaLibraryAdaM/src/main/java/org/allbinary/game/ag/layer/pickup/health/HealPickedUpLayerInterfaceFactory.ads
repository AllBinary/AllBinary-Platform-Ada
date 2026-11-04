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

limited with org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package;
package org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References is
   type HealPickedUpLayerInterfaceFactory_Access is access all org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package.HealPickedUpLayerInterfaceFactory'Class;
   type HealPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of HealPickedUpLayerInterfaceFactory_Access;
   type HealPickedUpLayerInterfaceFactory_Access_Array_Access is access all HealPickedUpLayerInterfaceFactory_Access_Array;
   type HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of HealPickedUpLayerInterfaceFactory_Access_Array_Access;
   type HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is access all HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References;

with org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
limited with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package_References;
with org.allbinary.game.layer.pickup.PickupProcessorInterface_Package; use org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;
with org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References;

package org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package is

   package PickedUpLayerInterfaceFactory_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickupProcessorInterface_Package renames Standard.org.allbinary.game.layer.pickup.PickupProcessorInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package Reference_Types is
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
   subtype HealLayerCircularStaticPool_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access;
   use type HealLayerCircularStaticPool_Access;
   subtype HealLayerCircularStaticPool_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array;
   use type HealLayerCircularStaticPool_Access_Array;
   subtype HealLayerCircularStaticPool_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access;
   use type HealLayerCircularStaticPool_Access_Array_Access;
   subtype HealLayerCircularStaticPool_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access_Array;
   use type HealLayerCircularStaticPool_Access_Array_Access_Array;
   subtype HealLayerCircularStaticPool_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package_References.HealLayerCircularStaticPool_Access_Array_Access_Array_Access;
   use type HealLayerCircularStaticPool_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype HealPickedUpLayerInterfaceFactory_Access is org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References.HealPickedUpLayerInterfaceFactory_Access;
   function "=" (Left, Right : HealPickedUpLayerInterfaceFactory_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References."=";
   subtype HealPickedUpLayerInterfaceFactory_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References.HealPickedUpLayerInterfaceFactory_Access_Array;
   function "=" (Left, Right : HealPickedUpLayerInterfaceFactory_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References."=";
   subtype HealPickedUpLayerInterfaceFactory_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References.HealPickedUpLayerInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : HealPickedUpLayerInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References."=";
   subtype HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array is org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References.HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References."=";
   subtype HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References.HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HealPickedUpLayerInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package_References."=";

   type HealPickedUpLayerInterfaceFactory is new PickedUpLayerInterfaceFactory and PickupProcessorInterface with record
      pool : HealLayerCircularStaticPool_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out HealPickedUpLayerInterfaceFactory'Class);
   function Create return HealPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getTotal (This : in out HealPickedUpLayerInterfaceFactory) return Integer;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure process (This : in out HealPickedUpLayerInterfaceFactory; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.health.HealPickedUpLayerInterfaceFactory_Package;


