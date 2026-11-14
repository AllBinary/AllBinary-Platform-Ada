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
limited with org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package;
package org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References is
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access is access all org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package.AllBinaryAdjustedAndroidImageRotationAnimation'Class;
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedAndroidImageRotationAnimation_Access;
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array;
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access;
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access is access all AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array;
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Object'Class then AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Object'Class then AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References;

with org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References;
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
limited with org.allbinary.math.AngleInfo_Package;
with org.allbinary.math.AngleInfo_Package_References;
with org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryFlickerAndroidImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
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


   subtype AllBinaryAdjustedAndroidImageRotationAnimation_Access is org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.AllBinaryAdjustedAndroidImageRotationAnimation_Access;
   function "=" (Left, Right : AllBinaryAdjustedAndroidImageRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array is org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access is org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array;
   subtype AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedAndroidImageRotationAnimation_Access_Array_Access_Array;

   type AllBinaryAdjustedAndroidImageRotationAnimation is new AllBinaryFlickerAndroidImageRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedAndroidImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedAndroidImageRotationAnimation_Access;
   procedure init (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dx : Integer; dy : Integer);
   procedure setDx (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dx : Integer);
   function getDx (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) return Integer;
   procedure setDy (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; dy : Integer);
   function getDy (This : in out AllBinaryAdjustedAndroidImageRotationAnimation) return Integer;
   procedure paintXY (This : in out AllBinaryAdjustedAndroidImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryAdjustedAndroidImageRotationAnimation_Package;


