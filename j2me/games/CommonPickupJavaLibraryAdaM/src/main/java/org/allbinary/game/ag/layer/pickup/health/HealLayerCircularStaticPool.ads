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
with org.allbinary.game.health.HealthInterface_Package; use org.allbinary.game.health.HealthInterface_Package;
with org.allbinary.game.health.HealthInterfaceCompositeInterface_Package; use org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.game.ag.layer.pickup.health.HealLayer_Package; use org.allbinary.game.ag.layer.pickup.health.HealLayer_Package;

package org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package is

   package HealthInterface_Package renames Standard.org.allbinary.game.health.HealthInterface_Package;
   package HealthInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.health.HealthInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type HealLayerCircularStaticPool is tagged;
   type HealLayerCircularStaticPool_Access is access all HealLayerCircularStaticPool'Class;
   type HealLayerCircularStaticPool_Access_Array is array (Natural range <>) of HealLayerCircularStaticPool_Access;
   type HealLayerCircularStaticPool_Access_Array_Access is access all HealLayerCircularStaticPool_Access_Array;

   type HealLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out HealLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer);
   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return HealLayerCircularStaticPool_Access;
   procedure visit (This : in out HealLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.health.HealLayerCircularStaticPool_Package;


