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


package body org.allbinary.animation.image.BottomToTopImageAnimationFactory_Package is

   procedure Initialize_Fields (This : in out BottomToTopImageAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BottomToTopImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, image.getWidth, image.getHeight, 0, 0, animationBehaviorFactory);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return BottomToTopImageAnimationFactory_Access is
      This : constant BottomToTopImageAnimationFactory_Access := new BottomToTopImageAnimationFactory;
   begin
      BottomToTopImageAnimationFactory_Package.Initialize (This.all, image_Param, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out BottomToTopImageAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (BottomToTopImageAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        return BottomToTopImageAnimation_Package.Create (scaledImage, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   procedure getInstance (This : in out BottomToTopImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := BottomToTopImageAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.BottomToTopImageAnimationFactory_Package;


