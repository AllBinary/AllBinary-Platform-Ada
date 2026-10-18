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


with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with playn.html.HtmlGraphics_Package; use playn.html.HtmlGraphics_Package;
with playn.html.HtmlImage_Package; use playn.html.HtmlImage_Package;
with org.allbinary.animation.image.AlphaProcessor_Package; use org.allbinary.animation.image.AlphaProcessor_Package;

package body org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package is

   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;
   package HtmlGraphics_Package renames Standard.playn.html.HtmlGraphics_Package;
   package HtmlImage_Package renames Standard.playn.html.HtmlImage_Package;
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


   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      angleInfo : constant AngleInfo_Access := AngleInfo_Access (angleInfo_Param);
      animationBehavior : constant AnimationBehavior_Access := AnimationBehavior_Access (animationBehavior_Param);
   begin
        ImageBaseRotationAnimation_Package.Initialize (This, image, angleInfo, totalAngle, animationBehavior);
        Initialize_Fields (This);
        This.originalImage := originalImage;
        This.imageToShow := image;
        This.twoImages (0) := image;
        This.twoImages (1) := ImageCopyUtil_Package.getInstance.createImage (image);
        This.canvasSurfaceArray (0) := AllBinaryHTMLImageRotationAnimation'Class (This).getCanvasSurface (This.twoImages (0));
        This.canvasSurfaceArray (1) := AllBinaryHTMLImageRotationAnimation'Class (This).getCanvasSurface (This.twoImages (1));
   end Initialize;

   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryHTMLImageRotationAnimation_Access is
      This : constant AllBinaryHTMLImageRotationAnimation_Access := new AllBinaryHTMLImageRotationAnimation;
   begin
      AllBinaryHTMLImageRotationAnimation_Package.Initialize (This.all, originalImage_Param, image_Param, angleInfo_Param, totalAngle, animationBehavior_Param);
      return This;
   end Create;

   function getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image_Param : access Image_Package.Image'Class) return Canvas_Access is
      image : constant Image_Access := Image_Access (image_Param);
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

   procedure setBasicColorP (This : in out AllBinaryHTMLImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      changed : Boolean;
   begin
        changed := False;
        if ((AllBinaryHTMLImageRotationAnimation'Class (This).getBasicColorP) = (null)) or else ((AllBinaryHTMLImageRotationAnimation'Class (This).getBasicColorP.intValue) /= (basicColor.intValue)) then
            changed := True;
        end if;
        ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
        if changed then
            AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
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
            AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
        end if;
   end setAlpha;

   procedure nextRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).nextRotation;
        AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation (This).previousRotation;
        AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
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
        AllBinaryHTMLImageRotationAnimation'Class (This).swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryHTMLImageRotationAnimation; index : Integer) is
   begin
        ImageBaseRotationAnimation (This).setFrame (index);
        AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
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

   procedure paintXY (This : in out AllBinaryHTMLImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
   begin
        graphics.drawImage (This.imageToShow, x, y, This.anchor);
   end paintXY;

   procedure getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image_Param : access Image_Package.Image'Class) is
      Java_Result : constant Canvas_Access := AllBinaryHTMLImageRotationAnimation'Class (This).getCanvasSurface (image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCanvasSurface;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;


