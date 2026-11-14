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
limited with org.allbinary.animation.image.ImageBaseRotationAnimation_Package;
package org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References is
   type ImageBaseRotationAnimation_Access is access all org.allbinary.animation.image.ImageBaseRotationAnimation_Package.ImageBaseRotationAnimation'Class;
   type ImageBaseRotationAnimation_Access_Array is array (Natural range <>) of ImageBaseRotationAnimation_Access;
   type ImageBaseRotationAnimation_Access_Array_Access is access all ImageBaseRotationAnimation_Access_Array;
   type ImageBaseRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of ImageBaseRotationAnimation_Access_Array_Access;
   type ImageBaseRotationAnimation_Access_Array_Access_Array_Access is access all ImageBaseRotationAnimation_Access_Array_Access_Array;
   type ImageBaseRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageBaseRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageBaseRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageBaseRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageBaseRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageBaseRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in ImageBaseRotationAnimation_Access_Array_Object'Class then ImageBaseRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type ImageBaseRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageBaseRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageBaseRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageBaseRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageBaseRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageBaseRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageBaseRotationAnimation_Access_Array_Access_Array_Object'Class then ImageBaseRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References;

with org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References;
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

package org.allbinary.animation.image.ImageBaseRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package RotationAnimation_Package renames Standard.org.allbinary.animation.RotationAnimation_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageBaseRotationAnimation_Access is org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.ImageBaseRotationAnimation_Access;
   function "=" (Left, Right : ImageBaseRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References."=";
   subtype ImageBaseRotationAnimation_Access_Array is org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.ImageBaseRotationAnimation_Access_Array;
   function "=" (Left, Right : ImageBaseRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References."=";
   subtype ImageBaseRotationAnimation_Access_Array_Access is org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.ImageBaseRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : ImageBaseRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : ImageBaseRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_ImageBaseRotationAnimation_Access_Array (Value : access Java_Object'Class) return ImageBaseRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.Java_Unbox_ImageBaseRotationAnimation_Access_Array;
   subtype ImageBaseRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.ImageBaseRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : ImageBaseRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References."=";
   subtype ImageBaseRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.ImageBaseRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageBaseRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References."=";
   function Java_Box (Value : ImageBaseRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_ImageBaseRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageBaseRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageBaseRotationAnimation_Package_References.Java_Unbox_ImageBaseRotationAnimation_Access_Array_Access_Array;

   type ImageBaseRotationAnimation is new RotationAnimation with record
      image : Image_Access;
      anchor : Integer;
   end record;

   procedure Initialize (This : in out ImageBaseRotationAnimation'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageBaseRotationAnimation_Access;
   function getAnimationSize (This : in out ImageBaseRotationAnimation) return Integer;
   procedure setSequence (This : in out ImageBaseRotationAnimation; sequence : Integer_Array_Access);
   function getSequence (This : in out ImageBaseRotationAnimation) return Integer_Array_Access;
   procedure paintXY (This : in out ImageBaseRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);
   function getImage (This : in out ImageBaseRotationAnimation) return Image_Access;
   function getWidth (This : in out ImageBaseRotationAnimation) return Integer;
   function getHeight (This : in out ImageBaseRotationAnimation) return Integer;
   procedure close (This : in out ImageBaseRotationAnimation);
   procedure finalize (This : in out ImageBaseRotationAnimation);

end org.allbinary.animation.image.ImageBaseRotationAnimation_Package;


