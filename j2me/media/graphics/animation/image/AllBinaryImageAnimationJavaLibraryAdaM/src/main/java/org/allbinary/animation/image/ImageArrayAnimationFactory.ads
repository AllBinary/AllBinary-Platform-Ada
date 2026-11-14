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
limited with org.allbinary.animation.image.ImageArrayAnimationFactory_Package;
package org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References is
   type ImageArrayAnimationFactory_Access is access all org.allbinary.animation.image.ImageArrayAnimationFactory_Package.ImageArrayAnimationFactory'Class;
   type ImageArrayAnimationFactory_Access_Array is array (Natural range <>) of ImageArrayAnimationFactory_Access;
   type ImageArrayAnimationFactory_Access_Array_Access is access all ImageArrayAnimationFactory_Access_Array;
   type ImageArrayAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of ImageArrayAnimationFactory_Access_Array_Access;
   type ImageArrayAnimationFactory_Access_Array_Access_Array_Access is access all ImageArrayAnimationFactory_Access_Array_Access_Array;
   type ImageArrayAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayAnimationFactory_Access_Array_Object'Class then ImageArrayAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ImageArrayAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageArrayAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageArrayAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageArrayAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageArrayAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageArrayAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageArrayAnimationFactory_Access_Array_Access_Array_Object'Class then ImageArrayAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References;

with org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References;
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
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
limited with org.allbinary.animation.AnimationBehaviorFactory_Package;
with org.allbinary.animation.AnimationBehaviorFactory_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;

package org.allbinary.animation.image.ImageArrayAnimationFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehaviorFactory_Package renames Standard.org.allbinary.animation.AnimationBehaviorFactory_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
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
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   use type Animation_Access;
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   use type Animation_Access_Array;
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   use type Animation_Access_Array_Access;
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   use type Animation_Access_Array_Access_Array;
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   use type Animation_Access_Array_Access_Array_Access;
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
   subtype ScaleProperties_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access;
   use type ScaleProperties_Access;
   subtype ScaleProperties_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array;
   use type ScaleProperties_Access_Array;
   subtype ScaleProperties_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access;
   subtype ScaleProperties_Access_Array_Access_Array is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array;
   use type ScaleProperties_Access_Array_Access_Array;
   subtype ScaleProperties_Access_Array_Access_Array_Access is org.allbinary.media.ScaleProperties_Package_References.ScaleProperties_Access_Array_Access_Array_Access;
   use type ScaleProperties_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageArrayAnimationFactory_Access is org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.ImageArrayAnimationFactory_Access;
   function "=" (Left, Right : ImageArrayAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References."=";
   subtype ImageArrayAnimationFactory_Access_Array is org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.ImageArrayAnimationFactory_Access_Array;
   function "=" (Left, Right : ImageArrayAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References."=";
   subtype ImageArrayAnimationFactory_Access_Array_Access is org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.ImageArrayAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : ImageArrayAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References."=";
   function Java_Box (Value : ImageArrayAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_ImageArrayAnimationFactory_Access_Array (Value : access Java_Object'Class) return ImageArrayAnimationFactory_Access_Array_Access renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.Java_Unbox_ImageArrayAnimationFactory_Access_Array;
   subtype ImageArrayAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.ImageArrayAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArrayAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References."=";
   subtype ImageArrayAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.ImageArrayAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArrayAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References."=";
   function Java_Box (Value : ImageArrayAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_ImageArrayAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageArrayAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageArrayAnimationFactory_Package_References.Java_Unbox_ImageArrayAnimationFactory_Access_Array_Access_Array;

   type ImageArrayAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      dx : Integer;
      dy : Integer;
      imageArray : Image_Access_Array_Access;
      animationBehaviorFactory : AnimationBehaviorFactory_Access;
   end record;

   procedure Initialize (This : in out ImageArrayAnimationFactory'Class; imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class);
   function Create (imageArray : Image_Access_Array_Access; dx : Integer; dy : Integer; animationBehaviorFactory_Param : access AnimationBehaviorFactory_Package.AnimationBehaviorFactory'Class) return ImageArrayAnimationFactory_Access;
   function getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out ImageArrayAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out ImageArrayAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.image.ImageArrayAnimationFactory_Package;


