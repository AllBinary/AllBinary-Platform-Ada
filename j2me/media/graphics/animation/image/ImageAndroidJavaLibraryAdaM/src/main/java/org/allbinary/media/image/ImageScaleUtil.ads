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
limited with org.allbinary.media.image.ImageScaleUtil_Package;
package org.allbinary.media.image.ImageScaleUtil_Package_References is
   type ImageScaleUtil_Access is access all org.allbinary.media.image.ImageScaleUtil_Package.ImageScaleUtil'Class;
   type ImageScaleUtil_Access_Array is array (Natural range <>) of ImageScaleUtil_Access;
   type ImageScaleUtil_Access_Array_Access is access all ImageScaleUtil_Access_Array;
   type ImageScaleUtil_Access_Array_Access_Array is array (Natural range <>) of ImageScaleUtil_Access_Array_Access;
   type ImageScaleUtil_Access_Array_Access_Array_Access is access all ImageScaleUtil_Access_Array_Access_Array;
   type ImageScaleUtil_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageScaleUtil_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageScaleUtil_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageScaleUtil_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageScaleUtil_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageScaleUtil_Access_Array_Access is (if Value /= null and then Value.all in ImageScaleUtil_Access_Array_Object'Class then ImageScaleUtil_Access_Array_Object'Class (Value.all).Value else null);
   type ImageScaleUtil_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageScaleUtil_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageScaleUtil_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageScaleUtil_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageScaleUtil_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageScaleUtil_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageScaleUtil_Access_Array_Access_Array_Object'Class then ImageScaleUtil_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.ImageScaleUtil_Package_References;

with org.allbinary.media.image.ImageScaleUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with android.graphics.Matrix_Package;
with android.graphics.Matrix_Package_References;
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.media.image.ImageScaleUtil_Package is

   package Matrix_Package renames Standard.android.graphics.Matrix_Package;
   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype Matrix_Access is android.graphics.Matrix_Package_References.Matrix_Access;
   use type Matrix_Access;
   subtype Matrix_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array;
   use type Matrix_Access_Array;
   subtype Matrix_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access;
   use type Matrix_Access_Array_Access;
   subtype Matrix_Access_Array_Access_Array is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array;
   use type Matrix_Access_Array_Access_Array;
   subtype Matrix_Access_Array_Access_Array_Access is android.graphics.Matrix_Package_References.Matrix_Access_Array_Access_Array_Access;
   use type Matrix_Access_Array_Access_Array_Access;
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
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   use type ImageCache_Access;
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   use type ImageCache_Access_Array;
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   use type ImageCache_Access_Array_Access;
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   use type ImageCache_Access_Array_Access_Array;
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   use type ImageCache_Access_Array_Access_Array_Access;
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
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageScaleUtil_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access;
   function "=" (Left, Right : ImageScaleUtil_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array;
   function "=" (Left, Right : ImageScaleUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   function Java_Box (Value : ImageScaleUtil_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageScaleUtil_Package_References.Java_Box;
   function Java_Unbox_ImageScaleUtil_Access_Array (Value : access Java_Object'Class) return ImageScaleUtil_Access_Array_Access renames org.allbinary.media.image.ImageScaleUtil_Package_References.Java_Unbox_ImageScaleUtil_Access_Array;
   subtype ImageScaleUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   subtype ImageScaleUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageScaleUtil_Package_References.ImageScaleUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageScaleUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageScaleUtil_Package_References."=";
   function Java_Box (Value : ImageScaleUtil_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.ImageScaleUtil_Package_References.Java_Box;
   function Java_Unbox_ImageScaleUtil_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageScaleUtil_Access_Array_Access_Array_Access renames org.allbinary.media.image.ImageScaleUtil_Package_References.Java_Unbox_ImageScaleUtil_Access_Array_Access_Array;

   type ImageScaleUtil is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      anchor : Integer;
      imageBasicArrayList : BasicArrayList_Access;
      scaledImageBasicArrayList : BasicArrayList_Access;
      scaleXBasicArrayList : BasicArrayList_Access;
      scaleYBasicArrayList : BasicArrayList_Access;
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
   function getScaledImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean) return Image_Access;
   procedure getScaledImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; width : Integer; height : Integer; cached : Boolean);
   procedure scale (This : in out ImageScaleUtil; image_Param : access Image_Package.Image'Class; matrix_Param : access Matrix_Package.Matrix'Class; scaleX : Float; scaleY : Float);

end org.allbinary.media.image.ImageScaleUtil_Package;


