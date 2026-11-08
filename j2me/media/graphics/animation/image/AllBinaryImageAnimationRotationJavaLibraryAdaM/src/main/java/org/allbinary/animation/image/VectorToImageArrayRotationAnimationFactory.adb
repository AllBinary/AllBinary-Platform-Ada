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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehaviorFactory_Package; use org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.VectorAnimation_Package; use org.allbinary.animation.VectorAnimation_Package;
with org.allbinary.game.configuration.GameConfigurationCentral_Package; use org.allbinary.game.configuration.GameConfigurationCentral_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.image.AnimationFrameToImageUtil_Package; use org.allbinary.image.AnimationFrameToImageUtil_Package;
with org.allbinary.logic.math.PrimitiveIntUtil_Package; use org.allbinary.logic.math.PrimitiveIntUtil_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.ScaleProperties_Package; use org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
with org.allbinary.media.image.ImageToRotationImageArrayUtil_Package; use org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
with org.allbinary.vector.VectorInfo_Package; use org.allbinary.vector.VectorInfo_Package;
with org.allbinary.vector.VectorInfo_Package_References;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.system.security.licensing.AbeClientInformationInterface_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.game.configuration.GameConfiguration_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with javax.microedition.lcdui.Graphics_Package;
with org.allbinary.animation.image.ImageArrayRotationAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.math.NamedAngle_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.image.VectorToImageArrayRotationAnimationFactory_Package is

   package NullImage_Package renames Standard.javax.microedition.lcdui.NullImage_Package;
   package VectorAnimation_Package renames Standard.org.allbinary.animation.VectorAnimation_Package;
   package GameConfigurationCentral_Package renames Standard.org.allbinary.game.configuration.GameConfigurationCentral_Package;
   package AnimationFrameToImageUtil_Package renames Standard.org.allbinary.image.AnimationFrameToImageUtil_Package;
   package PrimitiveIntUtil_Package renames Standard.org.allbinary.logic.math.PrimitiveIntUtil_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageToRotationImageArrayUtil_Package renames Standard.org.allbinary.media.image.ImageToRotationImageArrayUtil_Package;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehaviorFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehaviorFactory_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   function "=" (Left, Right : ScaleProperties_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScaleProperties_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.ScaleProperties_Package_References."=";
   subtype VectorInfo_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access;
   function "=" (Left, Right : VectorInfo_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
   subtype VectorInfo_Access_Array_Access_Array_Access is org.allbinary.vector.VectorInfo_Package_References.VectorInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : VectorInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.vector.VectorInfo_Package_References."=";
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
        This.angleIncrement := (Integer (angleFactory.TOTAL_ANGLE)) / (GameConfigurationCentral_Package.getInstance.getGameControlFidelity);
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


