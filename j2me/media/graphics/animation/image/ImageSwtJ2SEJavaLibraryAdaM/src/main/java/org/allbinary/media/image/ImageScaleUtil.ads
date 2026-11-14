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
limited with javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
limited with org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
limited with org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;
limited with org.allbinary.image.ImageCache_Package;
with org.allbinary.image.ImageCache_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package_References;

package org.allbinary.media.image.ImageScaleUtil_Package is

   package Image_Package renames Standard.javax.microedition.lcdui.Image_Package;
   package Features_Package renames Standard.org.allbinary.game.configuration.feature.Features_Package;
   package GameFeatureFactory_Package renames Standard.org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
   package ImageCache_Package renames Standard.org.allbinary.image.ImageCache_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
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
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   use type Features_Access;
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   use type Features_Access_Array;
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   use type Features_Access_Array_Access;
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   use type Features_Access_Array_Access_Array;
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   use type Features_Access_Array_Access_Array_Access;
   subtype GameFeatureFactory_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access;
   use type GameFeatureFactory_Access;
   subtype GameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array;
   use type GameFeatureFactory_Access_Array;
   subtype GameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access;
   use type GameFeatureFactory_Access_Array_Access;
   subtype GameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array;
   use type GameFeatureFactory_Access_Array_Access_Array;
   subtype GameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array_Access;
   use type GameFeatureFactory_Access_Array_Access_Array_Access;
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
   subtype ImageCopyUtil_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access;
   use type ImageCopyUtil_Access;
   subtype ImageCopyUtil_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array;
   use type ImageCopyUtil_Access_Array;
   subtype ImageCopyUtil_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access;
   use type ImageCopyUtil_Access_Array_Access;
   subtype ImageCopyUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array;
   use type ImageCopyUtil_Access_Array_Access_Array;
   subtype ImageCopyUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array_Access;
   use type ImageCopyUtil_Access_Array_Access_Array_Access;
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
      imageCopyUtil : ImageCopyUtil_Access;
      gameFeatureFactory : GameFeatureFactory_Access;
      features : Features_Access;
      NO_COPY : Unbounded_String;
   end record;
   instance : ImageScaleUtil_Access;

   procedure Initialize (This : in out ImageScaleUtil'Class);
   function Create return ImageScaleUtil_Access;
   function getInstance return ImageScaleUtil_Access;
   function createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access;
   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean);
   function createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access;
   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean);
   procedure scale2 (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float);
   procedure scale (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float; mutable : Boolean);

end org.allbinary.media.image.ImageScaleUtil_Package;


