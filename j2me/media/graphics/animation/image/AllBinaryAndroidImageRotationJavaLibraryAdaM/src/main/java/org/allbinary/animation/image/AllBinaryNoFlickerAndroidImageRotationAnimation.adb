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


package body org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation'Class) is
   begin
      null;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      This.androidImageUtil := AndroidImageUtil_Package.getInstance;
      This.matrix := Matrix_Package.Create;
      
      
      
      
      This.twoImages := new Image_Access_Array'(0 .. (2) - 1 => null);
      
      This.bufferedImageIndex := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation'Class; originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior'Class) is
      originalImage : Image_Access := Image_Access (originalImage_Param);
      image : Image_Access := Image_Access (image_Param);
      angleInfo : AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.originalImage := originalImage;
        This.halfWidth := (Java_Shift_Right_Arithmetic (image.getWidth, 1));
        This.halfHeight := (Java_Shift_Right_Arithmetic (image.getHeight, 1));
        This.increment := Short_Integer ((This.angleInfo.getAngleIncrementInfo.getAngleIncrement));
        This.imageToShow := image;
        This.twoImages (0) := image;
        This.twoImages (1) := ImageCopyUtil_Package.getInstance.createImage (image);
   end Initialize;

   function Create (originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access is
      This : constant AllBinaryNoFlickerAndroidImageRotationAnimation_Access := new AllBinaryNoFlickerAndroidImageRotationAnimation;
   begin
      AllBinaryNoFlickerAndroidImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((This.getBasicColorP) = (null)) or else ((This.getBasicColorP.intValue) /= (basicColor.intValue)) then
            This.imageModifierUtil.setColor (This.originalImage, This.imageToShow, 0, basicColor);
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.matrix.setRotate (0.0, Float (This.halfWidth), Float (This.halfHeight));
            This.updateImage;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor'Class) is
      basicColor : BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        This.setBasicColorP (basicColor);
   end changeBasicColor;

   procedure setAlpha (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setAlpha (alpha);
        This.imageModifierUtil.setAlpha (This.originalImage, This.imageToShow, 0, This.alphaP);
        if changed then
            This.matrix.setRotate (0.0, Float (This.halfWidth), Float (This.halfHeight));
            This.updateImage;
        end if;
   end setAlpha;

   procedure nextRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).nextRotation;
        This.matrix.setRotate (Float (This.increment), Float (This.halfWidth), Float (This.halfHeight));
        This.updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).previousRotation;
        This.matrix.setRotate (Float (-(This.increment)), Float (This.halfWidth), Float (This.halfHeight));
        This.updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation) is
   begin
        This.androidImageUtil.rotate (This.twoImages (This.bufferedImageIndex), This.originalImage, This.matrix, This.imageModifierUtil.paint);
        This.swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; index : Integer) is
      currentFrame : Integer;
      newFrame : Integer;
   begin
        currentFrame := This.circularIndexUtil.getIndex;
        This.circularIndexUtil.setIndex (index);
        newFrame := This.circularIndexUtil.getIndex;
        This.angleInfo.adjustAngle (newFrame);
        This.matrix.setRotate ((Float (((newFrame) - (currentFrame)))) * (Float (This.increment)), Float (This.halfWidth), Float (This.halfHeight));
        This.updateImage;
   end setFrame;

   procedure swap (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation) is
   begin
        This.imageToShow := This.twoImages (This.bufferedImageIndex);
        if (This.bufferedImageIndex) = (0) then
            This.bufferedImageIndex := 1;
        else
            This.bufferedImageIndex := 0;
        end if;
   end swap;

   procedure paintXY (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer) is
      graphics : Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.imageToShow, x, y, This.anchor);
   end paintXY;

end org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package;


