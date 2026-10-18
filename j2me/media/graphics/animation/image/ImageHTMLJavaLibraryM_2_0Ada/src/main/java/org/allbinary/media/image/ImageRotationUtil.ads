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
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.Canvas_Package; use playn.core.Canvas_Package;
with playn.core.CoreImage_Package; use playn.core.CoreImage_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with playn.html.HTMLPlaynUtil_Package; use playn.html.HTMLPlaynUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package org.allbinary.media.image.ImageRotationUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package Canvas_Package renames Standard.playn.core.Canvas_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   package HTMLPlaynUtil_Package renames Standard.playn.html.HTMLPlaynUtil_Package;

   type ImageRotationUtil is tagged;
   type ImageRotationUtil_Access is access all ImageRotationUtil'Class;
   type ImageRotationUtil_Access_Array is array (Natural range <>) of ImageRotationUtil_Access;
   type ImageRotationUtil_Access_Array_Access is access all ImageRotationUtil_Access_Array;

   type ImageRotationUtil is new Java_Object with record
      playnUtil : HTMLPlaynUtil_Access;
   end record;
   instance : ImageRotationUtil_Access;

   procedure Initialize (This : in out ImageRotationUtil'Class);
   function Create return ImageRotationUtil_Access;
   function getInstance return ImageRotationUtil_Access;
   function rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer) return Image_Access;
   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer);
   function rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) return Image_Access;
   procedure rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer);
   function rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) return Image_Access;
   procedure rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer);
   procedure drawImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class);
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access;
   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer);

end org.allbinary.media.image.ImageRotationUtil_Package;


