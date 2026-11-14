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
limited with org.allbinary.media.image.ImageUtil_Package;
package org.allbinary.media.image.ImageUtil_Package_References is
   type ImageUtil_Access is access all org.allbinary.media.image.ImageUtil_Package.ImageUtil'Class;
   type ImageUtil_Access_Array is array (Natural range <>) of ImageUtil_Access;
   type ImageUtil_Access_Array_Access is access all ImageUtil_Access_Array;
   type ImageUtil_Access_Array_Access_Array is array (Natural range <>) of ImageUtil_Access_Array_Access;
   type ImageUtil_Access_Array_Access_Array_Access is access all ImageUtil_Access_Array_Access_Array;
   type ImageUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageUtil_Access_Array_Object'Class then ImageUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageUtil_Access_Array_Access_Array_Object'Class then ImageUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageUtil_Package_References;

with org.allbinary.media.image.ImageUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Graphics2D_Package; use java.awt.Graphics2D_Package;
--  with java.awt.GraphicsConfiguration_Package; use java.awt.GraphicsConfiguration_Package;
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.awt.Transparency_Package; use java.awt.Transparency_Package;
--  with java.awt.geom.AffineTransform_Package; use java.awt.geom.AffineTransform_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with java.awt.Image_Package;
with java.awt.Image_Package_References; use type java.awt.Image_Package_References.Image_Access;

package org.allbinary.media.image.ImageUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
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
   subtype CommonSeps_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access;
   use type CommonSeps_Access;
   subtype CommonSeps_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array;
   use type CommonSeps_Access_Array;
   subtype CommonSeps_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access;
   use type CommonSeps_Access_Array_Access;
   subtype CommonSeps_Access_Array_Access_Array is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array;
   use type CommonSeps_Access_Array_Access_Array;
   subtype CommonSeps_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonSeps_Package_References.CommonSeps_Access_Array_Access_Array_Access;
   use type CommonSeps_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageUtil_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access;
   function "=" (Left, Right : ImageUtil_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array;
   function "=" (Left, Right : ImageUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access;
   function "=" (Left, Right : ImageUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   function Java_Box (Value : ImageUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUtil_Package_References.Java_Box;
   function Java_Unbox_ImageUtil_Access_Array (Value : access Java_Object'Class) return ImageUtil_Access_Array_Access renames org.allbinary.media.image.ImageUtil_Package_References.Java_Unbox_ImageUtil_Access_Array;
   subtype ImageUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   subtype ImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageUtil_Package_References."=";
   function Java_Box (Value : ImageUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageUtil_Package_References.Java_Box;
   function Java_Unbox_ImageUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageUtil_Package_References.Java_Unbox_ImageUtil_Access_Array_Access_Array;

   type ImageUtil is new Java_Object with record
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      IIOIMAGE_POOL_NAME : Unbounded_String;
      CREATE_BUFFERED_IMAGE : Unbounded_String;
   end record;
   instance : ImageUtil_Access;

   procedure Initialize (This : in out ImageUtil'Class);
   function Create return ImageUtil_Access;
   function getInstance return ImageUtil_Access;
   function getDefaultConfiguration (This : in out ImageUtil) return GraphicsConfiguration_Access;
   function create (This : in out ImageUtil; width : Integer; height : Integer) return BufferedImage_Access;
   procedure create (This : in out ImageUtil; width : Integer; height : Integer);
   function createBufferedImageForResize (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Integer; scale : Boolean) return BufferedImage_Access_Array_Access;
   procedure createBufferedImageForResize (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Integer; scale : Boolean);
   function createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Float; scale : Boolean) return BufferedImage_Access_Array_Access;
   procedure createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; percent : Float; scale : Boolean);
   function createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) return BufferedImage_Access_Array_Access;
   procedure createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : BufferedImage_Access_Array_Access; width : Integer; height : Integer; scale : Boolean);
   function createBufferedImageForSave (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) return BufferedImage_Access;
   procedure createBufferedImageForSave (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer);
   function createBufferedImage (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) return BufferedImage_Access;
   procedure createBufferedImage (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean);
   function createBufferedImageAllowTranslate (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) return BufferedImage_Access;
   procedure createBufferedImageAllowTranslate (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean);
   function createBufferedImageWithLargerCanvas (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer) return BufferedImage_Access;
   procedure createBufferedImageWithLargerCanvas (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; newWidth : Integer; newHeight : Integer);
   function convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access java.awt.Image_Package.Image'Class) return BufferedImage_Access;
   procedure convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access java.awt.Image_Package.Image'Class);
   function getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class) return BufferedImage_Access;
   procedure getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class);
   function toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Unbounded_String;
   procedure toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);

end org.allbinary.media.image.ImageUtil_Package;


