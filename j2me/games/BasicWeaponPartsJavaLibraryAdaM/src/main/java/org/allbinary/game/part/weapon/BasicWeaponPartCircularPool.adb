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


package body org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package is

   procedure Initialize_Fields (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      null;
      This.basicWeaponPart := BasicWeaponPart_Package.NULL_BASIC_WEAPON_PART;
   end Initialize_Fields;

   procedure Initialize (This : in out BasicWeaponPartCircularPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BasicWeaponPartCircularPool_Access is
      This : constant BasicWeaponPartCircularPool_Access := new BasicWeaponPartCircularPool;
   begin
      Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface : BasicWeaponPartFactoryInterface_Access) is
   begin
        This.basicWeaponPart := basicWeaponPartFactoryInterface.getInstance;
   end init;

   --  throws Exception
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return BasicWeaponPart_Access is
   begin
        This.basicWeaponPart.init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return This.basicWeaponPart;
   end getInstance;

   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
      Java_Result : constant BasicWeaponPart_Access := BasicWeaponPartCircularPool'Class (This).getInstance (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL := BasicWeaponPartCircularPool_Package.Create;

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


