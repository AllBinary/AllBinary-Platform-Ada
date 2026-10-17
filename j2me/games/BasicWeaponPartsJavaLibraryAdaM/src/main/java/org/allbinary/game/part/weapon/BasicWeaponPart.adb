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


package body org.allbinary.game.part.weapon.BasicWeaponPart_Package is

   procedure Initialize_Fields (This : in out BasicWeaponPart'Class) is
   begin
      null;
      This.animationInterface := NullAnimationFactory_Package.getFactoryInstance.getInstance (0);
      This.ownerLayerInterface := AllBinaryLayer_Package.NULL_ALLBINARY_LAYER;
      This.weaponProperties := WeaponProperties_Package.NULL_WEAPON_PROPERTIES;
      This.scoreableInterface := NoScoreable_Package.getInstance;
      This.relativeRelationship := RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP;
   end Initialize_Fields;


   function createBasicWeaponPart (animationInterface : Animation_Access) return BasicWeaponPart_Access is
   begin
        return BasicWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createBasicWeaponPart;

   procedure Initialize (This : in out BasicWeaponPart'Class; animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
   begin
      Initialize_Fields (This);
        This.init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        This.setAnimationInterface (animationInterface);
   end Initialize;

   function Create (animationInterface : Animation_Access; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) return BasicWeaponPart_Access is
      This : constant BasicWeaponPart_Access := new BasicWeaponPart;
   begin
      Initialize (This.all, animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
      return This;
   end Create;

   procedure init (This : in out BasicWeaponPart; sourceLayerInterface : AllBinaryLayer_Access; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access; relativeRelationship : RelativeRelationship_Access) is
   begin
        This.setOwnerLayerInterface (sourceLayerInterface);
        This.setWeaponProperties (weaponProperties);
        This.scoreableInterface := scoreableInterface;
        This.relativeRelationship := relativeRelationship;
   end init;

   --  throws Exception
   procedure process (This : in out BasicWeaponPart; allbinaryLayerManager : AllBinaryLayerManager_Access; angle : Short_Integer; otherAngle : Short_Integer) is
   begin
        This.processScore (allbinaryLayerManager, angle, otherAngle, This.getWeaponProperties, This.scoreableInterface);
   end process;

   --  throws Exception
   procedure processScore (This : in out BasicWeaponPart; allbinaryLayerManager : AllBinaryLayerManager_Access; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties : WeaponProperties_Access; scoreableInterface : ScoreableInterface_Access) is
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end processScore;

   function getOwnerLayerInterface (This : in out BasicWeaponPart) return AllBinaryLayer_Access is
   begin
        return This.ownerLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out BasicWeaponPart; ownerLayerInterface : AllBinaryLayer_Access) is
   begin
        This.ownerLayerInterface := ownerLayerInterface;
   end setOwnerLayerInterface;

   function getAnimationInterface (This : in out BasicWeaponPart) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setAnimationInterface (This : in out BasicWeaponPart; animationInterface : Animation_Access) is
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   procedure paint (This : in out BasicWeaponPart; graphics : Graphics_Access) is
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := This.getOwnerLayerInterface.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   procedure paintThreed (This : in out BasicWeaponPart; graphics : Graphics_Access) is
   begin
        null;
   end paintThreed;

   function getWeaponProperties (This : in out BasicWeaponPart) return WeaponProperties_Access is
   begin
        return This.weaponProperties;
   end getWeaponProperties;

   procedure setWeaponProperties (This : in out BasicWeaponPart; weaponProperties : WeaponProperties_Access) is
   begin
        This.weaponProperties := weaponProperties;
   end setWeaponProperties;

   procedure createBasicWeaponPart (animationInterface : Animation_Access) is
      Java_Result : constant BasicWeaponPart_Access := createBasicWeaponPart (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBasicWeaponPart;

   procedure getOwnerLayerInterface (This : in out BasicWeaponPart) is
      Java_Result : constant AllBinaryLayer_Access := BasicWeaponPart'Class (This).getOwnerLayerInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getOwnerLayerInterface;

   procedure getAnimationInterface (This : in out BasicWeaponPart) is
      Java_Result : constant Animation_Access := BasicWeaponPart'Class (This).getAnimationInterface;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAnimationInterface;

   procedure getWeaponProperties (This : in out BasicWeaponPart) is
      Java_Result : constant WeaponProperties_Access := BasicWeaponPart'Class (This).getWeaponProperties;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getWeaponProperties;

begin
   null;
   NULL_BASIC_WEAPON_PART := BasicWeaponPart_Package.createBasicWeaponPart (NullAnimationFactory_Package.getFactoryInstance.getInstance (0));

end org.allbinary.game.part.weapon.BasicWeaponPart_Package;


