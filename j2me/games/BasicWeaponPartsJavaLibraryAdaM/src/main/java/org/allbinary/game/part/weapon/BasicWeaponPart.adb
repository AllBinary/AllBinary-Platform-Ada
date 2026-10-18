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


   function createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class) return BasicWeaponPart_Access is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        return BasicWeaponPart_Package.Create (animationInterface, AllBinaryLayer_Package.NULL_ALLBINARY_LAYER, WeaponProperties_Package.NULL_WEAPON_PROPERTIES, NoScoreable_Package.getInstance, RelativeRelationship_Package.NULL_RELATIVE_RELATIONSHIP);
   end createBasicWeaponPart;

   procedure Initialize (This : in out BasicWeaponPart'Class; animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
      Initialize_Fields (This);
        BasicWeaponPart'Class (This).init (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship);
        BasicWeaponPart'Class (This).setAnimationInterface (animationInterface);
   end Initialize;

   function Create (animationInterface_Param : access Animation_Package.Animation'Class; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) return BasicWeaponPart_Access is
      This : constant BasicWeaponPart_Access := new BasicWeaponPart;
   begin
      BasicWeaponPart_Package.Initialize (This.all, animationInterface_Param, sourceLayerInterface_Param, weaponProperties_Param, scoreableInterface_Param, relativeRelationship_Param);
      return This;
   end Create;

   procedure init (This : in out BasicWeaponPart; sourceLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class; relativeRelationship_Param : access RelativeRelationship_Package.RelativeRelationship'Class) is
      sourceLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (sourceLayerInterface_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
      relativeRelationship : constant RelativeRelationship_Access := RelativeRelationship_Access (relativeRelationship_Param);
   begin
        BasicWeaponPart'Class (This).setOwnerLayerInterface (sourceLayerInterface);
        BasicWeaponPart'Class (This).setWeaponProperties (weaponProperties);
        This.scoreableInterface := scoreableInterface;
        This.relativeRelationship := relativeRelationship;
   end init;

   --  throws Exception
   procedure process (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
   begin
        BasicWeaponPart'Class (This).processScore (allbinaryLayerManager, angle, otherAngle, BasicWeaponPart'Class (This).getWeaponProperties, This.scoreableInterface);
   end process;

   --  throws Exception
   procedure processScore (This : in out BasicWeaponPart; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; angle : Short_Integer; otherAngle : Short_Integer; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class; scoreableInterface_Param : access ScoreableInterface_Package.ScoreableInterface'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
      scoreableInterface : constant ScoreableInterface_Access := ScoreableInterface_Access (scoreableInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("Exception", CommonStrings_Package.getInstance.NOT_IMPLEMENTED));
   end processScore;

   function getOwnerLayerInterface (This : in out BasicWeaponPart) return AllBinaryLayer_Access is
   begin
        return This.ownerLayerInterface;
   end getOwnerLayerInterface;

   procedure setOwnerLayerInterface (This : in out BasicWeaponPart; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class) is
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
   begin
        This.ownerLayerInterface := ownerLayerInterface;
   end setOwnerLayerInterface;

   function getAnimationInterface (This : in out BasicWeaponPart) return Animation_Access is
   begin
        return This.animationInterface;
   end getAnimationInterface;

   procedure setAnimationInterface (This : in out BasicWeaponPart; animationInterface_Param : access Animation_Package.Animation'Class) is
      animationInterface : constant Animation_Access := Animation_Access (animationInterface_Param);
   begin
        This.animationInterface := animationInterface;
   end setAnimationInterface;

   procedure paint (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      viewPosition : ViewPositionBase_Access;
      viewX : Integer;
      viewY : Integer;
   begin
        viewPosition := BasicWeaponPart'Class (This).getOwnerLayerInterface.getViewPosition;
        viewX := viewPosition.getX;
        viewY := viewPosition.getY;
        This.animationInterface.paintXY (graphics, viewX, viewY);
   end paint;

   procedure paintThreed (This : in out BasicWeaponPart; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        null;
   end paintThreed;

   function getWeaponProperties (This : in out BasicWeaponPart) return WeaponProperties_Access is
   begin
        return This.weaponProperties;
   end getWeaponProperties;

   procedure setWeaponProperties (This : in out BasicWeaponPart; weaponProperties_Param : access WeaponProperties_Package.WeaponProperties'Class) is
      weaponProperties : constant WeaponProperties_Access := WeaponProperties_Access (weaponProperties_Param);
   begin
        This.weaponProperties := weaponProperties;
   end setWeaponProperties;

   procedure createBasicWeaponPart (animationInterface_Param : access Animation_Package.Animation'Class) is
      Java_Result : constant BasicWeaponPart_Access := createBasicWeaponPart (animationInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createBasicWeaponPart;

begin
   null;
   NULL_BASIC_WEAPON_PART := BasicWeaponPart_Package.createBasicWeaponPart (NullAnimationFactory_Package.getFactoryInstance.getInstance (0));

end org.allbinary.game.part.weapon.BasicWeaponPart_Package;


