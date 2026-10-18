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
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.math.NoDecimalTrigTable_Package; use org.allbinary.math.NoDecimalTrigTable_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;

package org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package NoDecimalTrigTable_Package renames Standard.org.allbinary.math.NoDecimalTrigTable_Package;

   type StraightMultiProjectileWeaponPart is tagged;
   type StraightMultiProjectileWeaponPart_Access is access all StraightMultiProjectileWeaponPart'Class;
   type StraightMultiProjectileWeaponPart_Access_Array is array (Natural range <>) of StraightMultiProjectileWeaponPart_Access;
   type StraightMultiProjectileWeaponPart_Access_Array_Access is access all StraightMultiProjectileWeaponPart_Access_Array;
   type StraightMultiProjectileWeaponPart_Access_Array_Access_Array is array (Natural range <>) of StraightMultiProjectileWeaponPart_Access_Array_Access;
   type StraightMultiProjectileWeaponPart_Access_Array_Access_Array_Access is access all StraightMultiProjectileWeaponPart_Access_Array_Access_Array;

   type StraightMultiProjectileWeaponPart is new BasicWeaponPart with record
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access;
      total : Integer;
      noDecimalTrigTable : NoDecimalTrigTable_Access;
   end record;

   procedure Initialize (This : in out StraightMultiProjectileWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return StraightMultiProjectileWeaponPart_Access;
   function createStraightMultiProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class) return StraightMultiProjectileWeaponPart_Access;
   procedure createStraightMultiProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class);
   procedure processScore (This : in out StraightMultiProjectileWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);

end org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package;


