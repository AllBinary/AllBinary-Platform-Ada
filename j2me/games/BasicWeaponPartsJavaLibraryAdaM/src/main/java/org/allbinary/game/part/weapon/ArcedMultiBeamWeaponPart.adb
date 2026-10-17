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


   procedure Initialize (This : in out ArcedMultiBeamWeaponPart'Class; animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; total : Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
   begin
        BasicWeaponPart_Package.Initialize (This, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        Initialize_Fields (This);
        This.total := total;
        This.weaponLayerCircularStaticPool := weaponLayerCircularStaticPool;
   end Initialize;

   function Create (animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponLayerCircularStaticPool : WeaponLayerCircularPool_Access; total : Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return ArcedMultiBeamWeaponPart_Access is
      This : constant ArcedMultiBeamWeaponPart_Access := new ArcedMultiBeamWeaponPart;
   begin
      Initialize (This.all, animationInterface, sourceLayerInterface, weaponLayerCircularStaticPool, total, weaponProperties, scoreableInterface, relativeRelationship);
      return This;
   end Create;

   --  throws Exception
   procedure processScore (This : in out ArcedMultiBeamWeaponPart; allbinaryLayerManager : AllBinaryLayerManager_Access; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access) is
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


