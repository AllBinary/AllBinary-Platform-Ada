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


   function createBasicProjectileWeaponPart (animationInterface : Animation_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access) return BasicProjectileWeaponPart_Access is
   begin
        return BasicProjectileWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createBasicProjectileWeaponPart;

   procedure Initialize (This : in out BasicProjectileWeaponPart'Class; animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return BasicProjectileWeaponPart_Access is
      This : constant BasicProjectileWeaponPart_Access := new BasicProjectileWeaponPart;
   begin
      Initialize (This.all, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, weaponProperties, scoreableInterface, relativeRelationship);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out BasicProjectileWeaponPart; allbinaryLayerManager : AllBinaryLayerManager_Access; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access) is
      weaponLayer : WeaponLayer_Access;
   begin
        weaponLayer := This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (This.getOwnerLayerInterface, This.relativeRelationship.getX, This.relativeRelationship.getY, This.relativeRelationship.getZ, Integer (angle), Integer (otherAngle), weaponProperties, scoreableInterface);
        allbinaryLayerManager.append (weaponLayer);
   end processScore;

   procedure createBasicProjectileWeaponPart (animationInterface : Animation_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access) is
      Java_Result : constant BasicProjectileWeaponPart_Access := createBasicProjectileWeaponPart (animationInterface, weaponLayerCircularStaticPool);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBasicProjectileWeaponPart;

end org.allbinary.game.part.weapon.BasicProjectileWeaponPart_Package;


