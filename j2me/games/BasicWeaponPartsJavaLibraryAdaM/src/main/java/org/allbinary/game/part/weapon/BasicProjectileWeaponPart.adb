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


package body org.allbinary.game.part.weapon.BasicProjectileWeaponPart_Package is

   procedure Initialize_Fields (This : in out BasicProjectileWeaponPart'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function createBasicProjectileWeaponPart (animationInterface_Param : access Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class) return BasicProjectileWeaponPart_Access is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
   begin
        return BasicProjectileWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createBasicProjectileWeaponPart;

   procedure Initialize (This : in out BasicProjectileWeaponPart'Class; animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class) is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      sourceLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
      weaponProperties : WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class) return BasicProjectileWeaponPart_Access is
      This : constant BasicProjectileWeaponPart_Access := new BasicProjectileWeaponPart;
   begin
      BasicProjectileWeaponPart_Package.Initialize (This.all, animationInterface_Param, sourceLayerInterface_Param, weaponLayerCircularStaticPool_Param, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out BasicProjectileWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      weaponProperties : WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      weaponLayer : WeaponLayer_Access;
   begin
        weaponLayer := This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (This.getOwnerLayerInterface, This.relativeRelationship.getX, This.relativeRelationship.getY, This.relativeRelationship.getZ, Integer (angle), Integer (otherAngle), weaponProperties, scoreableInterface);
        allbinaryLayerManager.append (weaponLayer);
   end processScore;

   procedure createBasicProjectileWeaponPart (animationInterface_Param : access Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class) is
      Java_Result : constant BasicProjectileWeaponPart_Access := createBasicProjectileWeaponPart (animationInterface_Param, weaponLayerCircularStaticPool_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBasicProjectileWeaponPart;

end org.allbinary.game.part.weapon.BasicProjectileWeaponPart_Package;


