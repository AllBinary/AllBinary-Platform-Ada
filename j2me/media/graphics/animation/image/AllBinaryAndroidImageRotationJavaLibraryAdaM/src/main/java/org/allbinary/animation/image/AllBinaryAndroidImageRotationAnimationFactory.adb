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


with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package; use org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;
with org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package;

package body org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package is

   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package OpenGLFeatureFactory_Package renames Standard.org.allbinary.graphics.opengles.OpenGLFeatureFactory_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   procedure Initialize_Fields (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   --  throws Exception
   function createFactory (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, width, height, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
   end createFactory;

   --  throws Exception
   function createFactoryA (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        return AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory, False);
   end createFactoryA;

   --  throws Exception
   function createFactoryU (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      androidImageRotationAnimationFactory : AllBinaryAndroidImageRotationAnimationFactory_Access;
   begin
        androidImageRotationAnimationFactory := AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
        androidImageRotationAnimationFactory.init (-((Java_Shift_Right_Arithmetic (image.getWidth, 2))), -((Java_Shift_Right_Arithmetic (image.getHeight, 2))));
        return androidImageRotationAnimationFactory;
   end createFactoryU;

   --  throws Exception
   function createFactoryDXYU (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      androidImageRotationAnimationFactory : AllBinaryAndroidImageRotationAnimationFactory_Access;
   begin
        androidImageRotationAnimationFactory := AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
        androidImageRotationAnimationFactory.init (dx, dy);
        return androidImageRotationAnimationFactory;
   end createFactoryDXYU;

   --  throws Exception
   function createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      androidImageRotationAnimationFactory : AllBinaryAndroidImageRotationAnimationFactory_Access;
   begin
        androidImageRotationAnimationFactory := AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
        androidImageRotationAnimationFactory.init (dx, dy);
        return androidImageRotationAnimationFactory;
   end createFactoryADXY;

   procedure init (This : in out AllBinaryAndroidImageRotationAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
        This.animationFactoryInitializationVisitor.originalDx := dx;
        This.animationFactoryInitializationVisitor.originalDy := dy;
   end init;

   procedure Initialize (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
        This.resizeCanvasForRotation := resizeCanvasForRotation;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      This : constant AllBinaryAndroidImageRotationAnimationFactory_Access := new AllBinaryAndroidImageRotationAnimationFactory;
   begin
      AllBinaryAndroidImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param, resizeCanvasForRotation);
      return This;
   end Create;

   --  throws Exception
   function getCanvasImage (This : in out AllBinaryAndroidImageRotationAnimationFactory) return Image_Access is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if (This.resizeCanvasForRotation) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
            return ImageCopyUtil_Package.getInstance.createImageScale (AllBinaryAndroidImageRotationAnimationFactory'Class (This).getImage, 1.44, False);
        else
            return AllBinaryAndroidImageRotationAnimationFactory'Class (This).getImage;
        end if;
   end getCanvasImage;

   --  throws Exception
   function getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      canvasImage : Image_Access;
      scaledImage : Image_Access;
      copyOfScaledImage : Image_Access;
   begin
        canvasImage := AllBinaryAndroidImageRotationAnimationFactory'Class (This).getCanvasImage;
        scaledImage := This.animationFactoryImageScaleUtil.createImage (canvasImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        copyOfScaledImage := ImageCopyUtil_Package.getInstance.createImage (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (AllBinaryAndroidImageRotationAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AllBinaryAdjustedAndroidImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (AllBinaryFlickerAndroidImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   procedure createFactory (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactory (image_Param => image_Param, width => width, height => height, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure createFactoryA (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryA (image_Param => image_Param, width => width, height => height, angleIncrement => angleIncrement, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryA;

   procedure createFactoryU (image_Param : access Image_Package.Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryU (image_Param => image_Param, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryU;

   procedure createFactoryDXYU (image_Param : access Image_Package.Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryDXYU (image_Param => image_Param, dx => dx, dy => dy, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDXYU;

   procedure createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryADXY (image_Param => image_Param, width => width, height => height, dx => dx, dy => dy, angleIncrement => angleIncrement, animationBehaviorFactory_Param => animationBehaviorFactory_Param, resizeCanvasForRotation => resizeCanvasForRotation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryADXY;

   procedure getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryAndroidImageRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;


