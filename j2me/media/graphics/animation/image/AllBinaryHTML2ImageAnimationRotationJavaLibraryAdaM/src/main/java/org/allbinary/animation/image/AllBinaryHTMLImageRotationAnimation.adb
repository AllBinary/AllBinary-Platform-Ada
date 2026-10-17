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


package body org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package is

   procedure Initialize_Fields (This : in out AllBinaryHTMLImageRotationAnimation'Class) is
   begin
      null;
      This.imageRotationUtil := ImageRotationUtil_Package.getInstance;
      This.imageModifierUtil := ImageModifierUtil_Package.getInstanceOrCreate;
      
      This.twoImages := new Image_Access_Array'(0 .. (2) - 1 => null);
      This.canvasSurfaceArray := new Canvas_Access_Array'(0 .. (2) - 1 => null);
      
      This.bufferedImageIndex := 0;
      This.alphaProcessor := AlphaBaseProcessor_Package.getInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) is
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.originalImage := originalImage;
        This.imageToShow := image;
        This.twoImages (0) := image;
        This.twoImages (1) := ImageCopyUtil_Package.getInstance.createImage (image);
        This.canvasSurfaceArray (0) := This.getCanvasSurface (This.twoImages (0));
        This.canvasSurfaceArray (1) := This.getCanvasSurface (This.twoImages (1));
   end Initialize;

   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryHTMLImageRotationAnimation_Access is
      This : constant AllBinaryHTMLImageRotationAnimation_Access := new AllBinaryHTMLImageRotationAnimation;
   begin
      AllBinaryHTMLImageRotationAnimation_Package.Initialize (This.all, originalImage, image, angleInfo, totalAngle, animationBehavior);
      return This;
   end Create;

   function getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image : Image_Access) return Canvas_Access is
      htmlImage : PlaynMutableImage_Access;
      canvasImage : ImageImpl_Access;
      playN : PlayN_Access;
      canvas : Canvas_Access;
   begin
        htmlImage := PlaynMutableImage_Access (image);
        canvasImage := ImageImpl_Access (htmlImage.getImage);
        playN := PlayN_Package.getInstance;
        canvas := (HtmlGraphics_Access (playN.graphics)).get (HtmlImage_Access (canvasImage));
        canvas.translate ((This.originalImage.getWidth) / (2), (This.originalImage.getHeight) / (2));
        return canvas;
   end getCanvasSurface;

   procedure setBasicColorP (This : in out AllBinaryHTMLImageRotationAnimation; basicColor : BasicColor_Access) is
      changed : Boolean;
   begin
        changed := False;
        if ((This.getBasicColorP) = (null)) or else ((This.getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            This.updateImage;
        end if;
   end setBasicColorP;

   procedure setAlpha (This : in out AllBinaryHTMLImageRotationAnimation; alpha : Integer) is
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

   procedure nextRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).nextRotation;
        This.updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).previousRotation;
        This.updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryHTMLImageRotationAnimation) is
      canvasSurface : Canvas_Access;
   begin
        canvasSurface := This.canvasSurfaceArray (This.bufferedImageIndex);
        canvasSurface.save;
        This.imageRotationUtil.rotateImageCanvasSurfaceClear (This.originalImage, This.twoImages (This.bufferedImageIndex), canvasSurface, (This.angleInfo.getAngle) + (90));
        This.alphaProcessor.setAlpha (This.imageModifierUtil, This.originalImage, This.twoImages (This.bufferedImageIndex), This.alphaP);
        This.imageRotationUtil.drawImage (This.originalImage, This.imageToShow, canvasSurface);
        canvasSurface.restore;
        This.swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryHTMLImageRotationAnimation; index : Integer) is
   begin
        ImageBaseRotationAnimation (This).setFrame (index);
        This.updateImage;
   end setFrame;

   procedure swap (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        This.imageToShow := This.twoImages (This.bufferedImageIndex);
        if (This.bufferedImageIndex) = (0) then
            This.bufferedImageIndex := 1;
        else
            This.bufferedImageIndex := 0;
        end if;
   end swap;

   procedure paintXY (This : in out AllBinaryHTMLImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer) is
   begin
        graphics.drawImage (This.imageToShow, x, y, This.anchor);
   end paintXY;

   procedure getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image : Image_Access) is
      Java_Result : constant Canvas_Access := AllBinaryHTMLImageRotationAnimation'Class (This).getCanvasSurface (image);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCanvasSurface;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;


