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

limited with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;
package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References is
   type AllBinaryJ2SEImageRotationAnimation_Access is access all org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package.AllBinaryJ2SEImageRotationAnimation'Class;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimation_Access;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimation_Access_Array;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinaryJ2SEImageRotationAnimation_Access_Array_Access;
   type AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array_Access is access all AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array;
end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References;

with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
limited with org.allbinary.media.image.ImageRotationUtil_Package;
with org.allbinary.media.image.ImageRotationUtil_Package_References;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;
limited with org.allbinary.animation.image.ModifierBaseProcessor_Package;
with org.allbinary.animation.image.ModifierBaseProcessor_Package_References;
limited with org.allbinary.animation.image.ScaleBaseProcessor_Package;
with org.allbinary.animation.image.ScaleBaseProcessor_Package_References;

package org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
   package ImageRotationUtil_Package renames Standard.org.allbinary.media.image.ImageRotationUtil_Package;
   package Reference_Types is
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   use type Graphics_Access;
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   use type Graphics_Access_Array;
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   use type Graphics_Access_Array_Access;
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   use type Graphics_Access_Array_Access_Array;
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   use type Graphics_Access_Array_Access_Array_Access;
   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
   subtype AnimationBehavior_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access;
   use type AnimationBehavior_Access;
   subtype AnimationBehavior_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array;
   use type AnimationBehavior_Access_Array;
   subtype AnimationBehavior_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access;
   subtype AnimationBehavior_Access_Array_Access_Array is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array;
   use type AnimationBehavior_Access_Array_Access_Array;
   subtype AnimationBehavior_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehavior_Package_References.AnimationBehavior_Access_Array_Access_Array_Access;
   use type AnimationBehavior_Access_Array_Access_Array_Access;
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   subtype AngleInfo_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access;
   use type AngleInfo_Access;
   subtype AngleInfo_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array;
   use type AngleInfo_Access_Array;
   subtype AngleInfo_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access;
   use type AngleInfo_Access_Array_Access;
   subtype AngleInfo_Access_Array_Access_Array is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array;
   use type AngleInfo_Access_Array_Access_Array;
   subtype AngleInfo_Access_Array_Access_Array_Access is org.allbinary.math.AngleInfo_Package_References.AngleInfo_Access_Array_Access_Array_Access;
   use type AngleInfo_Access_Array_Access_Array_Access;
   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   use type ImageModifierUtil_Access;
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   use type ImageModifierUtil_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access;
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   use type ImageModifierUtil_Access_Array_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   use type ImageModifierUtil_Access_Array_Access_Array_Access;
   subtype ImageRotationUtil_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access;
   use type ImageRotationUtil_Access;
   subtype ImageRotationUtil_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array;
   use type ImageRotationUtil_Access_Array;
   subtype ImageRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access;
   use type ImageRotationUtil_Access_Array_Access;
   subtype ImageRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array;
   use type ImageRotationUtil_Access_Array_Access_Array;
   subtype ImageRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array_Access;
   use type ImageRotationUtil_Access_Array_Access_Array_Access;
   subtype ModifierBaseProcessor_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access;
   use type ModifierBaseProcessor_Access;
   subtype ModifierBaseProcessor_Access_Array is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array;
   use type ModifierBaseProcessor_Access_Array;
   subtype ModifierBaseProcessor_Access_Array_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access;
   use type ModifierBaseProcessor_Access_Array_Access;
   subtype ModifierBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access_Array;
   use type ModifierBaseProcessor_Access_Array_Access_Array;
   subtype ModifierBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ModifierBaseProcessor_Package_References.ModifierBaseProcessor_Access_Array_Access_Array_Access;
   use type ModifierBaseProcessor_Access_Array_Access_Array_Access;
   subtype ScaleBaseProcessor_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access;
   use type ScaleBaseProcessor_Access;
   subtype ScaleBaseProcessor_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array;
   use type ScaleBaseProcessor_Access_Array;
   subtype ScaleBaseProcessor_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access;
   use type ScaleBaseProcessor_Access_Array_Access;
   subtype ScaleBaseProcessor_Access_Array_Access_Array is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array;
   use type ScaleBaseProcessor_Access_Array_Access_Array;
   subtype ScaleBaseProcessor_Access_Array_Access_Array_Access is org.allbinary.animation.image.ScaleBaseProcessor_Package_References.ScaleBaseProcessor_Access_Array_Access_Array_Access;
   use type ScaleBaseProcessor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryJ2SEImageRotationAnimation_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References.AllBinaryJ2SEImageRotationAnimation_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimation_Access_Array is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References.AllBinaryJ2SEImageRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimation_Access_Array_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References.AllBinaryJ2SEImageRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References.AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References.AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryJ2SEImageRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package_References."=";

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

   procedure Initialize (This : in out AllBinaryJ2SEImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryJ2SEImageRotationAnimation_Access;
   procedure setBasicColorP (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeBasicColor (This : in out AllBinaryJ2SEImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out AllBinaryJ2SEImageRotationAnimation; alpha : Integer);
   procedure setScale (This : in out AllBinaryJ2SEImageRotationAnimation; scaleX : Float; scaleY : Float);
   procedure setMaxScale (This : in out AllBinaryJ2SEImageRotationAnimation; maxScaleX : Float; maxScaleY : Float);
   procedure nextRotation (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryJ2SEImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryJ2SEImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure close (This : in out AllBinaryJ2SEImageRotationAnimation);
   procedure finalize (This : in out AllBinaryJ2SEImageRotationAnimation);

end org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;


