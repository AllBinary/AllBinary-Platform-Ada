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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package; use org.allbinary.media.image.ImageRotationUtil_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.CanvasImage_Package; use playn.core.CanvasImage_Package;
with playn.core.CanvasSurface_Package; use playn.core.CanvasSurface_Package;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;
with org.allbinary.animation.image.AlphaBaseProcessor_Package; use org.allbinary.animation.image.AlphaBaseProcessor_Package;
with org.allbinary.animation.image.AlphaProcessor_Package; use org.allbinary.animation.image.AlphaProcessor_Package;

package org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
   package ImageRotationUtil_Package renames Standard.org.allbinary.media.image.ImageRotationUtil_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package CanvasImage_Package renames Standard.playn.core.CanvasImage_Package;
   package CanvasSurface_Package renames Standard.playn.core.CanvasSurface_Package;

   type AllBinaryHTMLImageRotationAnimation is tagged;
   type AllBinaryHTMLImageRotationAnimation_Access is access all AllBinaryHTMLImageRotationAnimation'Class;
   type AllBinaryHTMLImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryHTMLImageRotationAnimation_Access;
   type AllBinaryHTMLImageRotationAnimation_Access_Array_Access is access all AllBinaryHTMLImageRotationAnimation_Access_Array;

   type AllBinaryHTMLImageRotationAnimation is new ImageBaseRotationAnimation with record
      imageRotationUtil : ImageRotationUtil_Access;
      imageModifierUtil : ImageModifierUtil_Access;
      originalImage : Image_Access;
      twoImages : Image_Access_Array_Access;
      canvasSurfaceArray : CanvasSurface_Access_Array_Access;
      imageToShow : Image_Access;
      bufferedImageIndex : Integer;
      alphaProcessor : AlphaBaseProcessor_Access;
   end record;

   procedure Initialize (This : in out AllBinaryHTMLImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryHTMLImageRotationAnimation_Access;
   function getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image_Param : access Image_Package.Image'Class) return CanvasSurface_Access;
   procedure getCanvasSurface (This : in out AllBinaryHTMLImageRotationAnimation; image_Param : access Image_Package.Image'Class);
   procedure setBasicColorP (This : in out AllBinaryHTMLImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out AllBinaryHTMLImageRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryHTMLImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryHTMLImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryHTMLImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryHTMLImageRotationAnimation_Package;


