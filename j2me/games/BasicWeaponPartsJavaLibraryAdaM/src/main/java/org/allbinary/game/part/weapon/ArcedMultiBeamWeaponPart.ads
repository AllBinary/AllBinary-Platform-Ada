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

limited with org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package;
package org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References is
   type ArcedMultiBeamWeaponPart_Access is access all org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package.ArcedMultiBeamWeaponPart'Class;
   type ArcedMultiBeamWeaponPart_Access_Array is array (Natural range <>) of ArcedMultiBeamWeaponPart_Access;
   type ArcedMultiBeamWeaponPart_Access_Array_Access is access all ArcedMultiBeamWeaponPart_Access_Array;
   type ArcedMultiBeamWeaponPart_Access_Array_Access_Array is array (Natural range <>) of ArcedMultiBeamWeaponPart_Access_Array_Access;
   type ArcedMultiBeamWeaponPart_Access_Array_Access_Array_Access is access all ArcedMultiBeamWeaponPart_Access_Array_Access_Array;
end org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References;

with org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
limited with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
limited with org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.graphics.RelativeRelationship_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
limited with org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;

package org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package WeaponLayerCircularPool_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package Reference_Types is
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
   subtype WeaponLayerCircularPool_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access;
   use type WeaponLayerCircularPool_Access;
   subtype WeaponLayerCircularPool_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array;
   use type WeaponLayerCircularPool_Access_Array;
   subtype WeaponLayerCircularPool_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access;
   use type WeaponLayerCircularPool_Access_Array_Access;
   subtype WeaponLayerCircularPool_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array;
   use type WeaponLayerCircularPool_Access_Array_Access_Array;
   subtype WeaponLayerCircularPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array_Access;
   use type WeaponLayerCircularPool_Access_Array_Access_Array_Access;
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
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   use type RelativeRelationship_Access;
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   use type RelativeRelationship_Access_Array;
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access;
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   use type RelativeRelationship_Access_Array_Access_Array;
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   use type RelativeRelationship_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype ArcedMultiBeamWeaponPart_Access is org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References.ArcedMultiBeamWeaponPart_Access;
   function "=" (Left, Right : ArcedMultiBeamWeaponPart_Access) return Boolean renames org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References."=";
   subtype ArcedMultiBeamWeaponPart_Access_Array is org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References.ArcedMultiBeamWeaponPart_Access_Array;
   function "=" (Left, Right : ArcedMultiBeamWeaponPart_Access_Array) return Boolean renames org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References."=";
   subtype ArcedMultiBeamWeaponPart_Access_Array_Access is org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References.ArcedMultiBeamWeaponPart_Access_Array_Access;
   function "=" (Left, Right : ArcedMultiBeamWeaponPart_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References."=";
   subtype ArcedMultiBeamWeaponPart_Access_Array_Access_Array is org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References.ArcedMultiBeamWeaponPart_Access_Array_Access_Array;
   function "=" (Left, Right : ArcedMultiBeamWeaponPart_Access_Array_Access_Array) return Boolean renames org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References."=";
   subtype ArcedMultiBeamWeaponPart_Access_Array_Access_Array_Access is org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References.ArcedMultiBeamWeaponPart_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ArcedMultiBeamWeaponPart_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package_References."=";

   type ArcedMultiBeamWeaponPart is new BasicWeaponPart with record
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access;
      total : Integer;
      TOTAL_ANGLE : Integer;
   end record;

   procedure Initialize (This : in out ArcedMultiBeamWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return ArcedMultiBeamWeaponPart_Access;
   procedure processScore (This : in out ArcedMultiBeamWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);

end org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package;


