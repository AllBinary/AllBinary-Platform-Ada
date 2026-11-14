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
limited with org.allbinary.media.image.ImageRotationUtil_Package;
package org.allbinary.media.image.ImageRotationUtil_Package_References is
   type ImageRotationUtil_Access is access all org.allbinary.media.image.ImageRotationUtil_Package.ImageRotationUtil'Class;
   type ImageRotationUtil_Access_Array is array (Natural range <>) of ImageRotationUtil_Access;
   type ImageRotationUtil_Access_Array_Access is access all ImageRotationUtil_Access_Array;
   type ImageRotationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageRotationUtil_Access_Array_Access;
   type ImageRotationUtil_Access_Array_Access_Array_Access is access all ImageRotationUtil_Access_Array_Access_Array;
   type ImageRotationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageRotationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageRotationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageRotationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageRotationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageRotationUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageRotationUtil_Access_Array_Object'Class then ImageRotationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageRotationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageRotationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageRotationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageRotationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageRotationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageRotationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageRotationUtil_Access_Array_Access_Array_Object'Class then ImageRotationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageRotationUtil_Package_References;

with org.allbinary.media.image.ImageRotationUtil_Package_References;
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
limited with org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
limited with org.allbinary.media.image.ImageSwtRotationUtil_Package;
with org.allbinary.media.image.ImageSwtRotationUtil_Package_References;
limited with org.eclipse.swt.graphics.Image_Package;
with org.eclipse.swt.graphics.Image_Package_References; use type org.eclipse.swt.graphics.Image_Package_References.Image_Access;

package org.allbinary.media.image.ImageRotationUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
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
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   use type Features_Access;
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   use type Features_Access_Array;
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   use type Features_Access_Array_Access;
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   use type Features_Access_Array_Access_Array;
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   use type Features_Access_Array_Access_Array_Access;
   subtype ImageSwtRotationUtil_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access;
   use type ImageSwtRotationUtil_Access;
   subtype ImageSwtRotationUtil_Access_Array is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array;
   use type ImageSwtRotationUtil_Access_Array;
   subtype ImageSwtRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access;
   use type ImageSwtRotationUtil_Access_Array_Access;
   subtype ImageSwtRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access_Array;
   use type ImageSwtRotationUtil_Access_Array_Access_Array;
   subtype ImageSwtRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageSwtRotationUtil_Package_References.ImageSwtRotationUtil_Access_Array_Access_Array_Access;
   use type ImageSwtRotationUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageRotationUtil_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access;
   function "=" (Left, Right : ImageRotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   function Java_Box (Value : ImageRotationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageRotationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageRotationUtil_Access_Array (Value : access Java_Object'Class) return ImageRotationUtil_Access_Array_Access renames org.allbinary.media.image.ImageRotationUtil_Package_References.Java_Unbox_ImageRotationUtil_Access_Array;
   subtype ImageRotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   subtype ImageRotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageRotationUtil_Package_References.ImageRotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageRotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageRotationUtil_Package_References."=";
   function Java_Box (Value : ImageRotationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageRotationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageRotationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageRotationUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageRotationUtil_Package_References.Java_Unbox_ImageRotationUtil_Access_Array_Access_Array;

   type ImageRotationUtil is new Java_Object with record
      imageSwtRotationUtil : ImageSwtRotationUtil_Access;
      features : Features_Access;
   end record;
   instance : ImageRotationUtil_Access;

   procedure Initialize (This : in out ImageRotationUtil'Class);
   function Create return ImageRotationUtil_Access;
   function getInstance return ImageRotationUtil_Access;
   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer);
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access;
   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer);

end org.allbinary.media.image.ImageRotationUtil_Package;


