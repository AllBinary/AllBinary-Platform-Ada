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


with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;
with org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryAdjustedHTMLImageRotationAnimation_Package;

package body org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package is

   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   procedure Initialize_Fields (This : in out AllBinaryHTMLImageRotationAnimationFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   --  throws Exception
   function createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryHTMLImageRotationAnimationFactory_Access is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      htmlImageRotationAnimationFactory : AllBinaryHTMLImageRotationAnimationFactory_Access;
   begin
        htmlImageRotationAnimationFactory := AllBinaryHTMLImageRotationAnimationFactory_Package.Create (image, width, height, angleIncrement, animationBehaviorFactory);
        htmlImageRotationAnimationFactory.init (dx, dy);
        return htmlImageRotationAnimationFactory;
   end createFactoryADXY;

   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryHTMLImageRotationAnimationFactory_Access is
      This : constant AllBinaryHTMLImageRotationAnimationFactory_Access := new AllBinaryHTMLImageRotationAnimationFactory;
   begin
      AllBinaryHTMLImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param);
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
        scaledImage := This.animationFactoryImageScaleUtil.createImage (AllBinaryHTMLImageRotationAnimationFactory'Class (This).getImage, This.animationFactoryInitializationVisitor.width, This.animationFactoryInitializationVisitor.height, This.scaleProperties.scaleWidth, This.scaleProperties.scaleHeight);
        copyOfScaledImage := ImageCopyUtil_Package.getInstance.createImage (scaledImage);
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (AllBinaryHTMLImageRotationAnimationFactory_Access'(This'Unchecked_Access));
            return Animation_Access (AllBinaryAdjustedHTMLImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (AllBinaryHTMLImageRotationAnimationFactory'Class (This).getAngleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return Animation_Access (AllBinaryHTMLImageRotationAnimation_Package.Create (scaledImage, copyOfScaledImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance));
        end if;
   end getInstance;

   function getAngleIncrement (This : in out AllBinaryHTMLImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure createFactoryADXY (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      Java_Result : constant AllBinaryHTMLImageRotationAnimationFactory_Access := createFactoryADXY (image_Param => image_Param, width => width, height => height, dx => dx, dy => dy, angleIncrement => angleIncrement, animationBehaviorFactory_Param => animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactoryADXY;

   procedure getInstance (This : in out AllBinaryHTMLImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryHTMLImageRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimationFactory_Package;


