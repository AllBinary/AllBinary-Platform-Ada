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


with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.graphics.opengles.OpenGLUtil_Package; use org.allbinary.graphics.opengles.OpenGLUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;
with org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package;

package body org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package OpenGLUtil_Package renames Standard.org.allbinary.graphics.opengles.OpenGLUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   procedure Initialize_Fields (This : in out AllBinaryJ2SEImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   --  throws Exception
   function createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      imageRotationAnimationFactory : AllBinaryJ2SEImageRotationAnimationFactory_Access;
   begin
        imageRotationAnimationFactory := AllBinaryJ2SEImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dx := dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.dy := dy;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDx := dx;
        imageRotationAnimationFactory.animationFactoryInitializationVisitor.originalDy := dy;
        return imageRotationAnimationFactory;
   end createDXY;

   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrementP := angleIncrement;
        This.resizeCanvasForRotation := resizeCanvasForRotation;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryJ2SEImageRotationAnimationFactory_Access is
      This : constant AllBinaryJ2SEImageRotationAnimationFactory_Access := new AllBinaryJ2SEImageRotationAnimationFactory;
   begin
      AllBinaryJ2SEImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param, resizeCanvasForRotation);
      return This;
   end Create;

   --  throws Exception
   function getCanvasImage (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Image_Access is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if (This.resizeCanvasForRotation) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
            return ImageCopyUtil_Package.getInstance.createImageScale (AllBinaryJ2SEImageRotationAnimationFactory'Class (This).getImage, 1.44, False);
        else
            return AllBinaryJ2SEImageRotationAnimationFactory'Class (This).getImage;
        end if;
   end getCanvasImage;

   --  throws Exception
   function getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      imageCopyUtil : ImageCopyUtil_Access;
      canvasImage : Image_Access;
      scaledImage : Image_Access;
      openGLUtil : OpenGLUtil_Access;
      copyOfScaledImage : Image_Access;
   begin
        imageCopyUtil := ImageCopyUtil_Package.getInstance;
        canvasImage := AllBinaryJ2SEImageRotationAnimationFactory'Class (This).getCanvasImage;
        scaledImage := This.animationFactoryImageScaleUtil.createImage (canvasImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        openGLUtil := OpenGLUtil_Package.getInstance;
        scaledImage := openGLUtil.addImage (scaledImage);
        copyOfScaledImage := imageCopyUtil.createImageForRotation (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (AllBinaryJ2SEImageRotationAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AllBinaryAdjustedJ2SEImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrementP), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (AllBinaryJ2SEImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrementP), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   function getAngleIncrement (This : in out AllBinaryJ2SEImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrementP;
   end getAngleIncrement;

   procedure createDXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) is
      Java_Result : constant AllBinaryJ2SEImageRotationAnimationFactory_Access := createDXY (image_Param, width, height, dx, dy, angleIncrement, animationBehaviorFactory_Param, resizeCanvasForRotation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXY;

   procedure getInstance (This : in out AllBinaryJ2SEImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryJ2SEImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimationFactory_Package;


