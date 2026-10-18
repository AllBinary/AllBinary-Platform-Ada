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
with org.eclipse.swt.widgets.Canvas_Package; use org.eclipse.swt.widgets.Canvas_Package;
with org.eclipse.swt.widgets.Composite_Package; use org.eclipse.swt.widgets.Composite_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.ImageUtil_Package is

   package Canvas_Package renames Standard.org.eclipse.swt.widgets.Canvas_Package;
   package Composite_Package renames Standard.org.eclipse.swt.widgets.Composite_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageUtil is tagged;
   type ImageUtil_Access is access all ImageUtil'Class;
   type ImageUtil_Access_Array is array (Natural range <>) of ImageUtil_Access;
   type ImageUtil_Access_Array_Access is access all ImageUtil_Access_Array;
   type ImageUtil_Access_Array_Access_Array is array (Natural range <>) of ImageUtil_Access_Array_Access;
   type ImageUtil_Access_Array_Access_Array_Access is access all ImageUtil_Access_Array_Access_Array;

   type ImageUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      commonSeps : CommonSeps_Access;
      IIOIMAGE_POOL_NAME : Unbounded_String;
      CREATE_BUFFERED_IMAGE : Unbounded_String;
   end record;
   instance : ImageUtil_Access;

   procedure Initialize (This : in out ImageUtil'Class);
   function Create return ImageUtil_Access;
   function getInstance return ImageUtil_Access;
   function create (This : in out ImageUtil; width : Integer; height : Integer) return Image_Access;
   procedure create (This : in out ImageUtil; width : Integer; height : Integer);
   function createBufferedImage (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Integer; scale : Boolean) return Image_Access_Array_Access;
   procedure createBufferedImage (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Integer; scale : Boolean);
   function createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Float; scale : Boolean) return Image_Access_Array_Access;
   procedure createBufferedImage2 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; percent : Float; scale : Boolean);
   function createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; width : Integer; height : Integer; scale : Boolean) return Image_Access_Array_Access;
   procedure createBufferedImage3 (This : in out ImageUtil; bufferedImageArray : Image_Access_Array_Access; width : Integer; height : Integer; scale : Boolean);
   function createBufferedImage4 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer) return Image_Access;
   procedure createBufferedImage4 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer);
   function createBufferedImage5 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean) return Image_Access;
   procedure createBufferedImage5 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean);
   function createBufferedImage6 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean) return Image_Access;
   procedure createBufferedImage6 (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class; newWidth : Integer; newHeight : Integer; scale : Boolean; allowTranslate : Boolean);
   function drawTransformedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class; parent_Param : access Composite_Package.Composite'Class; dx : Integer; dy : Integer; width : Integer; height : Integer) return Canvas_Access;
   procedure drawTransformedImage (This : in out ImageUtil; image_Param : access Image_Package.Image'Class; parent_Param : access Composite_Package.Composite'Class; dx : Integer; dy : Integer; width : Integer; height : Integer);
   function toString (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class) return Unbounded_String;
   procedure toString (This : in out ImageUtil; bufferedImage_Param : access Image_Package.Image'Class);

end org.allbinary.media.image.ImageUtil_Package;


