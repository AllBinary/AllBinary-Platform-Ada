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
with javax.microedition.khronos.opengles.GL_Package; use javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package; use org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package; use org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.physics.movement.Movement_Package; use org.allbinary.physics.movement.Movement_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package; use org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;

package org.allbinary.game.layer.weapon.WeaponLayer_Package is

   package GL_Package renames Standard.javax.microedition.khronos.opengles.GL_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package CollidableBaseBehavior_Package renames Standard.org.allbinary.game.collision.CollidableBaseBehavior_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package MultiPlayerGameLayer_Package renames Standard.org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
   package RemoteInfo_Package renames Standard.org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package TickableInterface_Package renames Standard.org.allbinary.game.tick.TickableInterface_Package;
   package Rectangle_Package renames Standard.org.allbinary.graphics.Rectangle_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Movement_Package renames Standard.org.allbinary.physics.movement.Movement_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type WeaponLayer is tagged;
   type WeaponLayer_Access is access all WeaponLayer'Class;
   type WeaponLayer_Access_Array is array (Natural range <>) of WeaponLayer_Access;
   type WeaponLayer_Access_Array_Access is access all WeaponLayer_Access_Array;
   type WeaponLayer_Access_Array_Access_Array is array (Natural range <>) of WeaponLayer_Access_Array_Access;
   type WeaponLayer_Access_Array_Access_Array_Access is access all WeaponLayer_Access_Array_Access_Array;

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

   procedure Initialize (This : in out WeaponLayer'Class; name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class);
   function Create (name : Unbounded_String; remoteInfo_Param : access RemoteInfo_Package.RemoteInfo'Class; multiPlayerType : Integer; movement_Param : access Movement_Package.Movement'Class; animationInterface_Param : access Animation_Package.Animation'Class; destroyedAnimationInterface_Param : access Animation_Package.Animation'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class; viewPosition_Param : access ViewPositionBase_Package.ViewPositionBase'Class) return WeaponLayer_Access;
   procedure setCollidableInferface (This : in out WeaponLayer; collidableInferface_Param : access CollidableBaseBehavior_Package.CollidableBaseBehavior'Class);
   procedure initXYZ (This : in out WeaponLayer; x : Integer; y : Integer; z : Integer);
   procedure init (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class);
   procedure setGroupInterfaces (This : in out WeaponLayer);
   procedure processTick (This : in out WeaponLayer; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class);
   function isDestroyed (This : in out WeaponLayer) return Boolean;
   procedure damage (This : in out WeaponLayer; damage : Integer; damageType : Integer);
   procedure givePoints (This : in out WeaponLayer; total : Integer);
   function isExhausted (This : in out WeaponLayer) return Boolean;
   function getDamage (This : in out WeaponLayer; damageType : Integer) return Integer;
   procedure getDamage (This : in out WeaponLayer; damageType : Integer);
   procedure setDestroyed (This : in out WeaponLayer; destroyed : Boolean);
   function getInitDamage (This : in out WeaponLayer) return Integer;
   procedure setAnimationInterface (This : in out WeaponLayer; animationInterface_Param : access Animation_Package.Animation'Class);
   function getAnimationInterface (This : in out WeaponLayer) return Animation_Access;
   function getInitAnimationInterfaceP (This : in out WeaponLayer) return Animation_Access;
   procedure setInitAnimationInterfaceP (This : in out WeaponLayer; initAnimationInterface_Param : access Animation_Package.Animation'Class);
   function getDestroyedAnimationInterface (This : in out WeaponLayer) return Animation_Access;
   function getOwnerLayerInterface (This : in out WeaponLayer) return AllBinaryLayer_Access;
   procedure setOwnerLayerInterface (This : in out WeaponLayer; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   procedure paint (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out WeaponLayer; graphics_Param : access Graphics_Package.Graphics'Class);
   function getMovement (This : in out WeaponLayer) return Movement_Access;
   procedure setMovement (This : in out WeaponLayer; movement_Param : access Movement_Package.Movement'Class);
   function getType (This : in out WeaponLayer) return Integer;
   function getStaticType return Integer;
   function getMultiPlayerType (This : in out WeaponLayer) return Integer;
   procedure setWeaponPropertiesP (This : in out WeaponLayer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class);
   function getWeaponPropertiesP (This : in out WeaponLayer) return WeaponProperties_Access;
   function implmentsTickableInterface (This : in out WeaponLayer) return Boolean;
   procedure set (This : in out WeaponLayer; gl_Param : access GL_Package.GL'Class);

end org.allbinary.game.layer.weapon.WeaponLayer_Package;


