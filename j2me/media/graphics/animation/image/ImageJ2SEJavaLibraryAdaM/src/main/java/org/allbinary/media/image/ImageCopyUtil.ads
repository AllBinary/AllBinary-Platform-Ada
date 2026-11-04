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

limited with org.allbinary.media.image.ImageCopyUtil_Package;
package org.allbinary.media.image.ImageCopyUtil_Package_References is
   type ImageCopyUtil_Access is access all org.allbinary.media.image.ImageCopyUtil_Package.ImageCopyUtil'Class;
   type ImageCopyUtil_Access_Array is array (Natural range <>) of ImageCopyUtil_Access;
   type ImageCopyUtil_Access_Array_Access is access all ImageCopyUtil_Access_Array;
   type ImageCopyUtil_Access_Array_Access_Array is array (Natural range <>) of ImageCopyUtil_Access_Array_Access;
   type ImageCopyUtil_Access_Array_Access_Array_Access is access all ImageCopyUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageCopyUtil_Package_References;

with org.allbinary.media.image.ImageCopyUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;
limited with org.allbinary.media.image.ImageCreationUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package_References;

package org.allbinary.media.image.ImageCopyUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
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
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype ImageUtil_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access;
   use type ImageUtil_Access;
   subtype ImageUtil_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array;
   use type ImageUtil_Access_Array;
   subtype ImageUtil_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access;
   use type ImageUtil_Access_Array_Access;
   subtype ImageUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array;
   use type ImageUtil_Access_Array_Access_Array;
   subtype ImageUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageUtil_Package_References.ImageUtil_Access_Array_Access_Array_Access;
   use type ImageUtil_Access_Array_Access_Array_Access;
   subtype ImageCreationUtil_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access;
   use type ImageCreationUtil_Access;
   subtype ImageCreationUtil_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array;
   use type ImageCreationUtil_Access_Array;
   subtype ImageCreationUtil_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access;
   use type ImageCreationUtil_Access_Array_Access;
   subtype ImageCreationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array;
   use type ImageCreationUtil_Access_Array_Access_Array;
   subtype ImageCreationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array_Access;
   use type ImageCreationUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageCopyUtil_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access;
   function "=" (Left, Right : ImageCopyUtil_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";

   type ImageCopyUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      imageUtil : ImageUtil_Access;
      imageCreationUtil : ImageCreationUtil_Access;
      anchor : Integer;
   end record;
   instance : ImageCopyUtil_Access;

   procedure Initialize (This : in out ImageCopyUtil'Class);
   function Create return ImageCopyUtil_Access;
   function getInstance return ImageCopyUtil_Access;
   function createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access;
   procedure createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class);
   function createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access;
   procedure createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class);
   function createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) return Image_Access;
   procedure createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean);

end org.allbinary.media.image.ImageCopyUtil_Package;


