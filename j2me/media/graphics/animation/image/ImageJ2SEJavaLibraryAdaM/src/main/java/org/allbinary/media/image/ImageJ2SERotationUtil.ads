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

limited with org.allbinary.media.image.ImageJ2SERotationUtil_Package;
package org.allbinary.media.image.ImageJ2SERotationUtil_Package_References is
   type ImageJ2SERotationUtil_Access is access all org.allbinary.media.image.ImageJ2SERotationUtil_Package.ImageJ2SERotationUtil'Class;
   type ImageJ2SERotationUtil_Access_Array is array (Natural range <>) of ImageJ2SERotationUtil_Access;
   type ImageJ2SERotationUtil_Access_Array_Access is access all ImageJ2SERotationUtil_Access_Array;
   type ImageJ2SERotationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageJ2SERotationUtil_Access_Array_Access;
   type ImageJ2SERotationUtil_Access_Array_Access_Array_Access is access all ImageJ2SERotationUtil_Access_Array_Access_Array;
end org.allbinary.media.image.ImageJ2SERotationUtil_Package_References;

with org.allbinary.media.image.ImageJ2SERotationUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Graphics2D_Package; use java.awt.Graphics2D_Package;
--  with java.awt.Image_Package; use java.awt.Image_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageUtil_Package_References;
limited with org.allbinary.media.image.ImageJ2SEUtil_Package;
with org.allbinary.media.image.ImageJ2SEUtil_Package_References;

package org.allbinary.media.image.ImageJ2SERotationUtil_Package is

   package Reference_Types is
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
   subtype ImageJ2SEUtil_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access;
   use type ImageJ2SEUtil_Access;
   subtype ImageJ2SEUtil_Access_Array is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array;
   use type ImageJ2SEUtil_Access_Array;
   subtype ImageJ2SEUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access;
   use type ImageJ2SEUtil_Access_Array_Access;
   subtype ImageJ2SEUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access_Array;
   use type ImageJ2SEUtil_Access_Array_Access_Array;
   subtype ImageJ2SEUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2SEUtil_Package_References.ImageJ2SEUtil_Access_Array_Access_Array_Access;
   use type ImageJ2SEUtil_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageJ2SERotationUtil_Access is org.allbinary.media.image.ImageJ2SERotationUtil_Package_References.ImageJ2SERotationUtil_Access;
   function "=" (Left, Right : ImageJ2SERotationUtil_Access) return Boolean renames org.allbinary.media.image.ImageJ2SERotationUtil_Package_References."=";
   subtype ImageJ2SERotationUtil_Access_Array is org.allbinary.media.image.ImageJ2SERotationUtil_Package_References.ImageJ2SERotationUtil_Access_Array;
   function "=" (Left, Right : ImageJ2SERotationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2SERotationUtil_Package_References."=";
   subtype ImageJ2SERotationUtil_Access_Array_Access is org.allbinary.media.image.ImageJ2SERotationUtil_Package_References.ImageJ2SERotationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageJ2SERotationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2SERotationUtil_Package_References."=";
   subtype ImageJ2SERotationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageJ2SERotationUtil_Package_References.ImageJ2SERotationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageJ2SERotationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageJ2SERotationUtil_Package_References."=";
   subtype ImageJ2SERotationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageJ2SERotationUtil_Package_References.ImageJ2SERotationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageJ2SERotationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageJ2SERotationUtil_Package_References."=";

   type ImageJ2SERotationUtil is new Java_Object with record
      imageUtil : ImageUtil_Access;
      imageJ2SEUtil : ImageJ2SEUtil_Access;
      TWO_PIE : Long_Float;
   end record;
   instance : ImageJ2SERotationUtil_Access;

   procedure Initialize (This : in out ImageJ2SERotationUtil'Class);
   function Create return ImageJ2SERotationUtil_Access;
   function getInstance return ImageJ2SERotationUtil_Access;
   function getRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) return BufferedImage_Access;
   procedure getRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer);
   function getRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; radians : Long_Float) return BufferedImage_Access;
   procedure getRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; radians : Long_Float);
   function drawRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; g_Param : access Graphics2D_Package.Graphics2D'Class; radians : Long_Float) return BufferedImage_Access;
   procedure drawRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; g_Param : access Graphics2D_Package.Graphics2D'Class; radians : Long_Float);
   function rotateImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) return BufferedImage_Access;
   procedure rotateImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer);
   function createRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) return BufferedImage_Access;
   procedure createRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer);
   function getRotatedImages (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) return BufferedImage_Access_Array_Access;
   procedure getRotatedImages (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer);
   function createSpriteImage (This : in out ImageJ2SERotationUtil; bufferedImageArray : BufferedImage_Access_Array_Access) return BufferedImage_Access;
   procedure createSpriteImage (This : in out ImageJ2SERotationUtil; bufferedImageArray : BufferedImage_Access_Array_Access);

end org.allbinary.media.image.ImageJ2SERotationUtil_Package;


