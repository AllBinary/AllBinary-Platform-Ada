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
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageJ2SEUtil_Package; use org.allbinary.media.image.ImageJ2SEUtil_Package;

package org.allbinary.media.image.ImageJ2SERotationUtil_Package is


   type ImageJ2SERotationUtil is tagged;
   type ImageJ2SERotationUtil_Access is access all ImageJ2SERotationUtil'Class;
   type ImageJ2SERotationUtil_Access_Array is array (Natural range <>) of ImageJ2SERotationUtil_Access;
   type ImageJ2SERotationUtil_Access_Array_Access is access all ImageJ2SERotationUtil_Access_Array;
   type ImageJ2SERotationUtil_Access_Array_Access_Array is array (Natural range <>) of ImageJ2SERotationUtil_Access_Array_Access;
   type ImageJ2SERotationUtil_Access_Array_Access_Array_Access is access all ImageJ2SERotationUtil_Access_Array_Access_Array;

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


