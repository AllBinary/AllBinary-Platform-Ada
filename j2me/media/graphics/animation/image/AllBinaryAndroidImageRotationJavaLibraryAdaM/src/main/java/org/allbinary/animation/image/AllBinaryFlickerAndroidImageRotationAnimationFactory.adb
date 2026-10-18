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


with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.logic.communication.log.ForcedLogUtil_Package; use org.allbinary.logic.communication.log.ForcedLogUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;

package body org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package ForcedLogUtil_Package renames Standard.org.allbinary.logic.communication.log.ForcedLogUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   procedure Initialize_Fields (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory'Class) is
   begin
      null;
      This.image := NullImage_Package.NULL_IMAGE;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      image : constant Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
      Initialize_Fields (This);
        AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).setImage (image);
        This.angleIncrement := angleIncrement;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return AllBinaryFlickerAndroidImageRotationAnimationFactory_Access is
      This : constant AllBinaryFlickerAndroidImageRotationAnimationFactory_Access := new AllBinaryFlickerAndroidImageRotationAnimationFactory;
   begin
      AllBinaryFlickerAndroidImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, angleIncrement, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      image : Image_Access;
   begin
        image := ImageCopyUtil_Package.getInstance.createImage (AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getImage);
        return Animation_Access (AllBinaryFlickerAndroidImageRotationAnimation_Package.Create (AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getImage, image, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance));
   end getInstance;

   function getAngleIncrement (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure setImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        This.image := image;
   end setImage;

   function getImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Image_Access is
   begin
        return This.image;
   end getImage;

   procedure setInitialScale (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package;


