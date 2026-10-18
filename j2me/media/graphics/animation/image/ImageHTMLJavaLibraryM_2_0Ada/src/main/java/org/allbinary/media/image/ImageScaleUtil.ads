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
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.CoreImage_Package; use playn.core.CoreImage_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.html.HTMLPlaynUtil_Package; use playn.html.HTMLPlaynUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package org.allbinary.media.image.ImageScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   package HTMLPlaynUtil_Package renames Standard.playn.html.HTMLPlaynUtil_Package;

   type ImageScaleUtil is tagged;
   type ImageScaleUtil_Access is access all ImageScaleUtil'Class;
   type ImageScaleUtil_Access_Array is array (Natural range <>) of ImageScaleUtil_Access;
   type ImageScaleUtil_Access_Array_Access is access all ImageScaleUtil_Access_Array;

   type ImageScaleUtil is new Java_Object with record
      playnUtil : HTMLPlaynUtil_Access;
   end record;
   instance : ImageScaleUtil_Access;

   procedure Initialize (This : in out ImageScaleUtil'Class);
   function Create return ImageScaleUtil_Access;
   function getInstance return ImageScaleUtil_Access;
   function createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access;
   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean);
   function createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access;
   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean);
   function createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) return Image_Access;
   procedure createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean);
   function createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float) return Image_Access;
   procedure createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float);

end org.allbinary.media.image.ImageScaleUtil_Package;


