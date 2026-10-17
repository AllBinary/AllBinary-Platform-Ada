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
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package; use org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
with org.allbinary.animation.NullIndexedAnimationFactory_Package; use org.allbinary.animation.NullIndexedAnimationFactory_Package;
with org.allbinary.game.combat.damage.ExplosionResources_Package; use org.allbinary.game.combat.damage.ExplosionResources_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;

package org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package is

   package Animation_Package renames org.allbinary.animation.Animation_Package;
   package FeaturedAnimationInterfaceFactoryInterfaceFactory_Package renames org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory_Package;
   package NullIndexedAnimationFactory_Package renames org.allbinary.animation.NullIndexedAnimationFactory_Package;
   package ExplosionResources_Package renames org.allbinary.game.combat.damage.ExplosionResources_Package;
   package RemoteInfo_Package renames org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package Movement_Package renames org.allbinary.physics.movement.Movement_Package;
   package ViewPositionBase_Package renames org.allbinary.view.ViewPositionBase_Package;

   type SimpleWeaponLayer is tagged;
   type SimpleWeaponLayer_Access is access all SimpleWeaponLayer'Class;
   type SimpleWeaponLayer_Access_Array is array (Natural range <>) of SimpleWeaponLayer_Access;
   type SimpleWeaponLayer_Access_Array_Access is access all SimpleWeaponLayer_Access_Array;

   type SimpleWeaponLayer is new WeaponLayer with null record;

   procedure Initialize (This : in out SimpleWeaponLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access);
   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return SimpleWeaponLayer_Access;
   function createDestroyed return Animation_Access;
   procedure createDestroyed;

end org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;


