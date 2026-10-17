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
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package; use org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package; use org.allbinary.game.part.weapon.BasicWeaponPartFactoryInterface_Package;

package org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames Standard.org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type BasicWeaponPartCircularPool is tagged;
   type BasicWeaponPartCircularPool_Access is access all BasicWeaponPartCircularPool'Class;
   type BasicWeaponPartCircularPool_Access_Array is array (Natural range <>) of BasicWeaponPartCircularPool_Access;
   type BasicWeaponPartCircularPool_Access_Array_Access is access all BasicWeaponPartCircularPool_Access_Array;

   type BasicWeaponPartCircularPool is new Java_Object with record
      basicWeaponPart : BasicWeaponPart_Access;
   end record;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL : BasicWeaponPartCircularPool_Access;

   procedure Initialize (This : in out BasicWeaponPartCircularPool'Class);
   function Create return BasicWeaponPartCircularPool_Access;
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface_Param : access BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class);
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access;
   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class);

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


