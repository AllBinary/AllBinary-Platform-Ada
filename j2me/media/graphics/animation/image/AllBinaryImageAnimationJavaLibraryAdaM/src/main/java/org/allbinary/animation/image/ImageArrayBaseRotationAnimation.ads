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
limited with org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;
package org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References is
   type ImageArrayBaseRotationAnimation_Access is access all org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package.ImageArrayBaseRotationAnimation'Class;
   type ImageArrayBaseRotationAnimation_Access_Array is array (Natural range <>) of ImageArrayBaseRotationAnimation_Access;
   type ImageArrayBaseRotationAnimation_Access_Array_Access is access all ImageArrayBaseRotationAnimation_Access_Array;
   type ImageArrayBaseRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageArrayBaseRotationAnimation_Access_Array_Access;
   type ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access is access all ImageArrayBaseRotationAnimation_Access_Array_Access_Array;
   type ImageArrayBaseRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayBaseRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayBaseRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayBaseRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayBaseRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayBaseRotationAnimation_Access_Array_Object'Class then ImageArrayBaseRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Object'Class then ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References;

with org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References;
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
with org.allbinary.animation.RotationAnimation_Package; use org.allbinary.animation.RotationAnimation_Package;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
limited with org.allbinary.media.image.ImageModifierUtil_Package;
with org.allbinary.media.image.ImageModifierUtil_Package_References;

package org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package ImageModifierUtil_Package renames Standard.org.allbinary.media.image.ImageModifierUtil_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageArrayBaseRotationAnimation_Access is org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.ImageArrayBaseRotationAnimation_Access;
   function "=" (Left, Right : ImageArrayBaseRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References."=";
   subtype ImageArrayBaseRotationAnimation_Access_Array is org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.ImageArrayBaseRotationAnimation_Access_Array;
   function "=" (Left, Right : ImageArrayBaseRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References."=";
   subtype ImageArrayBaseRotationAnimation_Access_Array_Access is org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.ImageArrayBaseRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : ImageArrayBaseRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : ImageArrayBaseRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array (Value : access Java_Object'Class) return ImageArrayBaseRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array;
   subtype ImageArrayBaseRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.ImageArrayBaseRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayBaseRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References."=";
   subtype ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageArrayBaseRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package_References.Java_Unbox_ImageArrayBaseRotationAnimation_Access_Array_Access_Array;

   type ImageArrayBaseRotationAnimation is new RotationAnimation with record
      imageModifierUtil : ImageModifierUtil_Access;
      originalImageArray : Image_Access_Array_Access;
      imageArray : Image_Access_Array_Access;
      currentImage : Image_Access;
      totalFrames : Integer;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayBaseRotationAnimation'Class; originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImageArray : Image_Access_Array_Access; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayBaseRotationAnimation_Access;
   function getAnimationSize (This : in out ImageArrayBaseRotationAnimation) return Integer;
   procedure setAlpha (This : in out ImageArrayBaseRotationAnimation; alpha : Integer);
   procedure nextRotation (This : in out ImageArrayBaseRotationAnimation);
   procedure previousRotation (This : in out ImageArrayBaseRotationAnimation);
   procedure setFrame (This : in out ImageArrayBaseRotationAnimation; index2 : Integer);
   procedure setSequence (This : in out ImageArrayBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageArrayBaseRotationAnimation) return Integer_Array_Access;
   procedure setImageArray (This : in out ImageArrayBaseRotationAnimation; imageArray : Image_Access_Array_Access);
   procedure paintXY (This : in out ImageArrayBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   procedure close (This : in out ImageArrayBaseRotationAnimation);
   procedure finalize (This : in out ImageArrayBaseRotationAnimation);

end org.allbinary.animation.image.ImageArrayBaseRotationAnimation_Package;


