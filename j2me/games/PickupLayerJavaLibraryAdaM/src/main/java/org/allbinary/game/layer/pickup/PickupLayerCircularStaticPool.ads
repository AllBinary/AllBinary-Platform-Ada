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
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;

package org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package is

   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;

   type PickupLayerCircularStaticPool is tagged;
   type PickupLayerCircularStaticPool_Access is access all PickupLayerCircularStaticPool'Class;
   type PickupLayerCircularStaticPool_Access_Array is array (Natural range <>) of PickupLayerCircularStaticPool_Access;
   type PickupLayerCircularStaticPool_Access_Array_Access is access all PickupLayerCircularStaticPool_Access_Array;
   type PickupLayerCircularStaticPool_Access_Array_Access_Array is array (Natural range <>) of PickupLayerCircularStaticPool_Access_Array_Access;
   type PickupLayerCircularStaticPool_Access_Array_Access_Array_Access is access all PickupLayerCircularStaticPool_Access_Array_Access_Array;

   type PickupLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;
   SINGLETON : PickupLayerCircularStaticPool_Access;

   procedure Initialize (This : in out PickupLayerCircularStaticPool'Class);
   function Create return PickupLayerCircularStaticPool_Access;
   function getInstance return PickupLayerCircularStaticPool_Access;
   function getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer) return PickedUpLayerInterface_Access;
   procedure getInstanceXYZ (This : in out PickupLayerCircularStaticPool; pickedUpLayerInterfaceFactoryInterface_Param : access PickedUpLayerInterfaceFactoryInterface_Package.PickedUpLayerInterfaceFactoryInterface'Class; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool_Package;


