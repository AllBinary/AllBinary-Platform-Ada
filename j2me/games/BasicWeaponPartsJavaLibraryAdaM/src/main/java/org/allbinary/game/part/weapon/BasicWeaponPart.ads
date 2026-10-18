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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.NullAnimationFactory_Package; use org.allbinary.animation.NullAnimationFactory_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.part.PartInterface_Package; use org.allbinary.game.part.PartInterface_Package;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.view.ViewPositionBase_Package; use org.allbinary.view.ViewPositionBase_Package;
with org.allbinary.game.part.weapon.SalvoInterface_Package; use org.allbinary.game.part.weapon.SalvoInterface_Package;

package org.allbinary.game.part.weapon.BasicWeaponPart_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package NullAnimationFactory_Package renames Standard.org.allbinary.animation.NullAnimationFactory_Package;
   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package PartInterface_Package renames Standard.org.allbinary.game.part.PartInterface_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ViewPositionBase_Package renames Standard.org.allbinary.view.ViewPositionBase_Package;

   type BasicWeaponPart is tagged;
   type BasicWeaponPart_Access is access all BasicWeaponPart'Class;
   type BasicWeaponPart_Access_Array is array (Natural range <>) of BasicWeaponPart_Access;
   type BasicWeaponPart_Access_Array_Access is access all BasicWeaponPart_Access_Array;

   type BasicWeaponPart is new PartInterface and SalvoInterface with record
      animationInterface : Animation_Access;
      ownerLayerInterface : AllBinaryLayer_Access;
      weaponProperties : WeaponProperties_Access;
      scoreableInterface : ScoreableInterface_Access;
      relativeRelationship : RelativeRelationship_Access;
   end record;
   NULL_BASIC_WEAPON_PART : BasicWeaponPart_Access;

   procedure Initialize (This : in out BasicWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access;
   function createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class) return BasicWeaponPart_Access;
   procedure createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class);
   procedure init (This : in out BasicWeaponPart; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);
   procedure process (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer);
   procedure processScore (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class);
   function getOwnerLayerInterface (This : in out BasicWeaponPart) return AllBinaryLayer_Access;
   procedure setOwnerLayerInterface (This : in out BasicWeaponPart; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class);
   function getAnimationInterface (This : in out BasicWeaponPart) return Animation_Access;
   procedure setAnimationInterface (This : in out BasicWeaponPart; animationInterface_Param : access Animation_Package.Animation'Class);
   procedure paint (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class);
   procedure paintThreed (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class);
   function getWeaponProperties (This : in out BasicWeaponPart) return WeaponProperties_Access;
   procedure setWeaponProperties (This : in out BasicWeaponPart; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class);

end org.allbinary.game.part.weapon.BasicWeaponPart_Package;


