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


package body org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out PooledImageArrayRotationAnimationFactory'Class) is
   begin
      null;
      This.allBinaryImageRotationAnimationInfo := NullUtil_Package.getInstance.NULL_OBJECT;
      
   end Initialize_Fields;


   --  throws Exception
   function createFactory (image_Param : access Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access is
      image : Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      totalAngle : Integer;
      angleIncrement : Integer;
   begin
        totalAngle := Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE);
        angleIncrement := ((totalAngle) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity));
        return PooledImageArrayRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, -((Java_Shift_Right_Arithmetic (image.getWidth, 2))), -((Java_Shift_Right_Arithmetic (image.getHeight, 2))), angleIncrement, animationBehaviorFactory);
   end createFactory;

   --  throws Exception
   function createDXY (image_Param : access Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access is
      image : Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      totalAngle : Integer;
      angleIncrement : Integer;
   begin
        totalAngle := Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE);
        angleIncrement := ((totalAngle) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity));
        return PooledImageArrayRotationAnimationFactory_Package.Create (image, image.getWidth, image.getHeight, dx, dy, angleIncrement, animationBehaviorFactory);
   end createDXY;

   procedure Initialize (This : in out PooledImageArrayRotationAnimationFactory'Class; image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) is
      image : Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
      totalAngle : Integer;
      imageArray : Image_Access_Array_Access;
   begin
      Initialize_Fields (This);
        This.animationBehaviorFactory := animationBehaviorFactory;
        totalAngle := Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE);
        imageArray := ImageToRotationImageArrayUtil_Package.getInstance.generate (image, angleIncrement, totalAngle);
        This.allBinaryImageRotationAnimationInfo := ImageArrayRotationAnimationInfo_Package.Create (imageArray, angleIncrement, totalAngle, dx, dy);
   end Initialize;

   function Create (image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return PooledImageArrayRotationAnimationFactory_Access is
      This : constant PooledImageArrayRotationAnimationFactory_Access := new PooledImageArrayRotationAnimationFactory;
   begin
      PooledImageArrayRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, dx, dy, angleIncrement, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        return AdjustedImageArrayRotationAnimation_Package.createAdjustedImageArrayRotationAnimationInfo (This.allBinaryImageRotationAnimationInfo, This.animationBehaviorFactory.getOrCreateInstance);
   end getInstance;

   procedure setInitialScale (This : in out PooledImageArrayRotationAnimationFactory; scaleProperties_Param : access ScaleProperties'Class) is
      scaleProperties : ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure createFactory (image_Param : access Image'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) is
      Java_Result : constant PooledImageArrayRotationAnimationFactory_Access := createFactory (image_Param, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createFactory;

   procedure createDXY (image_Param : access Image'Class; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) is
      Java_Result : constant PooledImageArrayRotationAnimationFactory_Access := createDXY (image_Param, dx, dy, animationBehaviorFactory_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createDXY;

   procedure getInstance (This : in out PooledImageArrayRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := PooledImageArrayRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.PooledImageArrayRotationAnimationFactory_Package;


