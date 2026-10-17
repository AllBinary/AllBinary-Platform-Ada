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
--  with java.awt.geom.AffineTransform_Package; use java.awt.geom.AffineTransform_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.ImageJ2SEUtil_Package; use org.allbinary.media.image.ImageJ2SEUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package org.allbinary.media.image.ImageScaleUtil_Package is

   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;

   type ImageScaleUtil is tagged;
   type ImageScaleUtil_Access is access all ImageScaleUtil'Class;
   type ImageScaleUtil_Access_Array is array (Natural range <>) of ImageScaleUtil_Access;
   type ImageScaleUtil_Access_Array_Access is access all ImageScaleUtil_Access_Array;

   type ImageScaleUtil is new Java_Object with record
      imageUtil : ImageUtil_Access;
      imageJ2SEUtil : ImageJ2SEUtil_Access;
      imageCreationUtil : ImageCreationUtil_Access;
   end record;
   instance : ImageScaleUtil_Access;

   procedure Initialize (This : in out ImageScaleUtil'Class);
   function Create return ImageScaleUtil_Access;
   function getInstance return ImageScaleUtil_Access;
   function createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access;
   procedure createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean);
   function createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access;
   procedure createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean);
   procedure scale2 (This : in out ImageScaleUtil; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);
   procedure scale (This : in out ImageScaleUtil; originalImage : Image_Access; newMaxSizeImage : Image_Access; scaleX : Float; scaleY : Float; clear : Boolean);

end org.allbinary.media.image.ImageScaleUtil_Package;


