-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package;
package org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References is
   type LazyImageRotationAnimationFactory_Access is access all org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package.LazyImageRotationAnimationFactory'Class;
   type LazyImageRotationAnimationFactory_Access_Array is array (Natural range <>) of LazyImageRotationAnimationFactory_Access;
   type LazyImageRotationAnimationFactory_Access_Array_Access is access all LazyImageRotationAnimationFactory_Access_Array;
   type LazyImageRotationAnimationFactory_Access_Array_Access_Array is array (Natural range <>) of LazyImageRotationAnimationFactory_Access_Array_Access;
   type LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access is access all LazyImageRotationAnimationFactory_Access_Array_Access_Array;
   type LazyImageRotationAnimationFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyImageRotationAnimationFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyImageRotationAnimationFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyImageRotationAnimationFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyImageRotationAnimationFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyImageRotationAnimationFactory_Access_Array_Access is (if Value /= null and then Value.all in LazyImageRotationAnimationFactory_Access_Array_Object'Class then LazyImageRotationAnimationFactory_Access_Array_Object'Class (Value.all).Value else null);
   type LazyImageRotationAnimationFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new LazyImageRotationAnimationFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_LazyImageRotationAnimationFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in LazyImageRotationAnimationFactory_Access_Array_Access_Array_Object'Class then LazyImageRotationAnimationFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References;

with org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationInterfaceFactoryInterface_Package; use org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
limited with org.allbinary.media.ScaleProperties_Package;
with org.allbinary.media.ScaleProperties_Package_References;
limited with org.allbinary.animation.image.BaseImageAnimationFactory_Package;
with org.allbinary.animation.image.BaseImageAnimationFactory_Package_References;

package org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationInterfaceFactoryInterface_Package renames Standard.org.allbinary.animation.AnimationInterfaceFactoryInterface_Package;
   package ScaleProperties_Package renames Standard.org.allbinary.media.ScaleProperties_Package;
   package Reference_Types is
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
   subtype BaseImageAnimationFactory_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access;
   use type BaseImageAnimationFactory_Access;
   subtype BaseImageAnimationFactory_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array;
   use type BaseImageAnimationFactory_Access_Array;
   subtype BaseImageAnimationFactory_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access;
   use type BaseImageAnimationFactory_Access_Array_Access;
   subtype BaseImageAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array;
   use type BaseImageAnimationFactory_Access_Array_Access_Array;
   subtype BaseImageAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.BaseImageAnimationFactory_Package_References.BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   use type BaseImageAnimationFactory_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype LazyImageRotationAnimationFactory_Access is org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.LazyImageRotationAnimationFactory_Access;
   function "=" (Left, Right : LazyImageRotationAnimationFactory_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References."=";
   subtype LazyImageRotationAnimationFactory_Access_Array is org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.LazyImageRotationAnimationFactory_Access_Array;
   function "=" (Left, Right : LazyImageRotationAnimationFactory_Access_Array) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References."=";
   subtype LazyImageRotationAnimationFactory_Access_Array_Access is org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.LazyImageRotationAnimationFactory_Access_Array_Access;
   function "=" (Left, Right : LazyImageRotationAnimationFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : LazyImageRotationAnimationFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_LazyImageRotationAnimationFactory_Access_Array (Value : access Java_Object'Class) return LazyImageRotationAnimationFactory_Access_Array_Access renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.Java_Unbox_LazyImageRotationAnimationFactory_Access_Array;
   subtype LazyImageRotationAnimationFactory_Access_Array_Access_Array is org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.LazyImageRotationAnimationFactory_Access_Array_Access_Array;
   function "=" (Left, Right : LazyImageRotationAnimationFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References."=";
   subtype LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References."=";
   function Java_Box (Value : LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.Java_Box;
   function Java_Unbox_LazyImageRotationAnimationFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return LazyImageRotationAnimationFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package_References.Java_Unbox_LazyImageRotationAnimationFactory_Access_Array_Access_Array;

   type LazyImageRotationAnimationFactory is new Java_Object and AnimationInterfaceFactoryInterface with record
      layoutIndex : Integer;
      animationInterfaceFactoryInterface : BaseImageAnimationFactory_Access;
      scaleProperties : ScaleProperties_Access;
   end record;

   procedure Initialize (This : in out LazyImageRotationAnimationFactory'Class; layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class);
   function Create (layoutIndex : Integer; associatedLazyAnimationId : Integer; animationInterfaceFactoryInterface_Param : access BaseImageAnimationFactory_Package.BaseImageAnimationFactory'Class) return LazyImageRotationAnimationFactory_Access;
   function getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer) return Animation_Access;
   procedure getInstance (This : in out LazyImageRotationAnimationFactory; instanceId : Integer);
   procedure setInitialScale (This : in out LazyImageRotationAnimationFactory; scaleProperties_Param : access ScaleProperties_Package.ScaleProperties'Class);

end org.allbinary.animation.image.LazyImageRotationAnimationFactory_Package;


