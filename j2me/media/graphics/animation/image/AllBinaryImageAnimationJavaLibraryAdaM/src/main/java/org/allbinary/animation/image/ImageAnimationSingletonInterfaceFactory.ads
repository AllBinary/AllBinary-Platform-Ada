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
limited with org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package;
package org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References is
   type ImageAnimationSingletonInterfaceFactory_Access is access all org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package.ImageAnimationSingletonInterfaceFactory'Class;
   type ImageAnimationSingletonInterfaceFactory_Access_Array is array (Natural range <>) of ImageAnimationSingletonInterfaceFactory_Access;
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Access is access all ImageAnimationSingletonInterfaceFactory_Access_Array;
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ImageAnimationSingletonInterfaceFactory_Access_Array_Access;
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access is access all ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array;
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnimationSingletonInterfaceFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnimationSingletonInterfaceFactory_Access_Array_Access is (if Value /= null and then Value.all in ImageAnimationSingletonInterfaceFactory_Access_Array_Object'Class then ImageAnimationSingletonInterfaceFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Object'Class then ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References;

with org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References;
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
with org.allbinary.animation.SingletonAnimationInterfaceFactory_Package; use org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;

package org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package is

   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package SingletonAnimationInterfaceFactory_Package renames Standard.org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageAnimationSingletonInterfaceFactory_Access is org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.ImageAnimationSingletonInterfaceFactory_Access;
   function "=" (Left, Right : ImageAnimationSingletonInterfaceFactory_Access) return Boolean renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References."=";
   subtype ImageAnimationSingletonInterfaceFactory_Access_Array is org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.ImageAnimationSingletonInterfaceFactory_Access_Array;
   function "=" (Left, Right : ImageAnimationSingletonInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References."=";
   subtype ImageAnimationSingletonInterfaceFactory_Access_Array_Access is org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.ImageAnimationSingletonInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : ImageAnimationSingletonInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References."=";
   function Java_Box (Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array (Value : access Java_Object'Class) return ImageAnimationSingletonInterfaceFactory_Access_Array_Access renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array;
   subtype ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References."=";
   subtype ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References."=";
   function Java_Box (Value : ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.Java_Box;
   function Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array_Access renames org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package_References.Java_Unbox_ImageAnimationSingletonInterfaceFactory_Access_Array_Access_Array;

   type ImageAnimationSingletonInterfaceFactory is new SingletonAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out ImageAnimationSingletonInterfaceFactory'Class; animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer);
   function Create (animationInterface_Param : access Animation_Package.Animation'Class; width : Integer; height : Integer) return ImageAnimationSingletonInterfaceFactory_Access;

end org.allbinary.animation.image.ImageAnimationSingletonInterfaceFactory_Package;


