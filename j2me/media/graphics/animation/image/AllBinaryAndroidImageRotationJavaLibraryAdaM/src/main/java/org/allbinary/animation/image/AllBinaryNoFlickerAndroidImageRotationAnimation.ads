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

with AllBinary_Java;
limited with org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package;
package org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References is
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access is access all org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package.AllBinaryNoFlickerAndroidImageRotationAnimation'Class;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryNoFlickerAndroidImageRotationAnimation_Access;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access is access all AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access is access all AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array;
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Object'Class then AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Object'Class then AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References;

with org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.graphics.Matrix_Package;
with android.graphics.Matrix_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
limited with org.allbinary.media.image.AndroidImageUtil_Package;
with org.allbinary.media.image.AndroidImageUtil_Package_References;
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;
with org.allbinary.animation.image.ImageBaseRotationAnimation_Package; use org.allbinary.animation.image.ImageBaseRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package is

   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
   package AndroidImageUtil_Package renames Standard.org.allbinary.media.image.AndroidImageUtil_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
   package Reference_Types is
   subtype Matrix_Access is android.graphics.Matrix_Package_References.Matrix_Access;
   use type Matrix_Access;
   subtype Matrix_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array;
   use type Matrix_Access_Array;
   subtype Matrix_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access;
   use type Matrix_Access_Array_Access;
   subtype Matrix_Access_Array_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array;
   use type Matrix_Access_Array_Access_Array;
   subtype Matrix_Access_Array_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array_Access;
   use type Matrix_Access_Array_Access_Array_Access;
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
   subtype AndroidImageUtil_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access;
   use type AndroidImageUtil_Access;
   subtype AndroidImageUtil_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array;
   use type AndroidImageUtil_Access_Array;
   subtype AndroidImageUtil_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access;
   use type AndroidImageUtil_Access_Array_Access;
   subtype AndroidImageUtil_Access_Array_Access_Array is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array;
   use type AndroidImageUtil_Access_Array_Access_Array;
   subtype AndroidImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.AndroidImageUtil_Package_References.AndroidImageUtil_Access_Array_Access_Array_Access;
   use type AndroidImageUtil_Access_Array_Access_Array_Access;
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
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryNoFlickerAndroidImageRotationAnimation_Access is org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.AllBinaryNoFlickerAndroidImageRotationAnimation_Access;
   function "=" (Left, Right : AllBinaryNoFlickerAndroidImageRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array is org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access is org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array (Value : access Java_Object'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array;
   subtype AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package_References.Java_Unbox_AllBinaryNoFlickerAndroidImageRotationAnimation_Access_Array_Access_Array;

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

   procedure Initialize (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryNoFlickerAndroidImageRotationAnimation_Access;
   procedure setBasicColorP (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeBasicColor (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure previousRotation (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure updateImage (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure setFrame (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; index : Integer);
   procedure swap (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation);
   procedure paintXY (This : in out AllBinaryNoFlickerAndroidImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryNoFlickerAndroidImageRotationAnimation_Package;


