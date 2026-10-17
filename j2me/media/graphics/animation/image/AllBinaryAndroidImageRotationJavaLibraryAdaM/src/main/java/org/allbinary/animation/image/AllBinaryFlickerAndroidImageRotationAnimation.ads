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
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.AndroidImageUtil_Package; use org.allbinary.media.image.AndroidImageUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package is

   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package AndroidImageUtil_Package renames Standard.org.allbinary.media.image.AndroidImageUtil_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;

   type AllBinaryFlickerAndroidImageRotationAnimation is tagged;
   type AllBinaryFlickerAndroidImageRotationAnimation_Access is access all AllBinaryFlickerAndroidImageRotationAnimation'Class;
   type AllBinaryFlickerAndroidImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryFlickerAndroidImageRotationAnimation_Access;
   type AllBinaryFlickerAndroidImageRotationAnimation_Access_Array_Access is access all AllBinaryFlickerAndroidImageRotationAnimation_Access_Array;

   type AllBinaryFlickerAndroidImageRotationAnimation is new ImageBaseRotationAnimation with record
      imageModifierUtil : ImageModifierUtil_Access;
      androidImageUtil : AndroidImageUtil_Access;
      matrix : Matrix_Access;
      halfWidth : Integer;
      halfHeight : Integer;
      increment : Short_Integer;
      originalImage : Image_Access;
   end record;

   procedure Initialize (This : in out AllBinaryFlickerAndroidImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access);
   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryFlickerAndroidImageRotationAnimation_Access;
   procedure setBasicColorP (This : in out AllBinaryFlickerAndroidImageRotationAnimation; basicColor : BasicColor_Access);
   procedure changeBasicColor (This : in out AllBinaryFlickerAndroidImageRotationAnimation; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out AllBinaryFlickerAndroidImageRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out AllBinaryFlickerAndroidImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryFlickerAndroidImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryFlickerAndroidImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryFlickerAndroidImageRotationAnimation; index : Integer);

end org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;


