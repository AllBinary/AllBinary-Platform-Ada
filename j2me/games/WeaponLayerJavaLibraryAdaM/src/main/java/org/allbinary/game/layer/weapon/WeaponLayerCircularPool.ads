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

limited with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
package org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References is
   type WeaponLayerCircularPool_Access is access all org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class;
   type WeaponLayerCircularPool_Access_Array is array (Natural range <>) of WeaponLayerCircularPool_Access;
   type WeaponLayerCircularPool_Access_Array_Access is access all WeaponLayerCircularPool_Access_Array;
   type WeaponLayerCircularPool_Access_Array_Access_Array is array (Natural range <>) of WeaponLayerCircularPool_Access_Array_Access;
   type WeaponLayerCircularPool_Access_Array_Access_Array_Access is access all WeaponLayerCircularPool_Access_Array_Access_Array;
end org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References;

with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
limited with org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
limited with org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
limited with org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package_References;

package org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package is

   package WeaponProperties_Package renames Standard.org.allbinary.game.combat.weapon.WeaponProperties_Package;
   package ScoreableInterface_Package renames Standard.org.allbinary.game.score.ScoreableInterface_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package AllBinaryLayerCircularPool_Package renames Standard.org.allbinary.layer.AllBinaryLayerCircularPool_Package;
   package Reference_Types is
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
   subtype WeaponLayer_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access;
   use type WeaponLayer_Access;
   subtype WeaponLayer_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array;
   use type WeaponLayer_Access_Array;
   subtype WeaponLayer_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access;
   use type WeaponLayer_Access_Array_Access;
   subtype WeaponLayer_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array;
   use type WeaponLayer_Access_Array_Access_Array;
   subtype WeaponLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayer_Package_References.WeaponLayer_Access_Array_Access_Array_Access;
   use type WeaponLayer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype WeaponLayerCircularPool_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access_Array is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";
   subtype WeaponLayerCircularPool_Access_Array_Access_Array_Access is org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References.WeaponLayerCircularPool_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponLayerCircularPool_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package_References."=";

   type WeaponLayerCircularPool is new AllBinaryLayerCircularPool with null record;

   procedure Initialize (This : in out WeaponLayerCircularPool'Class);
   function Create return WeaponLayerCircularPool_Access;
   function getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) return WeaponLayer_Access;
   procedure getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class);

end org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;


