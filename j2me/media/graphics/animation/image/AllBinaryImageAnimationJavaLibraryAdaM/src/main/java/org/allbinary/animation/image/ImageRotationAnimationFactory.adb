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


package body org.allbinary.animation.image.ImageRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out ImageRotationAnimationFactory'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageRotationAnimationFactory'Class; image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) is
      image : Image_Access := Image_Access (image_Param);
      animationBehaviorFactory : AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, image, PrimitiveIntUtil_Package.getArrayInstance, width, height, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.angleIncrement := angleIncrement;
        This.animationFactoryInitializationVisitor.dx := dx;
        This.animationFactoryInitializationVisitor.dy := dy;
   end Initialize;

   function Create (image_Param : access Image'Class; width : Integer; height : Integer; dx : Integer; dy : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory'Class) return ImageRotationAnimationFactory_Access is
      This : constant ImageRotationAnimationFactory_Access := new ImageRotationAnimationFactory;
   begin
      ImageRotationAnimationFactory_Package.Initialize (This.all, image_Param, width, height, dx, dy, angleIncrement, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ImageRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            This.animationFactoryImageScaleUtil.processAdjust (ImageRotationAnimationFactory_Access'(This'Unchecked_Access));
            return AdjustedImageBaseRotationAnimation_Package.Create (This.getImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return ImageBaseRotationAnimation_Package.Create (This.getImage, AngleInfo_Package.getInstance (This.angleIncrement), AngleFactory_Package.getInstance.TOTAL_ANGLE, This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   function getAngleIncrementP (This : in out ImageRotationAnimationFactory) return Short_Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrementP;

   procedure getInstance (This : in out ImageRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := ImageRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.ImageRotationAnimationFactory_Package;


