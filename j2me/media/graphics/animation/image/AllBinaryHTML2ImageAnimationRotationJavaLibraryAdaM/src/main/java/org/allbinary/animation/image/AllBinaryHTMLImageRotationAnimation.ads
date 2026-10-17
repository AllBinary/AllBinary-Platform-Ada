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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package; use org.allbinary.media.image.ImageRotationUtil_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.core.PlayN_Package; use playn.core.PlayN_Package;
with playn.html.HtmlGraphics_Package; use playn.html.HtmlGraphics_Package;
with playn.html.HtmlImage_Package; use playn.html.HtmlImage_Package;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;
with org.allbinary.animation.image.AlphaBaseProcessor_Package; use org.allbinary.animation.image.AlphaBaseProcessor_Package;
with org.allbinary.animation.image.AlphaProcessor_Package; use org.allbinary.animation.image.AlphaProcessor_Package;

package org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
   package ImageRotationUtil_Package renames Standard.org.allbinary.media.image.ImageRotationUtil_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   package PlayN_Package renames Standard.playn.core.PlayN_Package;
   package HtmlGraphics_Package renames Standard.playn.html.HtmlGraphics_Package;
   package HtmlImage_Package renames Standard.playn.html.HtmlImage_Package;

   type AllBinaryHTMLImageRotationAnimation is tagged;
   type AllBinaryHTMLImageRotationAnimation_Access is access all AllBinaryHTMLImageRotationAnimation'Class;
   type AllBinaryHTMLImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryHTMLImageRotationAnimation_Access;
   type AllBinaryHTMLImageRotationAnimation_Access_Array_Access is access all AllBinaryHTMLImageRotationAnimation_Access_Array;

   type AllBinaryHTMLImageRotationAnimation is new ImageBaseRotationAnimation with record
      imageRotationUtil : ImageRotationUtil_Access;
      imageModifierUtil : ImageModifierUtil_Access;
      originalImage : Image_Access;
      twoImages : Image_Access_Array_Access;
      canvasSurfaceArray : Canvas_Access_Array_Access;
      imageToShow : Image_Access;
      bufferedImageIndex : Integer;
      alphaProcessor : AlphaBaseProcessor_Access;
   end record;

   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access);
   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryHTMLImageRotationAnimation_Access;
   function getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image : Image_Access) return Canvas_Access;
   procedure getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image : Image_Access);
   procedure setBasicColorP (This : in out AllBinaryHTMLImageRotationAnimation; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out AllBinaryHTMLImageRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryHTMLImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryHTMLImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;


