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
      BasicWeaponPartCircularPool_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   procedure init (This : in out BasicWeaponPartCircularPool; basicWeaponPartFactoryInterface_Param : access BasicWeaponPartFactoryInterface_Package.BasicWeaponPartFactoryInterface'Class) is
      basicWeaponPartFactoryInterface : constant BasicWeaponPartFactoryInterface_Access := BasicWeaponPartFactoryInterface_Access (basicWeaponPartFactoryInterface_Param);
   begin
        This.basicWeaponPart := basicWeaponPartFactoryInterface.getInstance;
   end init;

   --  throws Exception
   function getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        This.basicWeaponPart.init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        return This.basicWeaponPart;
   end getInstance;

   procedure getInstance (This : in out BasicWeaponPartCircularPool; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      Java_Result : constant BasicWeaponPart_Access := BasicWeaponPartCircularPool'Class (This).getInstance (sourceLayerInterface_Param, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NULL_BASIC_WEAPON_PART_CIRCULAR_POOL := BasicWeaponPartCircularPool_Package.Create;

end org.allbinary.game.part.weapon.BasicWeaponPartCircularPool_Package;


