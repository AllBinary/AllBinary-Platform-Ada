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


package body org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class) is
   begin
      null;
      
      
   end Initialize_Fields;


   --  throws Exception
   function createFactory (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access is
   begin
        return AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, width, height, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
   end createFactory;

   --  throws Exception
   function createFactoryA (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access is
   begin
        return AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory, False);
   end createFactoryA;

   --  throws Exception
   function createFactoryU (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      androidImageRotationAnimationFactory : AllBinaryAndroidImageRotationAnimationFactory_Access;
   begin
        androidImageRotationAnimationFactory := AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
        androidImageRotationAnimationFactory.init (-((Java_Shift_Right_Arithmetic (image.getWidth, 2))), -((Java_Shift_Right_Arithmetic (image.getHeight, 2))));
        return androidImageRotationAnimationFactory;
   end createFactoryU;

   --  throws Exception
   function createFactoryDXYU (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      androidImageRotationAnimationFactory : AllBinaryAndroidImageRotationAnimationFactory_Access;
   begin
        androidImageRotationAnimationFactory := AllBinaryAndroidImageRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, Short_Integer (((AngleFactory_Package.getInstance.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity))), animationBehaviorFactory, False);
        androidImageRotationAnimationFactory.init (dx, dy);
        return androidImageRotationAnimationFactory;
   end createFactoryDXYU;

   --  throws Exception
   function createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access is
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

   procedure Initialize (This : in out AllBinaryAndroidImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
        This.resizeCanvasForRotation := resizeCanvasForRotation;
   end Initialize;

   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) return AllBinaryAndroidImageRotationAnimationFactory_Access is
      This : constant AllBinaryAndroidImageRotationAnimationFactory_Access := new AllBinaryAndroidImageRotationAnimationFactory;
   begin
      Initialize (This.all, image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
      return This;
   end Create;

   --  throws Exception
   function getCanvasImage (This : in out AllBinaryAndroidImageRotationAnimationFactory) return Image_Access is
      features : Features_Access;
   begin
        features := Features_Package.getInstance;
        if (This.resizeCanvasForRotation) and then (not (features.isDefault (OpenGLFeatureFactory_Package.getInstance.OPENGL))) then
            return ImageCopyUtil_Package.getInstance.createImageScale (This.getImage, 1.44, False);
        else
            return This.getImage;
        end if;
   end getCanvasImage;

   --  throws Exception
   function getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      canvasImage : Image_Access;
      scaledImage : Image_Access;
      copyOfScaledImage : Image_Access;
   begin
        canvasImage := This.getCanvasImage;
        scaledImage := This.animationFactoryImageScaleUtil.createImage (canvasImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        copyOfScaledImage := ImageCopyUtil_Package.getInstance.createImage (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (This'Unchecked_Access);
            return AllBinaryAdjustedAndroidImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return AllBinaryFlickerAndroidImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   procedure createFactory (image : Image_Access; width : Integer; height : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactory (image, width, height, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure createFactoryA (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryA (image, width, height, angleIncrement, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryA;

   procedure createFactoryU (image : Image_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryU (image, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryU;

   procedure createFactoryDXYU (image : Image_Access; dx : Integer; dy : Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryDXYU (image, dx, dy, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryDXYU;

   procedure createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access; resizeCanvasForRotation : Boolean) is
      Java_Result : constant AllBinaryAndroidImageRotationAnimationFactory_Access := createFactoryADXY (image, width, height, dx, dy, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryADXY;

   procedure getCanvasImage (This : in out AllBinaryAndroidImageRotationAnimationFactory) is
      Java_Result : constant Image_Access := AllBinaryAndroidImageRotationAnimationFactory'Class (This).getCanvasImage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCanvasImage;

   procedure getInstance (This : in out AllBinaryAndroidImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryAndroidImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;


