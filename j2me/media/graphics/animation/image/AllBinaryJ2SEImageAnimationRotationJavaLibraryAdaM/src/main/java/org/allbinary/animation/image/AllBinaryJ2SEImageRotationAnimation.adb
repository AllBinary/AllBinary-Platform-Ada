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


package body org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryJ2SEImageRotationAnimation'Class) is
   begin
      null;
      This.imageRotationUtil := ImageRotationUtil_Package.getInstance;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      
      This.originalImageArray := new Image_Access_Array'(0 .. (1) - 1 => null);
      This.twoImages := new Image_Access_Array'(0 .. (2) - 1 => null);
      
      This.bufferedImageIndex := 0;
      This.lastScaleX := 1.0;
      This.lastScaleY := 1.0;
      This.scaleX := 1.0;
      This.scaleY := 1.0;
      This.maxScaleX := 0.0;
      This.maxScaleY := 0.0;
      This.alphaProcessor := ModifierBaseProcessor_Package.getInstance;
      This.setColorProcessor := ModifierBaseProcessor_Package.getInstance;
      This.changeColorProcessor := ModifierBaseProcessor_Package.getInstance;
      This.scaleProcessor := ScaleProcessor_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.realOriginalImage := originalImage;
        This.originalImageArray (0) := originalImage;
        This.imageToShow := image;
        This.twoImages (0) := image;
        This.twoImages (1) := ImageCopyUtil_Package.getInstance.createImageForRotation (image);
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryJ2SEImageRotationAnimation_Access is
      This : constant AllBinaryJ2SEImageRotationAnimation_Access := new AllBinaryJ2SEImageRotationAnimation;
   begin
      AllBinaryJ2SEImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   procedure setBasicColorP (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((This.getBasicColorP) = (null)) or else ((This.getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.setColorProcessor := SetColorProcessor_Package.getInstance;
            This.updateImage;
        end if;
   end setBasicColorP;

   procedure changeBasicColor (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((This.getChangeBasicColor) = (null)) or else ((This.getChangeBasicColor.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).changeBasicColor (basicColor);
        if changed then
            This.changeColorProcessor := ChangeColorProcessor_Package.getInstance;
            This.updateImage;
        end if;
   end changeBasicColor;

   procedure setAlpha (This : in out AllBinaryJ2SEImageRotationAnimation; alpha : Integer) is
      changed : Boolean;
   begin
        changed := False;
        if (This.alphaP) /= (alpha) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setAlpha (alpha);
        if changed then
            This.alphaProcessor := AlphaProcessor_Package.getInstance;
            This.updateImage;
        end if;
   end setAlpha;

   procedure setScale (This : in out AllBinaryJ2SEImageRotationAnimation; scaleX : Float; scaleY : Float) is
   begin
        This.scaleX := scaleX;
        This.scaleY := scaleY;
        if ((This.scaleX) /= (This.lastScaleX)) or else ((This.scaleY) /= (This.lastScaleY)) then
            This.scaleProcessor.update (This.realOriginalImage, This.originalImageArray, This.twoImages, This.bufferedImageIndex, This.scaleX, This.scaleY, This.maxScaleX, This.maxScaleY);
            This.updateImage;
        end if;
        This.lastScaleX := This.scaleX;
        This.lastScaleY := This.scaleY;
   end setScale;

   procedure setMaxScale (This : in out AllBinaryJ2SEImageRotationAnimation; maxScaleX : Float; maxScaleY : Float) is
   begin
        This.maxScaleX := maxScaleX;
        This.maxScaleY := maxScaleY;
        This.scaleProcessor.update (This.realOriginalImage, This.originalImageArray, This.twoImages, This.bufferedImageIndex, This.scaleX, This.scaleY, This.maxScaleX, This.maxScaleY);
        This.updateImage;
   end setMaxScale;

   procedure nextRotation (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).nextRotation;
        This.updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).previousRotation;
        This.updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        This.imageRotationUtil.rotateImage (This.originalImageArray (0), This.twoImages (This.bufferedImageIndex), (This.angleInfo.getAngle) + (90));
        This.alphaProcessor.updateAlpha (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.alphaP);
        This.setColorProcessor.updateColor (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.basicColor);
        This.changeColorProcessor.updateColor (This.imageModifierUtil, NullImage_Package.NULL_IMAGE, This.twoImages (This.bufferedImageIndex), 0, This.changeBasicColorP);
        This.swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryJ2SEImageRotationAnimation; index : Integer) is
   begin
        ImageBaseRotationAnimation (This).setFrame (index);
        This.updateImage;
   end setFrame;

   procedure swap (This : in out AllBinaryJ2SEImageRotationAnimation) is
   begin
        This.imageToShow := This.twoImages (This.bufferedImageIndex);
        if (This.bufferedImageIndex) = (0) then
            This.bufferedImageIndex := 1;
        else
            This.bufferedImageIndex := 0;
        end if;
   end swap;

   procedure paintXY (This : in out AllBinaryJ2SEImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.imageToShow, x, y, This.anchor);
   end paintXY;

   --  throws Exception
   procedure close (This : in out AllBinaryJ2SEImageRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        ImageBaseRotationAnimation (This).close;
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.twoImages'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.twoImages (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.realOriginalImage);
        disposalUtil.disposeImage (This.imageToShow);
   end close;

   --  throws Throwable
   procedure finalize (This : in out AllBinaryJ2SEImageRotationAnimation) is
      disposalUtil : DisposalUtil_Access;
      size2 : Integer;
      index : Integer;
      size : Integer;
   begin
        ImageBaseRotationAnimation (This).finalize;
        disposalUtil := DisposalUtil_Package.getInstance;
        size2 := This.twoImages'Length;
        for index in 0 .. (size2) - 1 loop
            disposalUtil.disposeImage (This.twoImages (index));
        end loop;
        size := This.originalImageArray'Length;
        for index in 0 .. (size) - 1 loop
            disposalUtil.disposeImage (This.originalImageArray (index));
        end loop;
        disposalUtil.disposeImage (This.realOriginalImage);
        disposalUtil.disposeImage (This.imageToShow);
   end finalize;

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;


