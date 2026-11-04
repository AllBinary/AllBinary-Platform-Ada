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

limited with org.allbinary.game.layer.weapon.WeaponLayer_Package;
package org.allbinary.game.layer.weapon.WeaponLayer_Package_References is
   type WeaponLayer_Access is access all org.allbinary.game.layer.weapon.WeaponLayer_Package.WeaponLayer'Class;
   type WeaponLayer_Access_Array is array (Natural range <>) of WeaponLayer_Access;
   type WeaponLayer_Access_Array_Access is access all WeaponLayer_Access_Array;
   type WeaponLayer_Access_Array_Access_Array is array (Natural range <>) of WeaponLayer_Access_Array_Access;
   type WeaponLayer_Access_Array_Access_Array_Access is access all WeaponLayer_Access_Array_Access_Array;
end org.allbinary.game.layer.weapon.WeaponLayer_Package_References;

with org.allbinary.game.layer.weapon.WeaponLayer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL_Package;
with javax.microedition.khronos.opengles.GL_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.collision.CollidableBaseBehavior_Package;
with org.allbinary.game.collision.CollidableBaseBehavior_Package_References;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package; use org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer_Package;
limited with org.allbinary.game.multiplayer.layer.RemoteInfo_Package;
with org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.game.tick.TickableInterface_Package; use org.allbinary.game.tick.TickableInterface_Package;
limited with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.Rectangle_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
limited with org.allbinary.physics.movement.Movement_Package;
with org.allbinary.physics.movement.Movement_Package_References;
limited with org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.view.ViewPositionBase_Package_References;
limited with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References;

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
   package Reference_Types is
   subtype GL_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access;
   use type GL_Access;
   subtype GL_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array;
   use type GL_Access_Array;
   subtype GL_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access;
   use type GL_Access_Array_Access;
   subtype GL_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array;
   use type GL_Access_Array_Access_Array;
   subtype GL_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL_Package_References.GL_Access_Array_Access_Array_Access;
   use type GL_Access_Array_Access_Array_Access;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
   subtype CollidableBaseBehavior_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access;
   use type CollidableBaseBehavior_Access;
   subtype CollidableBaseBehavior_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array;
   use type CollidableBaseBehavior_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access;
   subtype CollidableBaseBehavior_Access_Array_Access_Array is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array;
   use type CollidableBaseBehavior_Access_Array_Access_Array;
   subtype CollidableBaseBehavior_Access_Array_Access_Array_Access is org.allbinary.game.collision.CollidableBaseBehavior_Package_References.CollidableBaseBehavior_Access_Array_Access_Array_Access;
   use type CollidableBaseBehavior_Access_Array_Access_Array_Access;
   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   use type WeaponProperties_Access;
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   use type WeaponProperties_Access_Array;
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access;
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   use type WeaponProperties_Access_Array_Access_Array;
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   use type WeaponProperties_Access_Array_Access_Array_Access;
   subtype RemoteInfo_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access;
   use type RemoteInfo_Access;
   subtype RemoteInfo_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array;
   use type RemoteInfo_Access_Array;
   subtype RemoteInfo_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access;
   subtype RemoteInfo_Access_Array_Access_Array is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array;
   use type RemoteInfo_Access_Array_Access_Array;
   subtype RemoteInfo_Access_Array_Access_Array_Access is org.allbinary.game.multiplayer.layer.RemoteInfo_Package_References.RemoteInfo_Access_Array_Access_Array_Access;
   use type RemoteInfo_Access_Array_Access_Array_Access;
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   use type ScoreableInterface_Access;
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   use type ScoreableInterface_Access_Array;
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access;
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   use type ScoreableInterface_Access_Array_Access_Array;
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   use type ScoreableInterface_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.graphics.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   use type AllBinaryLayerManager_Access;
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   use type AllBinaryLayerManager_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access;
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   use type AllBinaryLayerManager_Access_Array_Access_Array;
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   use type AllBinaryLayerManager_Access_Array_Access_Array_Access;
   subtype Movement_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access;
   use type Movement_Access;
   subtype Movement_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array;
   use type Movement_Access_Array;
   subtype Movement_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access;
   use type Movement_Access_Array_Access;
   subtype Movement_Access_Array_Access_Array is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array;
   use type Movement_Access_Array_Access_Array;
   subtype Movement_Access_Array_Access_Array_Access is org.allbinary.physics.movement.Movement_Package_References.Movement_Access_Array_Access_Array_Access;
   use type Movement_Access_Array_Access_Array_Access;
   subtype ViewPositionBase_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access;
   use type ViewPositionBase_Access;
   subtype ViewPositionBase_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array;
   use type ViewPositionBase_Access_Array;
   subtype ViewPositionBase_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access;
   subtype ViewPositionBase_Access_Array_Access_Array is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array;
   use type ViewPositionBase_Access_Array_Access_Array;
   subtype ViewPositionBase_Access_Array_Access_Array_Access is org.allbinary.view.ViewPositionBase_Package_References.ViewPositionBase_Access_Array_Access_Array_Access;
   use type ViewPositionBase_Access_Array_Access_Array_Access;
   subtype CollidableWeaponBehavior_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access;
   use type CollidableWeaponBehavior_Access;
   subtype CollidableWeaponBehavior_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array;
   use type CollidableWeaponBehavior_Access_Array;
   subtype CollidableWeaponBehavior_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access;
   use type CollidableWeaponBehavior_Access_Array_Access;
   subtype CollidableWeaponBehavior_Access_Array_Access_Array is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array;
   use type CollidableWeaponBehavior_Access_Array_Access_Array;
   subtype CollidableWeaponBehavior_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package_References.CollidableWeaponBehavior_Access_Array_Access_Array_Access;
   use type CollidableWeaponBehavior_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeaponLayer_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access;
   function "=" (Left, Right : WeaponLayer_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayer_Package_References."=";
   subtype WeaponLayer_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array;
   function "=" (Left, Right : WeaponLayer_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayer_Package_References."=";
   subtype WeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access;
   function "=" (Left, Right : WeaponLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayer_Package_References."=";
   subtype WeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayer_Package_References."=";
   subtype WeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayer_Package_References."=";

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


