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


with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Image_Package; use javax.microedition.lcdui.Image_Package;
with javax.microedition.lcdui.Image_Package_References;
with org.allbinary.game.configuration.feature.Features_Package; use org.allbinary.game.configuration.feature.Features_Package;
with org.allbinary.game.configuration.feature.Features_Package_References;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package; use org.allbinary.game.configuration.feature.GameFeatureFactory_Package;
with org.allbinary.game.configuration.feature.GameFeatureFactory_Package_References;
with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;
with org.allbinary.media.image.ImageCreationUtil_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.game.configuration.feature.Feature_Package;
with javax.microedition.lcdui.Font_Package;
with org.allbinary.game.configuration.feature.GameFeature_Package;
with org.allbinary.media.image.ImageCreationUtil_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.media.image.ImageCopyUtil_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
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
   subtype ImageCreationUtil_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access;
   function "=" (Left, Right : ImageCreationUtil_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array;
   function "=" (Left, Right : ImageCreationUtil_Access_Array) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array_Access_Array is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   subtype ImageCreationUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.ImageCreationUtil_Package_References.ImageCreationUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageCreationUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.ImageCreationUtil_Package_References."=";
   procedure Initialize_Fields (This : in out ImageCopyUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageCreationUtil := ImageCreationUtil_Package.getInstance;
      This.anchor := Anchor_Package.TOP_LEFT;
      This.gameFeatureFactory := GameFeatureFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.NO_COPY := To_Unbounded_String ("J2ME does not need to copy images after initial loading");
   end Initialize_Fields;


   function getInstance return ImageCopyUtil_Access is
   begin
        return ImageCopyUtil_Access (ImageCopyUtil_Package.instance);
   end getInstance;

   procedure Initialize (This : in out ImageCopyUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageCopyUtil_Access is
      This : constant ImageCopyUtil_Access := new ImageCopyUtil;
   begin
      ImageCopyUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageCopyUtil'Class (This).createImage (originalImage);
   end createImageForRotation;

   --  throws Exception
   function createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.put (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, Java_New_Exception ("Exception"));
            return originalImage;
        end if;
        image := This.imageCreationUtil.createImageWH (originalImage.getWidth, originalImage.getHeight);
        if image.isMutable then
            image.getGraphics.drawImage (originalImage, 0, 0, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImage;

   --  throws Exception
   function createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      newWidth : Integer;
      newHeight : Integer;
      image : Image_Access;
      halfWidthDelta : Integer;
      halfHeightDelta : Integer;
      graphics : Graphics_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.put (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR, Java_New_Exception ("Exception"));
            return originalImage;
        end if;
        newWidth := Integer (((originalImage.getWidth) * (canvasScale)));
        newHeight := Integer (((originalImage.getHeight) * (canvasScale)));
        if resize then
            if (newWidth) < (newHeight) then
                newWidth := newHeight;
            end if;
            if (newHeight) < (newWidth) then
                newHeight := newWidth;
            end if;
        end if;
        image := This.imageCreationUtil.createImageWH (newWidth, newHeight);
        if image.isMutable then
            halfWidthDelta := (((newWidth) - (originalImage.getWidth))) / (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight))) / (2);
            graphics := image.getGraphics;
            graphics.drawImage (originalImage, halfWidthDelta, halfHeightDelta, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImageScale;

   procedure createImageForRotation (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageForRotation (originalImage_Param => originalImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageForRotation;

   procedure createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImage (originalImage_Param => originalImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageScale (originalImage_Param => originalImage_Param, canvasScale => canvasScale, resize => resize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageScale;

begin
   null;
   instance := ImageCopyUtil_Package.Create;

end org.allbinary.media.image.ImageCopyUtil_Package;


