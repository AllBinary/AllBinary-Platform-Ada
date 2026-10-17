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
--  with javax.microedition.lcdui.NullImage_Package; use javax.microedition.lcdui.NullImage_Package;
with org.allbinary.DisposalUtil_Package; use org.allbinary.DisposalUtil_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.math.AngleInfo_Package; use org.allbinary.math.AngleInfo_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package; use org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package; use org.allbinary.media.image.ImageRotationUtil_Package;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package is

   package DisposalUtil_Package renames org.allbinary.DisposalUtil_Package;
   package AnimationBehavior_Package renames org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames org.allbinary.graphics.color.BasicColor_Package;
   package AngleInfo_Package renames org.allbinary.math.AngleInfo_Package;
   package ImageCopyUtil_Package renames org.allbinary.media.image.ImageCopyUtil_Package;
   package ImageModifierUtil_Package renames org.allbinary.media.image.ImageModifierUtil_Package;
   package ImageRotationUtil_Package renames org.allbinary.media.image.ImageRotationUtil_Package;

   type AllBinaryJ2SEImageRotationAnimation is tagged;
   type AllBinaryJ2SEImageRotationAnimation_Access is access all AllBinaryJ2SEImageRotationAnimation'Class;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimation_Access;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimation_Access_Array;

   type AllBinaryJ2SEImageRotationAnimation is new ImageBaseRotationAnimation with record
      imageRotationUtil : ImageRotationUtil_Access;
      imageModifierUtil : ImageModifierUtil_Access;
      realOriginalImage : Image_Access;
      originalImageArray : Image_Access_Array_Access;
      twoImages : Image_Access_Array_Access;
      imageToShow : Image_Access;
      bufferedImageIndex : Integer;
      lastScaleX : Float;
      lastScaleY : Float;
      scaleX : Float;
      scaleY : Float;
      maxScaleX : Float;
      maxScaleY : Float;
      alphaProcessor : ModifierBaseProcessor_Access;
      setColorProcessor : ModifierBaseProcessor_Access;
      changeColorProcessor : ModifierBaseProcessor_Access;
      scaleProcessor : ScaleBaseProcessor_Access;
   end record;

   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimation'Class; originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access);
   function Create (originalImage : Image_Access; image : Image_Access; angleInfo : AngleInfo_Access; totalAngle : Short_Integer; animationBehavior : AnimationBehavior_Access) return AllBinaryJ2SEImageRotationAnimation_Access;
   procedure setBasicColorP (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor : BasicColor_Access);
   procedure changeBasicColor (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor : BasicColor_Access);
   procedure setAlpha (This : in out AllBinaryJ2SEImageRotationAnimation; alpha : Integer);
   procedure setScale (This : in out AllBinaryJ2SEImageRotationAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out AllBinaryJ2SEImageRotationAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure nextRotation (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryJ2SEImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryJ2SEImageRotationAnimation; graphics : Graphics_Access; x : Integer; y : Integer);
   procedure close (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure finalize (This : in out AllBinaryJ2SEImageRotationAnimation);

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;


