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
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.time.GameTickTimeDelayHelperFactory_Package; use org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
with org.allbinary.time.TimeDelayHelper_Package; use org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package; use org.allbinary.game.layer.weapon.SimpleWeaponLayer_Package;

package org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Movement_Package renames Standard.org.allbinary.physics.movement.Movement_Package;
   package GameTickTimeDelayHelperFactory_Package renames Standard.org.allbinary.time.GameTickTimeDelayHelperFactory_Package;
   package TimeDelayHelper_Package renames Standard.org.allbinary.time.TimeDelayHelper_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type TempExplosionWeaponLayer is tagged;
   type TempExplosionWeaponLayer_Access is access all TempExplosionWeaponLayer'Class;
   type TempExplosionWeaponLayer_Access_Array is array (Natural range <>) of TempExplosionWeaponLayer_Access;
   type TempExplosionWeaponLayer_Access_Array_Access is access all TempExplosionWeaponLayer_Access_Array;

   type TempExplosionWeaponLayer is new SimpleWeaponLayer with record
      weaponProperties : WeaponProperties_Access;
      timeDelayHelper : TimeDelayHelper_Access;
   end record;

   procedure Initialize (This : in out TempExplosionWeaponLayer'Class; name : Unbounded_String; movement : Movement_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; timeDelay : Integer);
   function Create (name : Unbounded_String; movement : Movement_Access; animationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access; timeDelay : Integer) return TempExplosionWeaponLayer_Access;
   procedure processTick (This : in out TempExplosionWeaponLayer; allBinaryLayerManager : AllBinaryLayerManager_Access);

end org.allbinary.game.layer.weapon.TempExplosionWeaponLayer_Package;


