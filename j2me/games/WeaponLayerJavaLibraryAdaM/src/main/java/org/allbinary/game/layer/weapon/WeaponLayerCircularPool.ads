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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;

package org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;

   type WeaponLayerCircularPool is tagged;
   type WeaponLayerCircularPool_Access is access all WeaponLayerCircularPool'Class;
   type WeaponLayerCircularPool_Access_Array is array (Natural range <>) of WeaponLayerCircularPool_Access;
   type WeaponLayerCircularPool_Access_Array_Access is access all WeaponLayerCircularPool_Access_Array;

   type WeaponLayerCircularPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out WeaponLayerCircularPool'Class);
   function Create return WeaponLayerCircularPool_Access;
   function getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreable_Param : access ScoreableInterface'Class) return WeaponLayer_Access;
   procedure getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreable_Param : access ScoreableInterface'Class);

end org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;


