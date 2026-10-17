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
--  with java.awt.GraphicsConfiguration_Package; use java.awt.GraphicsConfiguration_Package;
--  with java.awt.GraphicsDevice_Package; use java.awt.GraphicsDevice_Package;
--  with java.awt.GraphicsEnvironment_Package; use java.awt.GraphicsEnvironment_Package;
--  with java.awt.Transparency_Package; use java.awt.Transparency_Package;
--  with java.awt.geom.AffineTransform_Package; use java.awt.geom.AffineTransform_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
--  with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.microemu.device.j2se.J2SEImmutableImage_Package; use org.microemu.device.j2se.J2SEImmutableImage_Package;
with org.microemu.device.j2se.J2SEMutableImage_Package; use org.microemu.device.j2se.J2SEMutableImage_Package;

package org.allbinary.media.image.ImageUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package J2SEImmutableImage_Package renames Standard.org.microemu.device.j2se.J2SEImmutableImage_Package;
   package J2SEMutableImage_Package renames Standard.org.microemu.device.j2se.J2SEMutableImage_Package;

   type ImageUtil is tagged;
   type ImageUtil_Access is access all ImageUtil'Class;
   type ImageUtil_Access_Array is array (Natural range <>) of ImageUtil_Access;
   type ImageUtil_Access_Array_Access is access all ImageUtil_Access_Array;

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
   function convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access Image_Package.Image'Class) return BufferedImage_Access;
   procedure convertToBufferedImage (This : in out ImageUtil; toolkitImage_Param : access Image_Package.Image'Class);
   function getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class) return BufferedImage_Access;
   procedure getBufferedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class);
   function toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Unbounded_String;
   procedure toString (This : in out ImageUtil; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);

end org.allbinary.media.image.ImageUtil_Package;


