-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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


with org.allbinary.graphics.opengles.OpenGLUtil_Package; use org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.animation.image.ImageAnimation_Package; use org.allbinary.animation.image.ImageAnimation_Package;
with org.allbinary.animation.image.AdjustedImageAnimation_Package; use org.allbinary.animation.image.AdjustedImageAnimation_Package;

package body org.allbinary.animation.image.ImageAnimationFactory_Package is

   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   procedure Initialize_Fields (This : in out ImageAnimationFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   --  throws Exception
   function createFactory (image_Param : access Image_Package.Image'Class) return ImageAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        return ImageAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, 0, 0, AnimationBehaviorFactory_Package.getInstance);
   end createFactory;

   procedure Initialize (This : in out ImageAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, dx, dy, animationBehaviorFactory);
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ImageAnimationFactory_Access is
      This : constant ImageAnimationFactory_Access := new ImageAnimationFactory;
   begin
      ImageAnimationFactory_Package.Initialize (This.all, image_Param, width, height, dx, dy, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ImageAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
      openGLUtil : OpenGLUtil_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (ImageAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        openGLUtil := OpenGLUtil_Package.getInstance;
        scaledImage := openGLUtil.addImage (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (ImageAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AdjustedImageAnimation_Package.Create (scaledImage, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (ImageAnimation_Package.Create (scaledImage, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   procedure createFactory (image_Param : access Image_Package.Image'Class) is
      Java_Result : constant ImageAnimationFactory_Access := createFactory (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure getInstance (This : in out ImageAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ImageAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.ImageAnimationFactory_Package;


