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



package body org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package is

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
        weaponLayer := WeaponLayer_Access (AllBinaryLayerCircularPool (This).getNextInstance);
        weaponLayer.initXYZ (x, y, z);
        weaponLayer.init (sourceLayerInterface, angle, otherAngle, weaponProperties, scoreable);
        return weaponLayer;
   end getInstanceWeaponLayer;

   procedure getInstanceWeaponLayer (This : in out WeaponLayerCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; x : Integer; y : Integer; z : Integer; angle : Integer; otherAngle : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreable_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      Java_Result : constant WeaponLayer_Access := WeaponLayerCircularPool'Class (This).getInstanceWeaponLayer (sourceLayerInterface_Param, x, y, z, angle, otherAngle, weaponProperties_Param, scoreable_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceWeaponLayer;

end org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;


