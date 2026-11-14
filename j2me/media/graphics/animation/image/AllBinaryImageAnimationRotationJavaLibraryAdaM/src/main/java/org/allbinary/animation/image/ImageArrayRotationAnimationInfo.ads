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
limited with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;
package org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References is
   type ImageArrayRotationAnimationInfo_Access is access all org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package.ImageArrayRotationAnimationInfo'Class;
   type ImageArrayRotationAnimationInfo_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationInfo_Access;
   type ImageArrayRotationAnimationInfo_Access_Array_Access is access all ImageArrayRotationAnimationInfo_Access_Array;
   type ImageArrayRotationAnimationInfo_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationInfo_Access_Array_Access;
   type ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access is access all ImageArrayRotationAnimationInfo_Access_Array_Access_Array;
   type ImageArrayRotationAnimationInfo_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationAnimationInfo_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationAnimationInfo_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationAnimationInfo_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationAnimationInfo_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationAnimationInfo_Access_Array_Object'Class then ImageArrayRotationAnimationInfo_Access_Array_Object'Class (Value.all).Value else null);
   type ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Object'Class then ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References;

with org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;

package org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AngleInfo_Package renames Standard.org.allbinary.math.AngleInfo_Package;
   package Reference_Types is
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


   subtype ImageArrayRotationAnimationInfo_Access is org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.ImageArrayRotationAnimationInfo_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationInfo_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References."=";
   subtype ImageArrayRotationAnimationInfo_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.ImageArrayRotationAnimationInfo_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationInfo_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References."=";
   subtype ImageArrayRotationAnimationInfo_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.ImageArrayRotationAnimationInfo_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationInfo_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References."=";
   function Java_Box (Value : ImageArrayRotationAnimationInfo_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationAnimationInfo_Access_Array_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array;
   subtype ImageArrayRotationAnimationInfo_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.ImageArrayRotationAnimationInfo_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References."=";
   subtype ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References."=";
   function Java_Box (Value : ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationAnimationInfo_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package_References.Java_Unbox_ImageArrayRotationAnimationInfo_Access_Array_Access_Array;

   type ImageArrayRotationAnimationInfo is new Java_Object with record
      imageArray : Image_Access_Array_Access;
      angleIncrement : Integer;
      totalAngle : Integer;
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out ImageArrayRotationAnimationInfo'Class; imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer);
   function Create (imageArray : Image_Access_Array_Access; angleIncrement : Integer; totalAngle : Integer; dx : Integer; dy : Integer) return ImageArrayRotationAnimationInfo_Access;
   procedure setImageArray (This : in out ImageArrayRotationAnimationInfo; imageArray : Image_Access_Array_Access);
   function getImageArray (This : in out ImageArrayRotationAnimationInfo) return Image_Access_Array_Access;
   function getAngleInfoP (This : in out ImageArrayRotationAnimationInfo) return AngleInfo_Access;
   procedure setTotalAngle (This : in out ImageArrayRotationAnimationInfo; totalAngle : Integer);
   function getTotalAngle (This : in out ImageArrayRotationAnimationInfo) return Integer;
   procedure setDx (This : in out ImageArrayRotationAnimationInfo; dx : Integer);
   function getDx (This : in out ImageArrayRotationAnimationInfo) return Integer;
   procedure setDy (This : in out ImageArrayRotationAnimationInfo; dy : Integer);
   function getDy (This : in out ImageArrayRotationAnimationInfo) return Integer;

end org.allbinary.animation.image.ImageArrayRotationAnimationInfo_Package;


