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


package body org.allbinary.animation.image.TopToBottomImageAnimationFactory_Package is

   procedure Initialize_Fields (This : in out TopToBottomImageAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out TopToBottomImageAnimationFactory'Class; image : Image_Access; sequenceArray : Integer_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, sequenceArray, image.getWidth, image.getHeight, 0, 0, animationBehaviorFactory);
   end Initialize;

   function Create (image : Image_Access; sequenceArray : Integer_Array_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return TopToBottomImageAnimationFactory_Access is
      This : constant TopToBottomImageAnimationFactory_Access := new TopToBottomImageAnimationFactory;
   begin
      TopToBottomImageAnimationFactory_Package.Initialize (This.all, image, sequenceArray, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out TopToBottomImageAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        return TopToBottomImageAnimation_Package.Create (scaledImage, This.getSequenceArray, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   procedure getInstance (This : in out TopToBottomImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := TopToBottomImageAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.TopToBottomImageAnimationFactory_Package;


