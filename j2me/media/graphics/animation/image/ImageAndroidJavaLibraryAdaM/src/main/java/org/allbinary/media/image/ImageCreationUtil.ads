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
limited with org.allbinary.media.image.ImageCreationUtil_Package;
package org.allbinary.media.image.ImageCreationUtil_Package_References is
   type ImageCreationUtil_Access is access all org.allbinary.media.image.ImageCreationUtil_Package.ImageCreationUtil'Class;
   type ImageCreationUtil_Access_Array is array (Natural range <>) of ImageCreationUtil_Access;
   type ImageCreationUtil_Access_Array_Access is access all ImageCreationUtil_Access_Array;
   type ImageCreationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageCreationUtil_Access_Array_Access;
   type ImageCreationUtil_Access_Array_Access_Array_Access is access all ImageCreationUtil_Access_Array_Access_Array;
   type ImageCreationUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCreationUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCreationUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCreationUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCreationUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCreationUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageCreationUtil_Access_Array_Object'Class then ImageCreationUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageCreationUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageCreationUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageCreationUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageCreationUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageCreationUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageCreationUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageCreationUtil_Access_Array_Access_Array_Object'Class then ImageCreationUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageCreationUtil_Package_References;

with org.allbinary.media.image.ImageCreationUtil_Package_References;
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

package org.allbinary.media.image.ImageCreationUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
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


   subtype ImageCreationUtil_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access;
   function "=" (Left, Right : ImageCreationUtil_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array;
   function "=" (Left, Right : ImageCreationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   function Java_Box (Value : ImageCreationUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageCreationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageCreationUtil_Access_Array (Value : access Java_Object'Class) return ImageCreationUtil_Access_Array_Access renames org.allbinary.media.image.ImageCreationUtil_Package_References.Java_Unbox_ImageCreationUtil_Access_Array;
   subtype ImageCreationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   function Java_Box (Value : ImageCreationUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageCreationUtil_Package_References.Java_Box;
   function Java_Unbox_ImageCreationUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageCreationUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageCreationUtil_Package_References.Java_Unbox_ImageCreationUtil_Access_Array_Access_Array;

   type ImageCreationUtil is new Java_Object with null record;
   instance : ImageCreationUtil_Access;

   procedure Initialize (This : in out ImageCreationUtil'Class);
   function Create return ImageCreationUtil_Access;
   function getInstance return ImageCreationUtil_Access;
   function createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer) return Image_Access;
   procedure createImageWH (This : in out ImageCreationUtil; width : Integer; height : Integer);
   function createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float) return Image_Access;
   procedure createImage (This : in out ImageCreationUtil; width : Integer; height : Integer; maxScaleX : Float; maxScaleY : Float);

end org.allbinary.media.image.ImageCreationUtil_Package;


