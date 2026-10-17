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
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.eclipse.swt.SWT_Package; use org.eclipse.swt.SWT_Package;
with org.eclipse.swt.graphics.GC_Package; use org.eclipse.swt.graphics.GC_Package;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;

package org.allbinary.media.image.ImageSwtRotationUtil_Package is

   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package SWT_Package renames Standard.org.eclipse.swt.SWT_Package;
   package GC_Package renames Standard.org.eclipse.swt.graphics.GC_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;

   type ImageSwtRotationUtil is tagged;
   type ImageSwtRotationUtil_Access is access all ImageSwtRotationUtil'Class;
   type ImageSwtRotationUtil_Access_Array is array (Natural range <>) of ImageSwtRotationUtil_Access;
   type ImageSwtRotationUtil_Access_Array_Access is access all ImageSwtRotationUtil_Access_Array;

   type ImageSwtRotationUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      imageUtil : ImageUtil_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
      features : Features_Access;
      NO_COPY : Unbounded_String;
   end record;
   instance : ImageSwtRotationUtil_Access;

   procedure Initialize (This : in out ImageSwtRotationUtil'Class);
   function Create return ImageSwtRotationUtil_Access;
   function getInstance return ImageSwtRotationUtil_Access;
   function getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) return Image_Access;
   procedure getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer);
   function getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float) return Image_Access;
   procedure getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float);
   function rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access;
   procedure rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer);
   function getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access;
   procedure getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer);
   function getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) return Image_Access_Array_Access;
   procedure getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer);
   function createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access) return Image_Access;
   procedure createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access);

end org.allbinary.media.image.ImageSwtRotationUtil_Package;


