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


package body org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package is

   procedure Initialize_Fields (This : in out VectorToImageArrayRotationAnimationFactory'Class) is
   begin
      null;
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      This.angleIncrement := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorToImageArrayRotationAnimationFactory'Class; vectorInfo : VectorInfo_Access; basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) is
   begin
        BaseImageAnimationFactory_Package.Initialize (This, AnimationFrameToImageUtil_Package.getInstance.getInstanceTranslate (vectorInfo.getWidth, vectorInfo.getHeight, VectorAnimation_Package.createVectorAnimation (vectorInfo.getPoints, basicColor, animationBehaviorFactory.getOrCreateInstance)), PrimitiveIntUtil_Package.getArrayInstance, 0, 0, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        This.init;
   end Initialize;

   function Create (vectorInfo : VectorInfo_Access; basicColor : BasicColor_Access; animationBehaviorFactory : AnimationBehaviorFactory_Access) return VectorToImageArrayRotationAnimationFactory_Access is
      This : constant VectorToImageArrayRotationAnimationFactory_Access := new VectorToImageArrayRotationAnimationFactory;
   begin
      VectorToImageArrayRotationAnimationFactory_Package.Initialize (This.all, vectorInfo, basicColor, animationBehaviorFactory);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out VectorToImageArrayRotationAnimationFactory) is
      angleFactory : AngleFactory_Access;
   begin
        angleFactory := AngleFactory_Package.getInstance;
        This.angleIncrement := (angleFactory.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity);
        This.imageArray := ImageToRotationImageArrayUtil_Package.getInstance.generate (This.getImage, This.getAngleIncrement, Integer (angleFactory.TOTAL_ANGLE));
   end init;

   --  throws Exception
   function getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return AdjustedImageArrayRotationAnimation_Package.Create (This.imageArray, AngleInfo_Package.getInstance (Short_Integer (This.getAngleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance);
        else
            return AdjustedImageArrayRotationAnimation_Package.createAnimation (This.imageArray, AngleInfo_Package.getInstance (Short_Integer (This.angleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   function getAngleIncrement (This : in out VectorToImageArrayRotationAnimationFactory) return Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure setInitialScale (This : in out VectorToImageArrayRotationAnimationFactory; scaleProperties : ScaleProperties_Access) is
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := VectorToImageArrayRotationAnimationFactory'Class (This).getInstance (instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package;


