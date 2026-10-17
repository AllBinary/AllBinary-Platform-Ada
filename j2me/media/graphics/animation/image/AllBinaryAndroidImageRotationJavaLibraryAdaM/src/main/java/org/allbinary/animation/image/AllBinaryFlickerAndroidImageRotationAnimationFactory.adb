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


package body org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory'Class) is
   begin
      null;
      This.image := NullImage_Package.NULL_IMAGE;
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory'Class; image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
      Initialize_Fields (This);
        This.setImage (image);
        This.angleIncrement := angleIncrement;
        This.animationBehaviorFactory := animationBehaviorFactory;
   end Initialize;

   function Create (image : Image_Access; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory : AnimationBehaviorFactory_Access) return AllBinaryFlickerAndroidImageRotationAnimationFactory_Access is
      This : constant AllBinaryFlickerAndroidImageRotationAnimationFactory_Access := new AllBinaryFlickerAndroidImageRotationAnimationFactory;
   begin
      Initialize (This.all, image, width, height, angleIncrement, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
      image : Image_Access;
   begin
        image := ImageCopyUtil_Package.getInstance.createImage (This.getImage);
        return AllBinaryFlickerAndroidImageRotationAnimation_Package.Create (This.getImage, image, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   function getAngleIncrement (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure setImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; image : Image_Access) is
   begin
        This.image := image;
   end setImage;

   function getImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) return Image_Access is
   begin
        return This.image;
   end getImage;

   procedure setInitialScale (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getAngleIncrement (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) is
      Java_Result : constant Short_Integer := AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getAngleIncrement;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAngleIncrement;

   procedure getImage (This : in out AllBinaryFlickerAndroidImageRotationAnimationFactory) is
      Java_Result : constant Image_Access := AllBinaryFlickerAndroidImageRotationAnimationFactory'Class (This).getImage;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImage;

end org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimationFactory_Package;


