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


package body org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package is

   procedure Initialize_Fields (This : in out SpriteIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
      This.basicColorArray := BasicColorUtil_Package.getInstance.ZERO_ARRAY;
   end Initialize_Fields;


   --  throws Exception
   function createCWHDXY (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SpriteIndexedAnimationFactory_Access is
   begin
        return SpriteIndexedAnimationFactory_Package.Create (image, basicColorArray, PrimitiveIntUtil_Package.getArrayInstance, width, height, dx, dy, animationBehaviorFactory);
   end createCWHDXY;

   --  throws Exception
   function createCWH (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SpriteIndexedAnimationFactory_Access is
      spriteIndexedAnimationFactory : SpriteIndexedAnimationFactory_Access;
   begin
        spriteIndexedAnimationFactory := SpriteIndexedAnimationFactory_Package.Create (image, basicColorArray, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        spriteIndexedAnimationFactory.initHWH;
        return spriteIndexedAnimationFactory;
   end createCWH;

   --  throws Exception
   function createWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SpriteIndexedAnimationFactory_Access is
   begin
        return SpriteIndexedAnimationFactory_Package.Create (image, BasicColorUtil_Package.getInstance.ZERO_ARRAY, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
   end createWH;

   procedure Initialize (This : in out SpriteIndexedAnimationFactory'Class; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
        Initialize_Fields (This);
        This.basicColorArray := basicColorArray;
   end Initialize;

   function Create (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; sequenceArray : Integer_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return SpriteIndexedAnimationFactory_Access is
      This : constant SpriteIndexedAnimationFactory_Access := new SpriteIndexedAnimationFactory;
   begin
      Initialize (This.all, image, basicColorArray, sequenceArray, width, height, dx, dy, animationBehaviorFactory);
      return This;
   end Create;

   procedure initHWH (This : in out SpriteIndexedAnimationFactory) is
   begin
        This.animationFactoryInitializationVisitor.dx := -((Java_Shift_Right_Arithmetic (This.animationFactoryInitializationVisitor.width, 2)));
        This.animationFactoryInitializationVisitor.dy := -((Java_Shift_Right_Arithmetic (This.animationFactoryInitializationVisitor.height, 2)));
        if AndroidUtil_Package.isAndroid then
            This.animationFactoryInitializationVisitor.dx := (This.animationFactoryInitializationVisitor.dx) + (3);
        end if;
   end initHWH;

   --  throws Exception
   function getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return AdjustedSpriteIndexedAnimation_Package.Create (sprite, This.getImage, This.basicColorArray, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return SpriteIndexedAnimation_Package.Create (sprite, This.getImage, This.basicColorArray, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.getInstance (0);
   end getInstanceAnimation;

   procedure createCWHDXY (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createCWHDXY (image, basicColorArray, width, height, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCWHDXY;

   procedure createCWH (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createCWH (image, basicColorArray, width, height, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createCWH;

   procedure createWH (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant SpriteIndexedAnimationFactory_Access := createWH (image, width, height, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createWH;

   procedure getInstance (This : in out SpriteIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := SpriteIndexedAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out SpriteIndexedAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := SpriteIndexedAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.image.sprite.SpriteIndexedAnimationFactory_Package;


