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


with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;

package body org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package is

   package WeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayer_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   procedure Initialize_Fields (This : in out StraightMultiProjectileWeaponPart'Class) is
   begin
      null;
      
      
      This.noDecimalTrigTable := NoDecimalTrigTable_Package.getInstance;
   end Initialize_Fields;


   function createStraightMultiProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class) return StraightMultiProjectileWeaponPart_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      weaponLayerCircularStaticPool : constant WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
   begin
        return StraightMultiProjectileWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, 2, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createStraightMultiProjectileWeaponPart;

   procedure Initialize (This : in out StraightMultiProjectileWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponLayerCircularStaticPool : constant WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.total := total;
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return StraightMultiProjectileWeaponPart_Access is
      This : constant StraightMultiProjectileWeaponPart_Access := new StraightMultiProjectileWeaponPart;
   begin
      StraightMultiProjectileWeaponPart_Package.Initialize (This.all, animationInterface_Param, sourceLayerInterface_Param, weaponLayerCircularStaticPool_Param, total, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out StraightMultiProjectileWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
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
        sourceLayerInterface := StraightMultiProjectileWeaponPart'Class (This).getOwnerLayerInterface;
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

   procedure createStraightMultiProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class) is
      Java_Result : constant StraightMultiProjectileWeaponPart_Access := createStraightMultiProjectileWeaponPart (animationInterface_Param => animationInterface_Param, weaponLayerCircularStaticPool_Param => weaponLayerCircularStaticPool_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createStraightMultiProjectileWeaponPart;

end org.allbinary.game.part.weapon.StraightMultiProjectileWeaponPart_Package;


