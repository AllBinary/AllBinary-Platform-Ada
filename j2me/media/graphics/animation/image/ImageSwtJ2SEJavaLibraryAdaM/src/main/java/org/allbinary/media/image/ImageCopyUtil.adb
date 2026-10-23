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


with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package; use org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;
with org.allbinary.image.opengles.OpenGLESImage_Package; use org.allbinary.image.opengles.OpenGLESImage_Package;
with org.allbinary.image.opengles.OpenGLESImageProperties_Package; use org.allbinary.image.opengles.OpenGLESImageProperties_Package;
with org.eclipse.swt.graphics.ImageData_Package; use org.eclipse.swt.graphics.ImageData_Package;
with org.microemu.app.ui.swt.SwtDeviceComponent_Package; use org.microemu.app.ui.swt.SwtDeviceComponent_Package;
with org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package; use org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package;
with org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package; use org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package;
with org.microemu.device.swt.SwtImmutableImage_Package; use org.microemu.device.swt.SwtImmutableImage_Package;
with org.microemu.device.swt.SwtMutableImage_Package; use org.microemu.device.swt.SwtMutableImage_Package;

package body org.allbinary.media.image.ImageCopyUtil_Package is

   package DisplayInfoSingleton_Package renames Standard.org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package OpenGLESDeviceImageTranslate_Package renames Standard.org.allbinary.image.opengles.OpenGLESDeviceImageTranslate_Package;
   package OpenGLESImage_Package renames Standard.org.allbinary.image.opengles.OpenGLESImage_Package;
   package OpenGLESImageProperties_Package renames Standard.org.allbinary.image.opengles.OpenGLESImageProperties_Package;
   package ImageData_Package renames Standard.org.eclipse.swt.graphics.ImageData_Package;
   package SwtDeviceComponent_Package renames Standard.org.microemu.app.ui.swt.SwtDeviceComponent_Package;
   package PostLoadSwtImmutableImageProcessor_Package renames Standard.org.microemu.device.swt.PostLoadSwtImmutableImageProcessor_Package;
   package PostLoadSwtMutableImageProcessor_Package renames Standard.org.microemu.device.swt.PostLoadSwtMutableImageProcessor_Package;
   package SwtImmutableImage_Package renames Standard.org.microemu.device.swt.SwtImmutableImage_Package;
   package SwtMutableImage_Package renames Standard.org.microemu.device.swt.SwtMutableImage_Package;
   procedure Initialize_Fields (This : in out ImageCopyUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      This.gameFeatureFactory := GameFeatureFactory_Package.getInstance;
      This.features := Features_Package.getInstance;
      This.openGLFeatureFactory := OpenGLFeatureFactory_Package.getInstance;
      This.openGLUtil := OpenGLUtil_Package.getInstance;
      This.openGLESImageExclusionUtil := OpenGLESImageExclusionUtil_Package.getInstance;
      This.NO_COPY := To_Unbounded_String ("SWT should not copy images after initial loading as the alpha is not honored");
      This.UNABLE := To_Unbounded_String ("Unable to scale image without dimensions");
      This.INFORMATION := To_Unbounded_String ("about_");
      This.LEADERBOARD := To_Unbounded_String ("leaderboard");
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
      image : Image_Access;
   begin
        if This.features.isFeature (This.openGLFeatureFactory.OPENGL) then
            image := originalImage;
            image := This.openGLUtil.addImage (image);
            return image;
        else
            return ImageCopyUtil'Class (This).createImage (originalImage);
        end if;
   end createImageForRotation;

   --  throws Exception
   function createImage (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      originalImage2 : Image_Access;
      openGLESImage : OpenGLESImage_Access;
      image : Image_Access;
      originalImmutableImage : SwtImmutableImage_Access;
      originalMutableImage : SwtMutableImage_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return originalImage;
        end if;
        originalImage2 := originalImage;
        if This.features.isFeature (This.openGLFeatureFactory.OPENGL) then
            if (originalImage.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (originalImage));
                originalImage2 := openGLESImage.openGLBitmap.getImage;
            end if;
        end if;
        image := null;
        if originalImage2.isMutable then
            originalMutableImage := SwtMutableImage_Access (originalImage2);
            image := Image_Access (SwtMutableImage_Package.Create (SwtDeviceComponent_Package.createImage (originalMutableImage.image.getImageData)));
        else
            originalImmutableImage := SwtImmutableImage_Access (originalImage2);
            image := Image_Access (SwtMutableImage_Package.Create (SwtDeviceComponent_Package.createImage (originalImmutableImage.image.getImageData)));
        end if;
        image := This.openGLUtil.addImage (image);
        return image;
   end createImage;

   --  throws Exception
   function createImageWH (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      originalImage2 : Image_Access;
      openGLESImage : OpenGLESImage_Access;
      image : Image_Access;
      originalImmutableImage : SwtImmutableImage_Access;
      imageData2 : ImageData_Access;
      imageData : ImageData_Access;
      originalMutableImage : SwtMutableImage_Access;
   begin
        originalImage2 := originalImage;
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return originalImage;
        end if;
        if This.features.isFeature (This.openGLFeatureFactory.OPENGL) then
            if This.openGLESImageExclusionUtil.isCustomScaling (originalImage) then
                return ImageCopyUtil'Class (This).createImage2 (originalImage, width, height, mutable);
            end if;
            if (originalImage.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (originalImage));
                originalImage2 := openGLESImage.openGLBitmap.getImage;
            end if;
        end if;
        image := null;
        if (originalImage2.isMutable) and then (mutable) then
            originalMutableImage := SwtMutableImage_Access (originalImage2);
            if (originalMutableImage.getImage) /= (null) then
                imageData2 := originalMutableImage.image.getImageData;
                imageData := imageData2.scaledTo (width, height);
                image := Image_Access (SwtMutableImage_Package.Create (SwtDeviceComponent_Package.createImage (imageData)));
            else
                image := Image_Access (SwtMutableImage_Package.Create (originalMutableImage.getName, PostLoadSwtMutableImageProcessor_Package.Create (originalMutableImage)));
            end if;
        else
            originalImmutableImage := SwtImmutableImage_Access (originalImage2);
            if (originalImmutableImage.getImage) /= (null) then
                imageData2 := originalImmutableImage.image.getImageData;
                if ((width) > (0)) and then ((height) > (0)) then
                    imageData := imageData2.scaledTo (width, height);
                    image := Image_Access (SwtImmutableImage_Package.Create (originalImage.getName, SwtDeviceComponent_Package.createImage (imageData)));
                else
                    This.logUtil.putF (This.UNABLE, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
                    image := Image_Access (SwtImmutableImage_Package.Create (originalImmutableImage.getName, PostLoadSwtImmutableImageProcessor_Package.Create (originalImmutableImage)));
                end if;
            else
                image := Image_Access (SwtImmutableImage_Package.Create (originalImmutableImage.getName, PostLoadSwtImmutableImageProcessor_Package.Create (originalImmutableImage)));
            end if;
        end if;
        image := This.openGLUtil.addImage (image);
        return image;
   end createImageWH;

   --  throws Exception
   function createImage2 (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      originalImage2 : Image_Access;
      image : Image_Access;
      originalImmutableImage : SwtImmutableImage_Access;
      imageData2 : ImageData_Access;
      imageData : ImageData_Access;
      originalMutableImage : SwtMutableImage_Access;
      displayInfoSingleton : DisplayInfoSingleton_Access;
      openGLESImage : OpenGLESImage_Access;
      openGLESImageProperties : OpenGLESImageProperties_Access;
      openGLESDeviceImageTranslate : OpenGLESDeviceImageTranslate_Access;
      openGLWidth : Integer;
      openGLHeight : Integer;
   begin
        originalImage2 := originalImage;
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
            return originalImage;
        end if;
        image := null;
        if This.features.isFeature (This.openGLFeatureFactory.OPENGL) then
            displayInfoSingleton := DisplayInfoSingleton_Package.getInstance;
            if (originalImage.getType) >= (OpenGLESImage_Package.TYPE_Id) then
                openGLESImage := (OpenGLESImage_Access (originalImage));
                openGLESImageProperties := openGLESImage.openGLESImageProperties;
                openGLWidth := openGLESImage.openGLBitmap.getWidth;
                openGLHeight := openGLESImage.openGLBitmap.getHeight;
                openGLESImageProperties.scaleX2 := (((Float (width))) / (Float (openGLWidth)));
                openGLESImageProperties.scaleX := openGLESImageProperties.scaleX2;
                openGLESImageProperties.scaleY2 := (((Float (height))) / (Float (openGLHeight)));
                openGLESImageProperties.scaleY := openGLESImageProperties.scaleY2;
                openGLESImageProperties.scaleX := (openGLESImageProperties.scaleX) * (0.75);
                openGLESImageProperties.scaleY := (openGLESImageProperties.scaleY) * (0.75);
                if ((originalImage.getHeight) rem (2)) /= (0) then
                    openGLESImageProperties.scaleX2 := (openGLESImageProperties.scaleX2) + ((1.0) / (Float (openGLWidth)));
                    openGLESImageProperties.scaleY2 := (openGLESImageProperties.scaleY2) + ((1.0) / (Float (openGLHeight)));
                end if;
                image := Image_Access (openGLESImage);
            else
                image := originalImage;
                openGLESImage := OpenGLESImage_Access (This.openGLUtil.addImage (image));
                openGLESImageProperties := openGLESImage.openGLESImageProperties;
                openGLESImageProperties.scaleX2 := Float ((((Float (width))) / (openGLESImage.getWidth)));
                openGLESImageProperties.scaleX := openGLESImageProperties.scaleX2;
                openGLESImageProperties.scaleY2 := Float ((((Float (height))) / (openGLESImage.getHeight)));
                openGLESImageProperties.scaleY := openGLESImageProperties.scaleY2;
                if Java_Starts_With (image.getName, This.INFORMATION) then
                    openGLESImage.openGLESImageTranslate := OpenGLESDeviceImageTranslate_Package.Create;
                    openGLESDeviceImageTranslate := OpenGLESDeviceImageTranslate_Access (openGLESImage.openGLESImageTranslate);
                    openGLESDeviceImageTranslate.translateX := ((displayInfoSingleton.getLastWidth) / (1.4)) / (openGLESImageProperties.scaleX);
                    openGLESDeviceImageTranslate.translateY := ((displayInfoSingleton.getLastHeight) / (4)) / (openGLESImageProperties.scaleY);
                    openGLESImageProperties.scaleX := (openGLESImageProperties.scaleX) * (0.25);
                    openGLESImageProperties.scaleY := (openGLESImageProperties.scaleY) * (0.25);
                else
                    openGLESImageProperties.scaleX := (openGLESImageProperties.scaleX) * (0.75);
                    openGLESImageProperties.scaleY := (openGLESImageProperties.scaleY) * (0.75);
                    if Java_Starts_With (image.getName, This.LEADERBOARD) then
                        openGLESImage.openGLESImageTranslate := OpenGLESDeviceImageTranslate_Package.Create;
                        openGLESDeviceImageTranslate := OpenGLESDeviceImageTranslate_Access (openGLESImage.openGLESImageTranslate);
                        openGLESDeviceImageTranslate.translateX := ((-(displayInfoSingleton.getLastWidth)) / (40)) / (openGLESImageProperties.scaleX);
                    end if;
                    if Java_Starts_With (image.getName, This.LEADERBOARD) then
                        null;
                    else
                        openGLESImageProperties.scaleX := 1.0;
                        openGLESImageProperties.scaleY := 1.0;
                    end if;
                end if;
                image := Image_Access (openGLESImage);
            end if;
        else
            if (originalImage2.isMutable) and then (mutable) then
                originalMutableImage := SwtMutableImage_Access (originalImage2);
                if (originalMutableImage.getImage) /= (null) then
                    imageData2 := originalMutableImage.image.getImageData;
                    imageData := imageData2.scaledTo (width, height);
                    image := Image_Access (SwtMutableImage_Package.Create (SwtDeviceComponent_Package.createImage (imageData)));
                else
                    image := Image_Access (SwtMutableImage_Package.Create (originalMutableImage.getName, PostLoadSwtMutableImageProcessor_Package.Create (originalMutableImage)));
                end if;
            else
                originalImmutableImage := SwtImmutableImage_Access (originalImage2);
                if (originalImmutableImage.getImage) /= (null) then
                    imageData2 := originalImmutableImage.image.getImageData;
                    imageData := imageData2.scaledTo (width, height);
                    image := Image_Access (SwtImmutableImage_Package.Create (originalImage.getName, SwtDeviceComponent_Package.createImage (imageData)));
                else
                    image := Image_Access (SwtImmutableImage_Package.Create (originalImmutableImage.getName, PostLoadSwtImmutableImageProcessor_Package.Create (originalImmutableImage)));
                end if;
            end if;
            image := This.openGLUtil.addImage (image);
        end if;
        return image;
   end createImage2;

   --  throws Exception
   function createImageScale (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; canvasScale : Float; resize : Boolean) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      newWidth : Integer;
      newHeight : Integer;
      image : Image_Access;
      originalImmutableImage : SwtImmutableImage_Access;
      originalImageData : ImageData_Access;
      halfWidthDelta : Integer;
      halfHeightDelta : Integer;
      originalPixelArray : Integer_Array_Access;
      newPixelArray : Integer_Array_Access;
      width : Integer;
      height : Integer;
      i : Integer;
      index2 : Integer;
      index : Integer;
      mutableImage2 : SwtMutableImage_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, ImageCopyUtil_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
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
        image := ImageCopyUtil'Class (This).createImageWH (originalImage, newWidth, newHeight, True);
        if image.isMutable then
            originalImageData := Image_Access (originalImage.getImage).getImageData;
            mutableImage2 := SwtMutableImage_Access (image);
            halfWidthDelta := (((newWidth) - (originalImage.getWidth))) / (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight))) / (2);
            originalPixelArray := new Integer_Array'(0 .. ((originalImage.getWidth) * (originalImage.getHeight)) - 1 => 0);
            newPixelArray := new Integer_Array'(0 .. ((image.getWidth) * (image.getHeight)) - 1 => 0);
            width := originalImage.getWidth;
            height := originalImage.getHeight;
            for i in 0 .. (height) - 1 loop
                originalImageData.getPixels (0, i, width, originalPixelArray, ((i) * (width)));
            end loop;
            for index in halfWidthDelta .. (width) - 1 loop
                for index2 in halfHeightDelta .. (height) - 1 loop
                    newPixelArray ((index) + (((index2) * (width)))) := originalPixelArray ((((index) - (halfWidthDelta))) + (((((index2) - (halfHeightDelta))) * (width))));
                end loop;
            end loop;
            Image_Access (mutableImage2.getImage).getImageData.setPixels (0, 0, image.getWidth, newPixelArray, 0);
            return image;
        else
            originalImmutableImage := SwtImmutableImage_Access (image);
            originalImageData := Image_Access (originalImage.getImage).getImageData;
            halfWidthDelta := (((newWidth) - (originalImage.getWidth))) / (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight))) / (2);
            originalPixelArray := new Integer_Array'(0 .. ((originalImage.getWidth) * (originalImage.getHeight)) - 1 => 0);
            newPixelArray := new Integer_Array'(0 .. ((image.getWidth) * (image.getHeight)) - 1 => 0);
            width := originalImage.getWidth;
            height := originalImage.getHeight;
            for i in 0 .. (height) - 1 loop
                originalImageData.getPixels (0, i, width, originalPixelArray, ((i) * (width)));
            end loop;
            for index in halfWidthDelta .. (width) - 1 loop
                for index2 in halfHeightDelta .. (height) - 1 loop
                    newPixelArray ((index) + (((index2) * (width)))) := originalPixelArray ((((index) - (halfWidthDelta))) + (((((index2) - (halfHeightDelta))) * (width))));
                end loop;
            end loop;
            Image_Access (originalImmutableImage.getImage).getImageData.setPixels (0, 0, image.getWidth, newPixelArray, 0);
            return image;
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

   procedure createImageWH (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageWH (originalImage_Param => originalImage_Param, width => width, height => height, mutable => mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageWH;

   procedure createImage2 (This : in out ImageCopyUtil; originalImage_Param : access Image_Package.Image'Class; width : Integer; height : Integer; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImage2 (originalImage_Param => originalImage_Param, width => width, height => height, mutable => mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

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


