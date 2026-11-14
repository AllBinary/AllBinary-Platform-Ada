-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package;
package org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References is
   type AllBinaryPlatformImageRotationAnimationFactory_Access is access all org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package.AllBinaryPlatformImageRotationAnimationFactory'Class;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array is array (Natural range <>) of AllBinaryPlatformImageRotationAnimationFactory_Access;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access is access all AllBinaryPlatformImageRotationAnimationFactory_Access_Array;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array;
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Object'Class then AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Object'Class then AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References;

with org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References;
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
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package; use org.allbinary.animation.image.AllBinaryAndroidImageRotationAnimationFactory_Package;

package org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
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
   subtype AnimationBehaviorFactory_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access;
   use type AnimationBehaviorFactory_Access;
   subtype AnimationBehaviorFactory_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array;
   use type AnimationBehaviorFactory_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array;
   use type AnimationBehaviorFactory_Access_Array_Access_Array;
   subtype AnimationBehaviorFactory_Access_Array_Access_Array_Access is org.allbinary.animation.AnimationBehaviorFactory_Package_References.AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   use type AnimationBehaviorFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AllBinaryPlatformImageRotationAnimationFactory_Access is org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.AllBinaryPlatformImageRotationAnimationFactory_Access;
   function "=" (Left, Right : AllBinaryPlatformImageRotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryPlatformImageRotationAnimationFactory_Access_Array is org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.AllBinaryPlatformImageRotationAnimationFactory_Access_Array;
   function "=" (Left, Right : AllBinaryPlatformImageRotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array (Value : access Java_Object'Class) return AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array;
   subtype AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References."=";
   subtype AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package_References.Java_Unbox_AllBinaryPlatformImageRotationAnimationFactory_Access_Array_Access_Array;

   type AllBinaryPlatformImageRotationAnimationFactory is new AllBinaryAndroidImageRotationAnimationFactory with null record;

   procedure Initialize (This : in out AllBinaryPlatformImageRotationAnimationFactory'Class; image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean);
   function Create (image_Param : access Image_Package.Image'Class; width : Integer; height : Integer; angleIncrement : Short_Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class; resizeCanvasForRotation : Boolean) return AllBinaryPlatformImageRotationAnimationFactory_Access;

end org.allbinary.animation.image.AllBinaryPlatformImageRotationAnimationFactory_Package;


