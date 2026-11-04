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


with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.image.ImageCache_Package; use org.allbinary.image.ImageCache_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.ImageCopyUtil_Package; use org.allbinary.media.image.ImageCopyUtil_Package;
with org.allbinary.media.image.ImageCopyUtil_Package;

package body org.allbinary.media.image.ImageScaleUtil_Package is

   subtype Image_Access is javax.microedition.lcdui.Image_Package_References.Image_Access;
   function "=" (Left, Right : Image_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array;
   function "=" (Left, Right : Image_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array;
   function "=" (Left, Right : Image_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Image_Access_Array_Access_Array_Access is javax.microedition.lcdui.Image_Package_References.Image_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Image_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Image_Package_References."=";
   subtype Features_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access;
   function "=" (Left, Right : Features_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array;
   function "=" (Left, Right : Features_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array;
   function "=" (Left, Right : Features_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype Features_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.Features_Package_References.Features_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Features_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.Features_Package_References."=";
   subtype GameFeatureFactory_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access;
   function "=" (Left, Right : GameFeatureFactory_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access_Array is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype GameFeatureFactory_Access_Array_Access_Array_Access is org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References.GameFeatureFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameFeatureFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References."=";
   subtype ImageCache_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access;
   function "=" (Left, Right : ImageCache_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype ImageCache_Access_Array_Access_Array_Access is org.allbinary.image.ImageCache_Package_References.ImageCache_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCache_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.image.ImageCache_Package_References."=";
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype ImageCopyUtil_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access;
   function "=" (Left, Right : ImageCopyUtil_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   subtype ImageCopyUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCopyUtil_Package_References.ImageCopyUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCopyUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCopyUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageScaleUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageCopyUtil := ImageCopyUtil_Package.getInstance;
      This.gameFeatureFactory := GameFeatureFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.NO_COPY := To_Unbounded_String ("SWT should not copy images after initial loading as the alpha is not honored");
   end Initialize_Fields;


   function getInstance return ImageScaleUtil_Access is
   begin
        return ImageScaleUtil_Access (ImageScaleUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ImageScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageScaleUtil_Access is
      This : constant ImageScaleUtil_Access := new ImageScaleUtil;
   begin
      ImageScaleUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageScaleUtil'Class (This).createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True);
   end createImage2;

   --  throws Exception
   function createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      width : Integer;
      height : Integer;
      scaleX : Float;
      scaleY : Float;
      scaledImage : Image_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageScaleUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return originalImage;
        end if;
        width := originalImage.getWidth;
        height := originalImage.getHeight;
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        scaledImage := This.imageCopyUtil.createImageWH (originalImage, Integer (((scaleX) * (Float (width)))), Integer (((scaleY) * (Float (height)))), mutable);
        return scaledImage;
   end createImage3;

   --  throws Exception
   procedure scale2 (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        ImageScaleUtil'Class (This).scale (originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, True);
   end scale2;

   --  throws Exception
   procedure scale (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float; mutable : Boolean) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      width : Integer;
      height : Integer;
      scaledImage : Image_Access;
   begin
        width := originalImage.getWidth;
        height := originalImage.getHeight;
        scaledImage := This.imageCopyUtil.createImageWH (originalImage, Integer (((scaleX) * (Float (width)))), Integer (((scaleY) * (Float (height)))), mutable);
        originalImageArray (0) := scaledImage;
   end scale;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache_Param => imageCache_Param, originalImage_Param => originalImage_Param, scaleNominatorX => scaleNominatorX, scaleDenominatorX => scaleDenominatorX, scaleNominatorY => scaleNominatorY, scaleDenominatorY => scaleDenominatorY, cached => cached, mutable => mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


