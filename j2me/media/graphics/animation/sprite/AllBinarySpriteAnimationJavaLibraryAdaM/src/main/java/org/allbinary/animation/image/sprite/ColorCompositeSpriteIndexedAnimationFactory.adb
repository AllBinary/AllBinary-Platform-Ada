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


package body org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package is

   procedure Initialize_Fields (This : in out ColorCompositeSpriteIndexedAnimationFactory'Class) is
   begin
      null;
      This.animationFactorySpriteScaleUtil := AnimationFactorySpriteScaleUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ColorCompositeSpriteIndexedAnimationFactory'Class; image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.basicColorArray := basicColorArray;
   end Initialize;

   function Create (image : Image_Access; basicColorArray : BasicColor_Access_Array_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return ColorCompositeSpriteIndexedAnimationFactory_Access is
      This : constant ColorCompositeSpriteIndexedAnimationFactory_Access := new ColorCompositeSpriteIndexedAnimationFactory;
   begin
      Initialize (This.all, image, basicColorArray, width, height, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer) return Animation_Access is
      sprite : Sprite_Access;
   begin
        sprite := This.animationFactorySpriteScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        return SpriteIndexedAnimation_Package.Create (sprite, This.getImage, This.basicColorArray, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   --  throws Exception
   function getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface : Animation_Access) return Animation_Access is
   begin
        return This.getInstance (0);
   end getInstanceAnimation;

   procedure getInstance (This : in out ColorCompositeSpriteIndexedAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ColorCompositeSpriteIndexedAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstanceAnimation (This : in out ColorCompositeSpriteIndexedAnimationFactory; animationInterface : Animation_Access) is
      Java_Result : constant Animation_Access := ColorCompositeSpriteIndexedAnimationFactory'Class (This).getInstanceAnimation (animationInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceAnimation;

end org.allbinary.animation.image.sprite.ColorCompositeSpriteIndexedAnimationFactory_Package;


