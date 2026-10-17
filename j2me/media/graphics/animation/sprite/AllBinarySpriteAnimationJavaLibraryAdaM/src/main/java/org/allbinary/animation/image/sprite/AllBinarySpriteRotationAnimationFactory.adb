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


package body org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out AllBinarySpriteRotationAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
   end Initialize_Fields;


   --  throws Exception
   function createWHDY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
      spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory_Access;
   begin
        spriteRotationAnimationFactory := AllBinarySpriteRotationAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, (Java_Shift_Right_Arithmetic (image.getHeight, 2)), (Java_Shift_Right_Arithmetic (image.getHeight, 2)), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.initWH (dx, dy);
        return spriteRotationAnimationFactory;
   end createWHDY;

   --  throws Exception
   function createWH (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
   begin
        return AllBinarySpriteRotationAnimationFactory_Package.createWHDY (image, 0, 0, animationBehaviorFactory);
   end createWH;

   --  throws Exception
   function createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
      spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory_Access;
   begin
        spriteRotationAnimationFactory := AllBinarySpriteRotationAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init (dx, dy);
        return spriteRotationAnimationFactory;
   end createDXY;

   --  throws Exception
   function createDXYQ (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
      spriteRotationAnimationFactory : AllBinarySpriteRotationAnimationFactory_Access;
   begin
        spriteRotationAnimationFactory := AllBinarySpriteRotationAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, (Java_Shift_Right_Arithmetic (image.getHeight, 2)), (Java_Shift_Right_Arithmetic (image.getHeight, 2)), 0, 0, animationBehaviorFactory);
        spriteRotationAnimationFactory.init (dx, dy);
        return spriteRotationAnimationFactory;
   end createDXYQ;

   --  throws Exception
   function createQ (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
   begin
        return AllBinarySpriteRotationAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, (Java_Shift_Right_Arithmetic (image.getHeight, 2)), (Java_Shift_Right_Arithmetic (image.getHeight, 2)), 0, 0, animationBehaviorFactory);
   end createQ;

   --  throws Exception
   function createWHF (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
   begin
        return AllBinarySpriteRotationAnimationFactory_Package.Create (image, PrimitiveIntUtil_Package.getArrayInstance, image.getHeight, image.getHeight, 0, 0, animationBehaviorFactory);
   end createWHF;

   procedure Initialize (This : in out AllBinarySpriteRotationAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        Initialize_Fields (This);
        if (animationBehaviorFactory) = (AnimationBehaviorFactory_Package.getInstance) then
            ForcedLogUtil_Package.log (To_Unbounded_String ("Using default AnimationBehaviorFactory with IndexedAnimationFactory"), This'Unchecked_Access);
        end if;
   end Initialize;

   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinarySpriteRotationAnimationFactory_Access is
      This : constant AllBinarySpriteRotationAnimationFactory_Access := new AllBinarySpriteRotationAnimationFactory;
   begin
      AllBinarySpriteRotationAnimationFactory_Package.Initialize (This.all, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
      return This;
   end Create;

   procedure init (This : in out AllBinarySpriteRotationAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
   end init;

   procedure initWH (This : in out AllBinarySpriteRotationAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.init (dx, dy);
        This.animationFactoryInitializationVisitor.dx := (This.animationFactoryInitializationVisitor.dx) + ((-(This.animationFactoryInitializationVisitor.width)) / (5));
        This.animationFactoryInitializationVisitor.dy := (This.animationFactoryInitializationVisitor.dy) + ((-(This.animationFactoryInitializationVisitor.height)) / (5));
   end initWH;

   --  throws Exception
   function getInstance (This : in out AllBinarySpriteRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return AllBinaryAdjustedSpriteRotationAnimation_Package.Create (sprite, This.getImage, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return AllBinarySpriteRotationAnimation_Package.Create (sprite, This.getImage, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out AllBinarySpriteRotationAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.getInstance (0);
   end getInstanceAnimation;

   procedure createWHDY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createWHDY (image, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWHDY;

   procedure createWH (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createWH (image, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWH;

   procedure createDXY (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createDXY (image, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXY;

   procedure createDXYQ (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createDXYQ (image, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXYQ;

   procedure createQ (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createQ (image, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createQ;

   procedure createWHF (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinarySpriteRotationAnimationFactory_Access := createWHF (image, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWHF;

   procedure getInstance (This : in out AllBinarySpriteRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinarySpriteRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out AllBinarySpriteRotationAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := AllBinarySpriteRotationAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.image.sprite.AllBinarySpriteRotationAnimationFactory_Package;


