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
--  with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.IndexedAnimation_Package; use org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package; use org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.configuration.GameConfigurationUtil_Package; use org.allbinary.game.configuration.GameConfigurationUtil_Package;
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.view.ViewPosition_Package; use org.allbinary.view.ViewPosition_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;

package org.allbinary.game.layer.weapon.WeaponLayer_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package IndexedAnimation_Package renames Standard.org.allbinary.animation.IndexedAnimation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package DestroyedLayerProcessor_Package renames Standard.org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package GameConfigurationUtil_Package renames Standard.org.allbinary.game.configuration.GameConfigurationUtil_Package;
   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;
   package MultiPlayerGameLayer_Package renames Standard.org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Movement_Package renames Standard.org.allbinary.physics.movement.Movement_Package;
   package ViewPosition_Package renames Standard.org.allbinary.view.ViewPosition_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type WeaponLayer is tagged;
   type WeaponLayer_Access is access all WeaponLayer'Class;
   type WeaponLayer_Access_Array is array (Natural range <>) of WeaponLayer_Access;
   type WeaponLayer_Access_Array_Access is access all WeaponLayer_Access_Array;

   type WeaponLayer is new MultiPlayerGameLayer and TickableInterface with record
      animationInterface : Animation_Access;
      initAnimationInterface : Animation_Access;
      destroyedAnimationInterface : Animation_Access;
      sourceLayerInterface : AllBinaryLayer_Access;
      totalDamage : Integer;
      initDamage : Integer;
      destroyed : Boolean;
      scoreableInterface : ScoreableInterface_Access;
      movement : Movement_Access;
      weaponProperties : WeaponProperties_Access;
      multiPlayerType : Integer;
      collidableWeaponBehavior : CollidableWeaponBehavior_Access;
   end record;

   procedure Initialize (This : in out WeaponLayer'Class; name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access);
   function Create (name : Unbounded_String; remoteInfo : RemoteInfo_Access; multiPlayerType : Integer; movement : Movement_Access; animationInterface : Animation_Access; destroyedAnimationInterface : Animation_Access; rectangle : Rectangle_Access; viewPosition : ViewPositionBase_Access) return WeaponLayer_Access;
   procedure setCollidableInferface (This : in out WeaponLayer; collidableInferface : CollidableBaseBehavior_Access);
   procedure initXYZ (This : in out WeaponLayer; x : Integer; y : Integer; z : Integer);
   procedure init (This : in out WeaponLayer; sourceLayerInterface : AllBinaryLayer_Access; angle : Integer; otherAngle : Integer; weaponProperties : WeaponProperties_Access; scoreable : ScoreableInterface_Access);
   procedure setGroupInterfaces (This : in out WeaponLayer);
   procedure processTick (This : in out WeaponLayer; allBinaryLayerManager : AllBinaryLayerManager_Access);
   function isDestroyed (This : in out WeaponLayer) return Boolean;
   procedure isDestroyed (This : in out WeaponLayer);
   procedure damage (This : in out WeaponLayer; damage : Integer; damageType : Integer);
   procedure givePoints (This : in out WeaponLayer; total : Integer);
   function isExhausted (This : in out WeaponLayer) return Boolean;
   procedure isExhausted (This : in out WeaponLayer);
   function getDamage (This : in out WeaponLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out WeaponLayer; damageType : Integer);
   procedure setDestroyed (This : in out WeaponLayer; destroyed : Boolean);
   function getInitDamage (This : in out WeaponLayer) return Integer;
   procedure getInitDamage (This : in out WeaponLayer);
   procedure setAnimationInterface (This : in out WeaponLayer; animationInterface : Animation_Access);
   function getAnimationInterface (This : in out WeaponLayer) return Animation_Access;
   procedure getAnimationInterface (This : in out WeaponLayer);
   function getInitAnimationInterfaceP (This : in out WeaponLayer) return Animation_Access;
   procedure getInitAnimationInterfaceP (This : in out WeaponLayer);
   procedure setInitAnimationInterfaceP (This : in out WeaponLayer; initAnimationInterface : Animation_Access);
   function getDestroyedAnimationInterface (This : in out WeaponLayer) return Animation_Access;
   procedure getDestroyedAnimationInterface (This : in out WeaponLayer);
   function getOwnerLayerInterface (This : in out WeaponLayer) return AllBinaryLayer_Access;
   procedure getOwnerLayerInterface (This : in out WeaponLayer);
   procedure setOwnerLayerInterface (This : in out WeaponLayer; sourceLayerInterface : AllBinaryLayer_Access);
   procedure paint (This : in out WeaponLayer; graphics : Graphics_Access);
   procedure paintThreed (This : in out WeaponLayer; graphics : Graphics_Access);
   function getMovement (This : in out WeaponLayer) return Movement_Access;
   procedure getMovement (This : in out WeaponLayer);
   procedure setMovement (This : in out WeaponLayer; movement : Movement_Access);
   function getType (This : in out WeaponLayer) return Integer;
   procedure getType (This : in out WeaponLayer);
   function getStaticType return Integer;
   procedure getStaticType;
   function getMultiPlayerType (This : in out WeaponLayer) return Integer;
   procedure getMultiPlayerType (This : in out WeaponLayer);
   procedure setWeaponPropertiesP (This : in out WeaponLayer; weaponProperties : WeaponProperties_Access);
   function getWeaponPropertiesP (This : in out WeaponLayer) return WeaponProperties_Access;
   procedure getWeaponPropertiesP (This : in out WeaponLayer);
   function implmentsTickableInterface (This : in out WeaponLayer) return Boolean;
   procedure implmentsTickableInterface (This : in out WeaponLayer);
   procedure set (This : in out WeaponLayer; gl : GL_Access);

end org.allbinary.game.layer.weapon.WeaponLayer_Package;


