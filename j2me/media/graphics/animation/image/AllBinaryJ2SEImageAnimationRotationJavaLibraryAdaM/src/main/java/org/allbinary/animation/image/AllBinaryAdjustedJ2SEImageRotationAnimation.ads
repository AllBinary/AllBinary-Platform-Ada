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
limited with org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package;
package org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References is
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access is access all org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package.AllBinaryAdjustedJ2SEImageRotationAnimation'Class;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array is array (Natural range <>) of AllBinaryAdjustedJ2SEImageRotationAnimation_Access;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access is access all AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array is array (Natural range <>) of AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access is access all AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array;
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Object'Class then AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Object'Class then AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References;

with org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References;
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
with org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package; use org.allbinary.animation.image.AllBinaryJ2SEImageRotationAnimation_Package;

package org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package is

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


   subtype AllBinaryAdjustedJ2SEImageRotationAnimation_Access is org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.AllBinaryAdjustedJ2SEImageRotationAnimation_Access;
   function "=" (Left, Right : AllBinaryAdjustedJ2SEImageRotationAnimation_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array is org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access is org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array;
   subtype AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References."=";
   subtype AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References."=";
   function Java_Box (Value : AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.Java_Box;
   function Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package_References.Java_Unbox_AllBinaryAdjustedJ2SEImageRotationAnimation_Access_Array_Access_Array;

   type AllBinaryAdjustedJ2SEImageRotationAnimation is new AllBinaryJ2SEImageRotationAnimation with record
      dx : Integer;
      dy : Integer;
   end record;

   procedure Initialize (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation'Class; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; angleInfo_Param : access AngleInfo_Package.AngleInfo'Class; totalAngle : Short_Integer; dx : Integer; dy : Integer; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return AllBinaryAdjustedJ2SEImageRotationAnimation_Access;
   procedure init (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer; dy : Integer);
   procedure setDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dx : Integer);
   function getDx (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer;
   procedure setDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; dy : Integer);
   function getDy (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation) return Integer;
   procedure paintXY (This : in out AllBinaryAdjustedJ2SEImageRotationAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.animation.image.AllBinaryAdjustedJ2SEImageRotationAnimation_Package;


