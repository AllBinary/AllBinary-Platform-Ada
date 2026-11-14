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
limited with org.allbinary.media.image.ImageModifierUtil_Package;
package org.allbinary.media.image.ImageModifierUtil_Package_References is
   type ImageModifierUtil_Access is access all org.allbinary.media.image.ImageModifierUtil_Package.ImageModifierUtil'Class;
   type ImageModifierUtil_Access_Array is array (Natural range <>) of ImageModifierUtil_Access;
   type ImageModifierUtil_Access_Array_Access is access all ImageModifierUtil_Access_Array;
   type ImageModifierUtil_Access_Array_Access_Array is array (Natural range <>) of ImageModifierUtil_Access_Array_Access;
   type ImageModifierUtil_Access_Array_Access_Array_Access is access all ImageModifierUtil_Access_Array_Access_Array;
   type ImageModifierUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageModifierUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageModifierUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageModifierUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageModifierUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageModifierUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageModifierUtil_Access_Array_Object'Class then ImageModifierUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageModifierUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageModifierUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageModifierUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageModifierUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageModifierUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageModifierUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageModifierUtil_Access_Array_Access_Array_Object'Class then ImageModifierUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageModifierUtil_Package_References;

with org.allbinary.media.image.ImageModifierUtil_Package_References;
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
limited with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;

package org.allbinary.media.image.ImageModifierUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package BasicColor_Package renames Standard.org.allbinary.graphics.color.BasicColor_Package;
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
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   use type BasicColor_Access;
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   use type BasicColor_Access_Array;
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   use type BasicColor_Access_Array_Access;
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   use type BasicColor_Access_Array_Access_Array;
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   use type BasicColor_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageModifierUtil_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access;
   function "=" (Left, Right : ImageModifierUtil_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   function Java_Box (Value : ImageModifierUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageModifierUtil_Package_References.Java_Box;
   function Java_Unbox_ImageModifierUtil_Access_Array (Value : access Java_Object'Class) return ImageModifierUtil_Access_Array_Access renames org.allbinary.media.image.ImageModifierUtil_Package_References.Java_Unbox_ImageModifierUtil_Access_Array;
   subtype ImageModifierUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   subtype ImageModifierUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageModifierUtil_Package_References.ImageModifierUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageModifierUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageModifierUtil_Package_References."=";
   function Java_Box (Value : ImageModifierUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageModifierUtil_Package_References.Java_Box;
   function Java_Unbox_ImageModifierUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageModifierUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageModifierUtil_Package_References.Java_Unbox_ImageModifierUtil_Access_Array_Access_Array;

   type ImageModifierUtil is new Java_Object with null record;
   instance : ImageModifierUtil_Access;

   procedure Initialize (This : in out ImageModifierUtil'Class);
   function Create return ImageModifierUtil_Access;
   function getInstanceOrCreate return ImageModifierUtil_Access;
   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class);
   procedure setAlpha (This : in out ImageModifierUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alphaInt : Integer);
   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access;
   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access);
   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class);
   procedure reset (This : in out ImageModifierUtil);

end org.allbinary.media.image.ImageModifierUtil_Package;


