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
limited with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;
package org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References is
   type ImageArrayRotationAnimationCacheable_Access is access all org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package.ImageArrayRotationAnimationCacheable'Class;
   type ImageArrayRotationAnimationCacheable_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationCacheable_Access;
   type ImageArrayRotationAnimationCacheable_Access_Array_Access is access all ImageArrayRotationAnimationCacheable_Access_Array;
   type ImageArrayRotationAnimationCacheable_Access_Array_Access_Array is array (Natural range <>) of ImageArrayRotationAnimationCacheable_Access_Array_Access;
   type ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access is access all ImageArrayRotationAnimationCacheable_Access_Array_Access_Array;
   type ImageArrayRotationAnimationCacheable_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationAnimationCacheable_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationAnimationCacheable_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationAnimationCacheable_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationAnimationCacheable_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationAnimationCacheable_Access_Array_Object'Class then ImageArrayRotationAnimationCacheable_Access_Array_Object'Class (Value.all).Value else null);
   type ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Object'Class then ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References;

with org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.AnimationBehavior_Package_References;
with org.allbinary.logic.util.cache.CacheableInterface_Package; use org.allbinary.logic.util.cache.CacheableInterface_Package;
with org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package; use org.allbinary.animation.image.AdjustedImageArrayRotationAnimation_Package;

package org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package is

   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package CacheableInterface_Package renames Standard.org.allbinary.logic.util.cache.CacheableInterface_Package;
   package Reference_Types is
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageArrayRotationAnimationCacheable_Access is org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.ImageArrayRotationAnimationCacheable_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationCacheable_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References."=";
   subtype ImageArrayRotationAnimationCacheable_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.ImageArrayRotationAnimationCacheable_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationCacheable_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References."=";
   subtype ImageArrayRotationAnimationCacheable_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.ImageArrayRotationAnimationCacheable_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationCacheable_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References."=";
   function Java_Box (Value : ImageArrayRotationAnimationCacheable_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationAnimationCacheable_Access_Array_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array;
   subtype ImageArrayRotationAnimationCacheable_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.ImageArrayRotationAnimationCacheable_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayRotationAnimationCacheable_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References."=";
   subtype ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References."=";
   function Java_Box (Value : ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.Java_Box;
   function Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageArrayRotationAnimationCacheable_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package_References.Java_Unbox_ImageArrayRotationAnimationCacheable_Access_Array_Access_Array;

   type ImageArrayRotationAnimationCacheable is new AdjustedImageArrayRotationAnimation and CacheableInterface with null record;

   procedure Initialize (This : in out ImageArrayRotationAnimationCacheable'Class; anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class);
   function Create (anyType_Param : access Java_Object'Class; animationBehavior_Param : access AnimationBehavior_Package.AnimationBehavior'Class) return ImageArrayRotationAnimationCacheable_Access;
   function getKey (This : in out ImageArrayRotationAnimationCacheable) return Java_Object_Access;
   function toString (This : in out ImageArrayRotationAnimationCacheable) return Unbounded_String;

end org.allbinary.animation.image.ImageArrayRotationAnimationCacheable_Package;


