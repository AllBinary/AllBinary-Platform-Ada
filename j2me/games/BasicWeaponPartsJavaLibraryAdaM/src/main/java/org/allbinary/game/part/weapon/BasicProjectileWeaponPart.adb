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


with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.game.combat.weapon.WeaponProperties_Package; use org.allbinary.game.combat.weapon.WeaponProperties_Package;
with org.allbinary.game.layer.weapon.WeaponLayer_Package; use org.allbinary.game.layer.weapon.WeaponLayer_Package;
with org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package; use org.allbinary.game.layer.weapon.WeaponLayerCircularPool_Package;
with org.allbinary.game.score.NoScoreable_Package; use org.allbinary.game.score.NoScoreable_Package;
with org.allbinary.game.score.ScoreableInterface_Package; use org.allbinary.game.score.ScoreableInterface_Package;
with org.allbinary.graphics.RelativeRelationship_Package; use org.allbinary.graphics.RelativeRelationship_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.game.part.weapon.BasicWeaponPart_Package;
with org.allbinary.game.part.weapon.SalvoInterface_Package;

package body org.allbinary.game.part.weapon.BasicProjectileWeaponPart_Package is

   package WeaponLayer_Package renames Standard.org.allbinary.game.layer.weapon.WeaponLayer_Package;
   package NoScoreable_Package renames Standard.org.allbinary.game.score.NoScoreable_Package;
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
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
   subtype RelativeRelationship_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access;
   function "=" (Left, Right : RelativeRelationship_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
   subtype RelativeRelationship_Access_Array_Access_Array_Access is org.allbinary.graphics.RelativeRelationship_Package_References.RelativeRelationship_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RelativeRelationship_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.RelativeRelationship_Package_References."=";
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
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   procedure Initialize_Fields (This : in out BasicProjectileWeaponPart'Class) is
   begin
      null;
      
   end Initialize_Fields;


   function createBasicProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class) return BasicProjectileWeaponPart_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      weaponLayerCircularStaticPool : constant WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
   begin
        return BasicProjectileWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, weaponLayerCircularStaticPool, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createBasicProjectileWeaponPart;

   procedure Initialize (This : in out BasicProjectileWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponLayerCircularStaticPool : constant WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicProjectileWeaponPart_Access is
      This : constant BasicProjectileWeaponPart_Access := new BasicProjectileWeaponPart;
   begin
      BasicProjectileWeaponPart_Package.Initialize (This.all, animationInterface_Param, sourceLayerInterface_Param, weaponLayerCircularStaticPool_Param, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out BasicProjectileWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      weaponLayer : WeaponLayer_Access;
   begin
        weaponLayer := This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (BasicProjectileWeaponPart'Class (This).getOwnerLayerInterface, This.relativeRelationship.getX, This.relativeRelationship.getY, This.relativeRelationship.getZ, Integer (angle), Integer (otherAngle), weaponProperties, scoreableInterface);
        allbinaryLayerManager.append (weaponLayer);
   end processScore;

   procedure createBasicProjectileWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool_Package.WeaponLayerCircularPool'Class) is
      Java_Result : constant BasicProjectileWeaponPart_Access := createBasicProjectileWeaponPart (animationInterface_Param => animationInterface_Param, weaponLayerCircularStaticPool_Param => weaponLayerCircularStaticPool_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBasicProjectileWeaponPart;

end org.allbinary.game.part.weapon.BasicProjectileWeaponPart_Package;


