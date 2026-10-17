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
with org.allbinary.game.ag.life.Life_Package; use org.allbinary.game.ag.life.Life_Package;
with org.allbinary.game.ag.life.LifeInterfaceCompositeInterface_Package; use org.allbinary.game.ag.life.LifeInterfaceCompositeInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.layer.AllBinaryLayerFactoryInterface_Package; use org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;
with org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package; use org.allbinary.game.ag.layer.pickup.life.LifeLayer_Package;

package org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package is

   package Life_Package renames Standard.org.allbinary.game.ag.life.Life_Package;
   package LifeInterfaceCompositeInterface_Package renames Standard.org.allbinary.game.ag.life.LifeInterfaceCompositeInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package AllBinaryLayerFactoryInterface_Package renames Standard.org.allbinary.layer.AllBinaryLayerFactoryInterface_Package;

   type LifeLayerCircularStaticPool is tagged;
   type LifeLayerCircularStaticPool_Access is access all LifeLayerCircularStaticPool'Class;
   type LifeLayerCircularStaticPool_Access_Array is array (Natural range <>) of LifeLayerCircularStaticPool_Access;
   type LifeLayerCircularStaticPool_Access_Array_Access is access all LifeLayerCircularStaticPool_Access_Array;

   type LifeLayerCircularStaticPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out LifeLayerCircularStaticPool'Class; allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer);
   function Create (allbinaryLayerFactoryInterface_Param : access AllBinaryLayerFactoryInterface_Package.AllBinaryLayerFactoryInterface'Class; total : Integer) return LifeLayerCircularStaticPool_Access;
   procedure visit (This : in out LifeLayerCircularStaticPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);

end org.allbinary.game.ag.layer.pickup.life.LifeLayerCircularStaticPool_Package;


