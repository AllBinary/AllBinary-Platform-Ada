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


package body org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package is

   procedure Initialize_Fields (This : in out ArcedMultiBeamWeaponPart'Class) is
   begin
      null;
      
      
      This.TOTAL_ANGLE := Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE);
   end Initialize_Fields;


   procedure Initialize (This : in out ArcedMultiBeamWeaponPart'Class; animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class) is
      animationInterface : Animation_Access := Animation_Access (animationInterface_Param);
      sourceLayerInterface : AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access := WeaponLayerCircularPool_Access (weaponLayerCircularStaticPool_Param);
      weaponProperties : WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.total := total;
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface_Param : access Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer'Class; weaponLayerCircularStaticPool_Param : access WeaponLayerCircularPool'Class; total : Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship'Class) return ArcedMultiBeamWeaponPart_Access is
      This : constant ArcedMultiBeamWeaponPart_Access := new ArcedMultiBeamWeaponPart;
   begin
      ArcedMultiBeamWeaponPart_Package.Initialize (This.all, animationInterface_Param, sourceLayerInterface_Param, weaponLayerCircularStaticPool_Param, total, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out ArcedMultiBeamWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      weaponProperties : WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      increment : Short_Integer;
      minAngle : Short_Integer;
      next : Integer;
      weaponLayer : WeaponLayer_Access;
      index : Integer;
   begin
        increment := Short_Integer (((((This.total) - (1))) / (This.TOTAL_ANGLE)));
        minAngle := Short_Integer (((Integer (angle)) - ((Java_Shift_Right_Arithmetic (((Integer (increment)) * (This.total)), 1)))));
        next := 0;
        weaponLayer := null;
        for index in 0 .. (This.total) - 1 loop
            weaponLayer := This.weaponLayerCircularStaticPool.getInstanceWeaponLayer (This.getOwnerLayerInterface, This.relativeRelationship.getX, This.relativeRelationship.getY, 0, ((minAngle) + (increment)), Integer (otherAngle), weaponProperties, scoreableInterface);
            allbinaryLayerManager.append (weaponLayer);
            next := (next) + (Integer (increment));
        end loop;
   end processScore;

end org.allbinary.game.part.weapon.ArcedMultiBeamWeaponPart_Package;


