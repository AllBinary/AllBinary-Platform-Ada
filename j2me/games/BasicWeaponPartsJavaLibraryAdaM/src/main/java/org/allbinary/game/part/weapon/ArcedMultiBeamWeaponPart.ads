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
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;

package org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package WeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayer_Package;
   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;

   type ArcedMultiBeamWeaponPart is tagged;
   type ArcedMultiBeamWeaponPart_Access is access all ArcedMultiBeamWeaponPart'Class;
   type ArcedMultiBeamWeaponPart_Access_Array is array (Natural range <>) of ArcedMultiBeamWeaponPart_Access;
   type ArcedMultiBeamWeaponPart_Access_Array_Access is access all ArcedMultiBeamWeaponPart_Access_Array;

   type ArcedMultiBeamWeaponPart is new BasicWeaponPart with record
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access;
      total : Integer;
      TOTAL_ANGLE : Integer;
   end record;

   procedure Initialize (This : in out ArcedMultiBeamWeaponPart'Class; animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class);
   function Create (animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class) return ArcedMultiBeamWeaponPart_Access;
   procedure processScore (This : in out ArcedMultiBeamWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class);

end org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package;


