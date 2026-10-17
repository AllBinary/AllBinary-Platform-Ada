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


package body org.allbinary.media.image.ImageScaleUtil_Package is

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
        return ImageScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageScaleUtil_Access is
      This : constant ImageScaleUtil_Access := new ImageScaleUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) return Image_Access is
   begin
        return This.createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, True);
   end createImage2;

   --  throws Exception
   function createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) return Image_Access is
      width : Integer;
      height : Integer;
      scaleX : Float;
      scaleY : Float;
      scaledImage : Image_Access;
   begin
        if not (This.features.isFeature (This.gameFeatureFactory.POST_IMAGE_LOADING_MODIFICATION)) then
            This.logUtil.putF (This.NO_COPY, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
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
   procedure scale2 (This : in out ImageScaleUtil; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float) is
   begin
        This.scale (originalImage, originalImageArray, ximageToShowArray, unused, scaleX, scaleY, maxScaleX, maxScaleY, True);
   end scale2;

   --  throws Exception
   procedure scale (This : in out ImageScaleUtil; originalImage : Image_Access; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float; mutable : Boolean) is
      width : Integer;
      height : Integer;
      scaledImage : Image_Access;
   begin
        width := originalImage.getWidth;
        height := originalImage.getHeight;
        scaledImage := This.imageCopyUtil.createImageWH (originalImage, Integer (((scaleX) * (Float (width)))), Integer (((scaleY) * (Float (height)))), mutable);
        originalImageArray (0) := scaledImage;
   end scale;

   procedure getInstance is
      Java_Result : constant ImageScaleUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache : ImageCache_Access; originalImage : Image_Access; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache, originalImage, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


