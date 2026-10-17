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


package body org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package is

   procedure Initialize_Fields (This : in out StraightMultiProjectileWeaponPart'Class) is
   begin
      null;
      
      
      This.noDecimalTrigTable := NoDecimalTrigTable_Package.getInstance;
   end Initialize_Fields;


   function createStraightMultiProjectileWeaponPart (animationInterface : Animation_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access) return StraightMultiProjectileWeaponPart_Access is
   begin
        return StraightMultiProjectileWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createStraightMultiProjectileWeaponPart;

   procedure Initialize (This : in out StraightMultiProjectileWeaponPart'Class; animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; total : Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.total := total;
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; total : Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return StraightMultiProjectileWeaponPart_Access is
      This : constant StraightMultiProjectileWeaponPart_Access := new StraightMultiProjectileWeaponPart;
   begin
      Initialize (This.all, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out StraightMultiProjectileWeaponPart; allbinaryLayerManager : AllBinaryLayerManager_Access; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access) is
      sourceLayerInterface : AllBinaryLayer_Access;
      reducedWidth : Integer;
      halfWidth : Integer;
      x : Integer;
      y : Integer;
      sine : Long_Long_Integer;
      beamX : Integer;
      cosine : Long_Long_Integer;
      beamY : Integer;
      weaponLayer : WeaponLayer_Access;
      increment : Integer;
      next : Integer;
      index : Integer;
   begin
        sourceLayerInterface := This.getOwnerLayerInterface;
        reducedWidth := (((sourceLayerInterface.getWidth) * (8)) / (10));
        halfWidth := (Java_Shift_Right_Arithmetic (reducedWidth, 1));
        x := This.relativeRelationship.getX;
        y := This.relativeRelationship.getY;
        sine := 0;
        beamX := 0;
        cosine := 0;
        beamY := 0;
        weaponLayer := null;
        increment := (reducedWidth) / (((This.total) - (1)));
        next := -(halfWidth);
        for index in 0 .. (This.total) - 1 loop
            sine := Long_Long_Integer (((next) * (This.noDecimalTrigTable.sin (Integer (angle)))));
            beamX := Integer (((sine) / (This.noDecimalTrigTable.SCALE)));
            cosine := Long_Long_Integer (((next) * (This.noDecimalTrigTable.cos (Integer (angle)))));
            beamY := -(Integer (((cosine) / (This.noDecimalTrigTable.SCALE))));
            weaponLayer := This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (sourceLayerInterface, (x) + (beamX), (y) + (beamY), 0, Integer (angle), Integer (otherAngle), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append (weaponLayer);
            next := (next) + (increment);
        end loop;
   end processScore;

   procedure createStraightMultiProjectileWeaponPart (animationInterface : Animation_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access) is
      Java_Result : constant StraightMultiProjectileWeaponPart_Access := createStraightMultiProjectileWeaponPart (animationInterface, weaponLayerCircularStaticPool);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createStraightMultiProjectileWeaponPart;

end org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package;


