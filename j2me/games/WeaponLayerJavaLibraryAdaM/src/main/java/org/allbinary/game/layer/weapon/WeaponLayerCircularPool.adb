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


with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package_References;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.game.score.ScoreableInterface_Package_References;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayer_Package_References;
with org.allbinary.layer.AllBinaryLayerCircularPool_Package; use org.allbinary.layer.AllBinaryLayerCircularPool_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package_References;
with org.allbinary.game.layer.weapon.CollidableWeaponBehavior_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package;

package body org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package is

   subtype WeaponProperties_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access;
   function "=" (Left, Right : WeaponProperties_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype WeaponProperties_Access_Array_Access_Array_Access is org.allbinary.game.combat.weapon.WeaponProperties_Package_References.WeaponProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : WeaponProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.combat.weapon.WeaponProperties_Package_References."=";
   subtype ScoreableInterface_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access;
   function "=" (Left, Right : ScoreableInterface_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype ScoreableInterface_Access_Array_Access_Array_Access is org.allbinary.game.score.ScoreableInterface_Package_References.ScoreableInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScoreableInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.score.ScoreableInterface_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
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
   procedure Initialize_Fields (This : in out WeaponLayerCircularPool'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out WeaponLayerCircularPool'Class) is
   begin
      AllBinaryLayerCircularPool_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return WeaponLayerCircularPool_Access is
      This : constant WeaponLayerCircularPool_Access := new WeaponLayerCircularPool;
   begin
      WeaponLayerCircularPool_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) return WeaponLayer_Access is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreable : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreable_Param);
      weaponLayer : WeaponLayer_Access;
   begin
        weaponLayer := WeaponLayer_Access (AllBinaryLayerCircularPool_Package.AllBinaryLayerCircularPool (This).getNextInstance);
        weaponLayer.initXYZ (x, y, z);
        weaponLayer.init (sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable);
        return weaponLayer;
   end getInstanceWeaponLayer;

   procedure getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      Java_Result : constant WeaponLayer_Access := WeaponLayerCircularPool'Class (This).getInstanceWeaponLayer (sourceLayerInterface_Param => sourceLayerInterface_Param, x => x, y => y, z => z, angle => angle, otherAngle => otherAngle, weaponProperties_Param => weaponProperties_Param, scoreable_Param => scoreable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceWeaponLayer;

end org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;


