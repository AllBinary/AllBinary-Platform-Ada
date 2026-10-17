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


package body org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryHTMLImageRotationAnimationFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   --  throws Exception
   function createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryHTMLImageRotationAnimationFactory_Access is
      htmlImageRotationAnimationFactory : AllBinaryHTMLImageRotationAnimationFactory_Access;
   begin
        htmlImageRotationAnimationFactory := AllBinaryHTMLImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory);
        htmlImageRotationAnimationFactory.init (dx, dy);
        return htmlImageRotationAnimationFactory;
   end createFactoryADXY;

   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
   end Initialize;

   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryHTMLImageRotationAnimationFactory_Access is
      This : constant AllBinaryHTMLImageRotationAnimationFactory_Access := new AllBinaryHTMLImageRotationAnimationFactory;
   begin
      AllBinaryHTMLImageRotationAnimationFactory_Package.Initialize (This.all, image, width, height, angleIncrement, animationBehaviorFactory);
      return This;
   end Create;

   procedure init (This : in out AllBinaryHTMLImageRotationAnimationFactory; dx : Integer; dy : Integer) is
   begin
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
        This.animationFactoryInitializationVisitor.originalDx := dx;
        This.animationFactoryInitializationVisitor.originalDy := dy;
   end init;

   --  throws Exception
   function getInstance (This : in out AllBinaryHTMLImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      scaledImage : Image_Access;
      copyOfScaledImage : Image_Access;
   begin
        scaledImage := This.animationFactoryImageScaleUtil.createImage (This.getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        copyOfScaledImage := ImageCopyUtil_Package.getInstance.createImage (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (This'Unchecked_Access);
            return AllBinaryAdjustedHTMLImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.getAngleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return AllBinaryHTMLImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   function getAngleIncrement (This : in out AllBinaryHTMLImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure createFactoryADXY (image : Image_Access; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
      Java_Result : constant AllBinaryHTMLImageRotationAnimationFactory_Access := createFactoryADXY (image, width, height, dx, dy, angleIncrement, animationBehaviorFactory);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryADXY;

   procedure getInstance (This : in out AllBinaryHTMLImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryHTMLImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package;


