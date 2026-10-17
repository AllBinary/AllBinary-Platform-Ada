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
with android.graphics.Matrix_Package; use android.graphics.Matrix_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.media.image.AndroidImageUtil_Package; use org.allbinary.media.image.AndroidImageUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package is

   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AndroidImageUtil_Package renames Standard.org.allbinary.media.image.AndroidImageUtil_Package;
   package ImageCopyUtil_Package renames Standard.org.allbinary.media.image.ImageCopyUtil_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type AllBinaryNoFlickerAndroidImageRotationAnimation is tagged;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access is access all AllBinaryNoFlickerAndroidImageRotationAnimation'Class;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryNoFlickerAndroidImageRotationAnimation_Access;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access is access all AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array;

   type AllBinaryNoFlickerAndroidImageRotationAnimation is new ImageBaseRotationAnimation with record
      imageModifierUtil : ImageModifierUtil_Access;
      androidImageUtil : AndroidImageUtil_Access;
      matrix : Matrix_Access;
      halfWidth : Integer;
      halfHeight : Integer;
      increment : Short_Integer;
      originalImage : Image_Access;
      twoImages : Image_Access_Array_Access;
      imageToShow : Image_Access;
      bufferedImageIndex : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation'Class; originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior'Class);
   function Create (originalImage_Param : access Image'Class; image_Param : access Image'Class; angleInfo_Param : access AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access;
   procedure setBasicColorP (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor'Class);
   procedure changeBasicColor (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor'Class);
   procedure setAlpha (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; graphics_Param : access Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package;


