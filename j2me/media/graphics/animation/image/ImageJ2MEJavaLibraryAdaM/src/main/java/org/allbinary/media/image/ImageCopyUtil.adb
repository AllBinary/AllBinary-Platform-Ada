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


package body org.allbinary.media.image.ImageCopyUtil_Package is

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
        return ImageCopyUtil_Package.instance;
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
        return This.createImage (originalImage);
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
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageForRotation (originalImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageForRotation;

   procedure createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImage (originalImage_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageScale (originalImage_Param, canvasScale, resize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageScale;

begin
   null;
   instance := ImageCopyUtil_Package.Create;

end org.allbinary.media.image.ImageCopyUtil_Package;


