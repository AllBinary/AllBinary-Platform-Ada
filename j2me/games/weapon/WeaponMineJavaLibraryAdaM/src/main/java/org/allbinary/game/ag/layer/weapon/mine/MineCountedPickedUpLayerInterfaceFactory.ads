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
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.layer.pickup.IconLayerFactory_Package; use org.allbinary.game.layer.pickup.IconLayerFactory_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package; use org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
with org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package; use org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.logic.math.SmallIntegerSingletonFactory_Package; use org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package is

   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package WeaponProperties_Package renames org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package CountedPickedUpLayerInterfaceFactory_Package renames org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory_Package;
   package IconLayerFactory_Package renames org.allbinary.game.layer.pickup.IconLayerFactory_Package;
   package PickedUpLayerInterfaceFactoryInterface_Package renames org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface_Package;
   package PickedUpLayerTypeFactory_Package renames org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory_Package;
   package WeaponLayerCircularPool_Package renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ScoreableInterface_Package renames org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;
   package SmallIntegerSingletonFactory_Package renames org.allbinary.logic.math.SmallIntegerSingletonFactory_Package;
   package ABHashtable_Package renames org.allbinary.util.ABHashtable_Package;

   type MineCountedPickedUpLayerInterfaceFactory is tagged;
   type MineCountedPickedUpLayerInterfaceFactory_Access is access all MineCountedPickedUpLayerInterfaceFactory'Class;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array is array (Natural range <>) of MineCountedPickedUpLayerInterfaceFactory_Access;
   type MineCountedPickedUpLayerInterfaceFactory_Access_Array_Access is access all MineCountedPickedUpLayerInterfaceFactory_Access_Array;

   type MineCountedPickedUpLayerInterfaceFactory is new CountedPickedUpLayerInterfaceFactory with record
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access;
      weaponProperties : WeaponProperties_Access;
      smallIntegerSingletonFactory : SmallIntegerSingletonFactory_Access;
   end record;
   pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface_Access;

   procedure Initialize (This : in out MineCountedPickedUpLayerInterfaceFactory'Class);
   function Create return MineCountedPickedUpLayerInterfaceFactory_Access;
   procedure init;
   function getInstance return PickedUpLayerInterfaceFactoryInterface_Access;
   procedure getInstance;
   function getTotal (This : in out MineCountedPickedUpLayerInterfaceFactory) return Integer;
   procedure getTotal (This : in out MineCountedPickedUpLayerInterfaceFactory);
   function getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer) return AllBinaryLayer_Access;
   procedure getNextInstance (This : in out MineCountedPickedUpLayerInterfaceFactory; hashtable : ABHashtable_Access; x : Integer; y : Integer; z : Integer);

end org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;


