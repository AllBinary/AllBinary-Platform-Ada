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

limited with org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package;
package org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References is
   type ImageArraySingletonAnimationInterfaceFactory_Access is access all org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package.ImageArraySingletonAnimationInterfaceFactory'Class;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array is array (Natural range <>) of ImageArraySingletonAnimationInterfaceFactory_Access;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access is access all ImageArraySingletonAnimationInterfaceFactory_Access_Array;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array is array (Natural range <>) of ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access;
   type ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array_Access is access all ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array;
end org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References;

with org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References;
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
with org.allbinary.animation.SingletonAnimationInterfaceFactory_Package; use org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;

package org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package SingletonAnimationInterfaceFactory_Package renames Standard.org.allbinary.animation.SingletonAnimationInterfaceFactory_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageArraySingletonAnimationInterfaceFactory_Access is org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References.ImageArraySingletonAnimationInterfaceFactory_Access;
   function "=" (Left, Right : ImageArraySingletonAnimationInterfaceFactory_Access) return Boolean renames org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References."=";
   subtype ImageArraySingletonAnimationInterfaceFactory_Access_Array is org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References.ImageArraySingletonAnimationInterfaceFactory_Access_Array;
   function "=" (Left, Right : ImageArraySingletonAnimationInterfaceFactory_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References."=";
   subtype ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access is org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References.ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access;
   function "=" (Left, Right : ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References."=";
   subtype ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array is org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References.ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References."=";
   subtype ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array_Access is org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References.ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageArraySingletonAnimationInterfaceFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package_References."=";

   type ImageArraySingletonAnimationInterfaceFactory is new SingletonAnimationInterfaceFactory with null record;

   procedure Initialize (This : in out ImageArraySingletonAnimationInterfaceFactory'Class; imageArray : Image_Access_Array_Access);
   function Create (imageArray : Image_Access_Array_Access) return ImageArraySingletonAnimationInterfaceFactory_Access;

end org.allbinary.animation.image.ImageArraySingletonAnimationInterfaceFactory_Package;


