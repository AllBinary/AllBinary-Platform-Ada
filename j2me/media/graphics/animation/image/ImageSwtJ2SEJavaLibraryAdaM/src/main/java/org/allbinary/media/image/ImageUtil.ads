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
limited with org.eclipse.swt.widgets.Canvas_Package;
with org.eclipse.swt.widgets.Canvas_Package_References;
limited with org.eclipse.swt.widgets.Composite_Package;
with org.eclipse.swt.widgets.Composite_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonSeps_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.eclipse.swt.graphics.Image_Package;
with org.eclipse.swt.graphics.Image_Package_References;

package org.allbinary.media.image.ImageUtil_Package is

   package Canvas_Package renames Standard.org.eclipse.swt.widgets.Canvas_Package;
   package Composite_Package renames Standard.org.eclipse.swt.widgets.Composite_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Image_Package renames Standard.org.eclipse.swt.graphics.Image_Package;
   package Reference_Types is
   subtype Canvas_Access is org.eclipse.swt.widgets.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is org.eclipse.swt.widgets.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is org.eclipse.swt.widgets.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is org.eclipse.swt.widgets.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is org.eclipse.swt.widgets.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   subtype Composite_Access is org.eclipse.swt.widgets.Composite_Package_References.Composite_Access;
   use type Composite_Access;
   subtype Composite_Access_Array is org.eclipse.swt.widgets.Composite_Package_References.Composite_Access_Array;
   use type Composite_Access_Array;
   subtype Composite_Access_Array_Access is org.eclipse.swt.widgets.Composite_Package_References.Composite_Access_Array_Access;
   use type Composite_Access_Array_Access;
   subtype Composite_Access_Array_Access_Array is org.eclipse.swt.widgets.Composite_Package_References.Composite_Access_Array_Access_Array;
   use type Composite_Access_Array_Access_Array;
   subtype Composite_Access_Array_Access_Array_Access is org.eclipse.swt.widgets.Composite_Package_References.Composite_Access_Array_Access_Array_Access;
   use type Composite_Access_Array_Access_Array_Access;
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
   subtype Image_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access;
   use type Image_Access;
   subtype Image_Access_Array is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array;
   use type Image_Access_Array;
   subtype Image_Access_Array_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access;
   use type Image_Access_Array_Access;
   subtype Image_Access_Array_Access_Array is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access_Array;
   use type Image_Access_Array_Access_Array;
   subtype Image_Access_Array_Access_Array_Access is org.eclipse.swt.graphics.Image_Package_References.Image_Access_Array_Access_Array_Access;
   use type Image_Access_Array_Access_Array_Access;
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


