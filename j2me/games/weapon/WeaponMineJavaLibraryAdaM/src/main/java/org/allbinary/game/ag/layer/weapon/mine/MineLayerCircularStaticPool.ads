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
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.view.ViewPositionFactoryInterface_Package; use org.allbinary.view.ViewPositionFactoryInterface_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package; use org.allbinary.game.ag.layer.weapon.mine.MineCountedPickedUpLayerInterfaceFactory_Package;
with org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package; use org.allbinary.game.ag.layer.weapon.mine.MineLayerFactory_Package;

package org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package is

   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ViewPositionFactoryInterface_Package renames Standard.org.allbinary.view.ViewPositionFactoryInterface_Package;

   type MineLayerCircularStaticPool is tagged;
   type MineLayerCircularStaticPool_Access is access all MineLayerCircularStaticPool'Class;
   type MineLayerCircularStaticPool_Access_Array is array (Natural range <>) of MineLayerCircularStaticPool_Access;
   type MineLayerCircularStaticPool_Access_Array_Access is access all MineLayerCircularStaticPool_Access_Array;

   type MineLayerCircularStaticPool is new Java_Object with null record;
   WEAPON_LAYER_CIRCULAR_STATIC_POOL : WeaponLayerCircularPool_Access;

   procedure Initialize (This : in out MineLayerCircularStaticPool'Class);
   function Create return MineLayerCircularStaticPool_Access;
   procedure init (viewPositionFactoryInterface_Param : access ViewPositionFactoryInterface'Class);
   function getInstance return WeaponLayerCircularPool_Access;

end org.allbinary.game.ag.layer.weapon.mine.MineLayerCircularStaticPool_Package;


