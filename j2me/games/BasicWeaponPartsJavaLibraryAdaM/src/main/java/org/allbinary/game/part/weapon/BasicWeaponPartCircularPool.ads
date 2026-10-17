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

package org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   package WeaponProperties_Package renames org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames org.allbinary.game.score.ScoreableInterface_Package;
   package RelativeRelationship_Package renames org.allbinary.graphics.RelativeRelationship_Package;
   package AllBinaryLayer_Package renames org.allbinary.layer.AllBinaryLayer_Package;

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
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface : BasicWeaponPartFactoryInterface_Access);
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return BasicWeaponPart_Access;
   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access);

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


