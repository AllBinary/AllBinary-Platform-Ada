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


package body org.allbinary.media.image.ImageSwtRotationUtil_Package is

   procedure Initialize_Fields (This : in out ImageSwtRotationUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
      This.gameFeatureFactory := GameFeatureFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.NO_COPY := To_Unbounded_String ("SWT should not copy images after initial loading as the alpha is not honored");
   end Initialize_Fields;


   function getInstance return ImageSwtRotationUtil_Access is
   begin
        return ImageSwtRotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageSwtRotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageSwtRotationUtil_Access is
      This : constant ImageSwtRotationUtil_Access := new ImageSwtRotationUtil;
   begin
      ImageSwtRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageSwtRotationUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return bufferedImage;
        end if;
        return bufferedImage;
   end getRotatedImage;

   function getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : constant Image_Access := Image_Access (newBufferedImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageSwtRotationUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return bufferedImage;
        end if;
        return bufferedImage;
   end getRotatedImage2;

   function rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access is
      originalSwtImage : constant Image_Access := Image_Access (originalSwtImage_Param);
      newSwtImage : constant Image_Access := Image_Access (newSwtImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        return ImageSwtRotationUtil'Class (This).getRotatedImage2 (originalSwtImage, newSwtImage, gc, totalAngle);
   end rotateImage;

   function getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) return Image_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newSwtImage : constant Image_Access := Image_Access (newSwtImage_Param);
      gc : constant GC_Access := GC_Access (gc_Param);
   begin
        return ImageSwtRotationUtil'Class (This).getRotatedImage2 (bufferedImage, newSwtImage, gc, totalAngle);
   end getRotatedImageSWT;

   function getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) return Image_Access_Array_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      bufferedImageArray : Image_Access_Array_Access;
      angle : Integer;
      size : Integer;
      index : Integer;
   begin
        bufferedImageArray := new Image_Access_Array'(0 .. (numberOfFrames) - 1 => null);
        angle := 0;
        size := bufferedImageArray'Length;
        for index in 0 .. (size) - 1 loop
            angle := (((totalAngle) / (size))) * (index);
            bufferedImageArray (index) := ImageSwtRotationUtil'Class (This).getRotatedImage (bufferedImage, angle);
        end loop;
        return bufferedImageArray;
   end getRotatedImages;

   function createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access) return Image_Access is
      columns : Integer;
      rows : Integer;
      size : Integer;
      firstBufferedImage : Image_Access;
      imageData : ImageData_Access;
      bufferedImage : Image_Access;
      gc : GC_Access;
      columnIndex : Integer;
      rowIndex : Integer;
      nextBufferedImage : Image_Access;
      index : Integer;
   begin
        columns := 9;
        rows := 0;
        size := bufferedImageArray'Length;
        if (size) < (columns) then
            columns := size;
        end if;
        rows := ((size) / (columns));
        if ((size) rem (columns)) /= (0) then
            rows := rows + 1;
        end if;
        firstBufferedImage := bufferedImageArray (0);
        imageData := firstBufferedImage.getImageData;
        bufferedImage := This.imageUtil.create ((imageData.width) * (columns), (imageData.height) * (rows));
        gc := GC_Package.Create (bufferedImage);
        gc.setAntialias (SWT_Package.ON);
        gc.setInterpolation (SWT_Package.HIGH);
        columnIndex := 0;
        rowIndex := 0;
        nextBufferedImage := null;
        for index in 0 .. (size) - 1 loop
            if (((index) / (9)) /= (0)) and then (((index) rem (9)) = (0)) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
            nextBufferedImage := bufferedImageArray (index);
            imageData := nextBufferedImage.getImageData;
            gc.drawImage (bufferedImage, 0, 0, bufferedImage.getBounds.width, bufferedImage.getBounds.height, (imageData.width) * (columnIndex), (imageData.height) * (rowIndex), imageData.width, imageData.height);
            columnIndex := columnIndex + 1;
        end loop;
        gc.dispose;
        return bufferedImage;
   end createSpriteImage;

   procedure getRotatedImage (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImage (bufferedImage_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImage;

   procedure getRotatedImage2 (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; angle : Float) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImage2 (bufferedImage_Param, newBufferedImage_Param, gc_Param, angle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImage2;

   procedure rotateImage (This : in out ImageSwtRotationUtil; originalSwtImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).rotateImage (originalSwtImage_Param, newSwtImage_Param, gc_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImage;

   procedure getRotatedImageSWT (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newSwtImage_Param : access Image_Package.Image'Class; gc_Param : access GC_Package.GC'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).getRotatedImageSWT (bufferedImage_Param, newSwtImage_Param, gc_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImageSWT;

   procedure getRotatedImages (This : in out ImageSwtRotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageSwtRotationUtil'Class (This).getRotatedImages (bufferedImage_Param, numberOfFrames, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImages;

   procedure createSpriteImage (This : in out ImageSwtRotationUtil; bufferedImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access := ImageSwtRotationUtil'Class (This).createSpriteImage (bufferedImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSpriteImage;

begin
   null;
   instance := ImageSwtRotationUtil_Package.Create;

end org.allbinary.media.image.ImageSwtRotationUtil_Package;


