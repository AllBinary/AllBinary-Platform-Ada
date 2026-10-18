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
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package; use org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;

package body org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package VectorAnimation_Package renames Standard.org.allbinary.animation.VectorAnimation_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AnimationFrameToImageUtil_Package renames Standard.org.allbinary.image.AnimationFrameToImageUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageToRotationImageArrayUtil_Package renames Standard.org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
   procedure Initialize_Fields (This : in out VectorToImageArrayRotationAnimationFactory'Class) is
   begin
      null;
      This.imageArray := NullImage_Package.NULL_IMAGE_ARRAY;
      This.angleIncrement := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out VectorToImageArrayRotationAnimationFactory'Class; vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) is
      vectorInfo : constant VectorInfo_Access := VectorInfo_Access (vectorInfo_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      animationBehaviorFactory : constant AnimationBehaviorFactory_Access := AnimationBehaviorFactory_Access (animationBehaviorFactory_Param);
   begin
        BaseImageAnimationFactory_Package.Initialize (This, AnimationFrameToImageUtil_Package.getInstance.getInstanceTranslate (vectorInfo.getWidth, vectorInfo.getHeight, VectorAnimation_Package.createVectorAnimation (vectorInfo.getPoints, basicColor, animationBehaviorFactory.getOrCreateInstance)), PrimitiveIntUtil_Package.getArrayInstance, 0, 0, 0, 0, animationBehaviorFactory);
        Initialize_Fields (This);
        VectorToImageArrayRotationAnimationFactory'Class (This).init;
   end Initialize;

   function Create (vectorInfo_Param : access VectorInfo_Package.VectorInfo'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return VectorToImageArrayRotationAnimationFactory_Access is
      This : constant VectorToImageArrayRotationAnimationFactory_Access := new VectorToImageArrayRotationAnimationFactory;
   begin
      VectorToImageArrayRotationAnimationFactory_Package.Initialize (This.all, vectorInfo_Param, basicColor_Param, animationBehaviorFactory_Param);
      return This;
   end Create;

   --  throws Exception
   procedure init (This : in out VectorToImageArrayRotationAnimationFactory) is
      angleFactory : AngleFactory_Access;
   begin
        angleFactory := AngleFactory_Package.getInstance;
        This.angleIncrement := (angleFactory.TOTAL_ANGLE) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity);
        This.imageArray := ImageToRotationImageArrayUtil_Package.getInstance.generate (VectorToImageArrayRotationAnimationFactory'Class (This).getImage, VectorToImageArrayRotationAnimationFactory'Class (This).getAngleIncrement, Integer (angleFactory.TOTAL_ANGLE));
   end init;

   --  throws Exception
   function getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer) return Animation_Access is
   begin
        if ((This.animationFactoryInitializationVisitor.dx) /= (0)) or else ((This.animationFactoryInitializationVisitor.dy) /= (0)) then
            return Animation_Access (AdjustedImageArrayRotationAnimation_Package.Create (This.imageArray, AngleInfo_Package.getInstance (Short_Integer (VectorToImageArrayRotationAnimationFactory'Class (This).getAngleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationFactoryInitializationVisitor.dx, This.animationFactoryInitializationVisitor.dy, This.animationBehaviorFactory.getOrCreateInstance));
        else
            return AdjustedImageArrayRotationAnimation_Package.createAnimation (This.imageArray, AngleInfo_Package.getInstance (Short_Integer (This.angleIncrement)), Integer (AngleFactory_Package.getInstance.TOTAL_ANGLE), This.animationBehaviorFactory.getOrCreateInstance);
        end if;
   end getInstance;

   function getAngleIncrement (This : in out VectorToImageArrayRotationAnimationFactory) return Integer is
   begin
        return This.angleIncrement;
   end getAngleIncrement;

   procedure setInitialScale (This : in out VectorToImageArrayRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class) is
      scaleProperties : constant ScaleProperties_Access := ScaleProperties_Access (scaleProperties_Param);
   begin
        null;
   end setInitialScale;

   procedure getInstance (This : in out VectorToImageArrayRotationAnimationFactory; instanceId : Integer) is
      Java_Result : constant Animation_Access := VectorToImageArrayRotationAnimationFactory'Class (This).getInstance (instanceId => instanceId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package;


