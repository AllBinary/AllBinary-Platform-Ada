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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
with org.allbinary.media.image.ImageRotationUtil_Package; use org.allbinary.media.image.ImageRotationUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package_References;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.Canvas_Package_References;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with playn.html.HtmlGraphics_Package; use playn.html.HtmlGraphics_Package;
with playn.html.HtmlImage_Package; use playn.html.HtmlImage_Package;
with org.allbinary.animation.image.AlphaBaseProcessor_Package; use org.allbinary.animation.image.AlphaBaseProcessor_Package;
with org.allbinary.animation.image.AlphaBaseProcessor_Package_References;
with org.allbinary.animation.image.AlphaProcessor_Package; use org.allbinary.animation.image.AlphaProcessor_Package;
with org.allbinary.animation.image.AlphaBaseProcessor_Package;
with org.allbinary.animation.image.AlphaProcessor_Package;
with org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleIncrementInfo_Package;
with org.allbinary.animation.Animation_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.util.CircularIndexUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.direction.Direction_Package;
with org.allbinary.direction.DirectionUtil_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.math.FrameUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.animation.RotationAnimation_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package is

   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;
   package HtmlGraphics_Package renames Standard.playn.html.HtmlGraphics_Package;
   package HtmlImage_Package renames Standard.playn.html.HtmlImage_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
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
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   function "=" (Left, Right : AnimationBehavior_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AnimationBehavior_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.AnimationBehavior_Package_References."=";
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   function "=" (Left, Right : AngleInfo_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AngleInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.AngleInfo_Package_References."=";
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
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageRotationUtil_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access;
   function "=" (Left, Right : ImageRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype Canvas_Access is playn.core.Canvas_Package_References.Canvas_Access;
   function "=" (Left, Right : Canvas_Access) return Boolean renames playn.core.Canvas_Package_References."=";
   subtype Canvas_Access_Array is playn.core.Canvas_Package_References.Canvas_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array) return Boolean renames playn.core.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access is playn.core.Canvas_Package_References.Canvas_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access) return Boolean renames playn.core.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array is playn.core.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array) return Boolean renames playn.core.Canvas_Package_References."=";
   subtype Canvas_Access_Array_Access_Array_Access is playn.core.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Canvas_Access_Array_Access_Array_Access) return Boolean renames playn.core.Canvas_Package_References."=";
   subtype AlphaBaseProcessor_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
   subtype AlphaBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.AlphaBaseProcessor_Package_References.AlphaBaseProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlphaBaseProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AlphaBaseProcessor_Package_References."=";
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
      htmlGraphics : HtmlGraphics_Access;
      canvas : Canvas_Access;
   begin
        htmlImage := PlaynMutableImage_Access (image);
        canvasImage := ImageImpl_Access (htmlImage.getImage);
        playN := PlayN_Package.getInstance;
        htmlGraphics := HtmlGraphics_Access (playN.graphics);
        canvas := htmlGraphics.get (HtmlImage_Access (canvasImage));
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
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setBasicColorP (basicColor);
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
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setAlpha (alpha);
        if changed then
            This.alphaProcessor := AlphaBaseProcessor_Access (AlphaProcessor_Package.getInstance);
            AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
        end if;
   end setAlpha;

   procedure nextRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).nextRotation;
        AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
   end nextRotation;

   procedure previousRotation (This : in out AllBinaryHTMLImageRotationAnimation) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).previousRotation;
        AllBinaryHTMLImageRotationAnimation'Class (This).updateImage;
   end previousRotation;

   procedure updateImage (This : in out AllBinaryHTMLImageRotationAnimation) is
      canvasSurface : Canvas_Access;
   begin
        canvasSurface := This.canvasSurfaceArray (This.bufferedImageIndex);
        canvasSurface.save;
        This.imageRotationUtil.rotateImageCanvasSurfaceClear (This.originalImage, This.twoImages (This.bufferedImageIndex), canvasSurface, (Integer (This.angleInfo.getAngle)) + (90));
        This.alphaProcessor.setAlpha (This.imageModifierUtil, This.originalImage, This.twoImages (This.bufferedImageIndex), This.alphaP);
        This.imageRotationUtil.drawImage (This.originalImage, This.imageToShow, canvasSurface);
        canvasSurface.restore;
        AllBinaryHTMLImageRotationAnimation'Class (This).swap;
   end updateImage;

   procedure setFrame (This : in out AllBinaryHTMLImageRotationAnimation; index : Integer) is
   begin
        ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation (This).setFrame (index);
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
      Java_Result : constant Canvas_Access := AllBinaryHTMLImageRotationAnimation'Class (This).getCanvasSurface (image_Param => image_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCanvasSurface;

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;


