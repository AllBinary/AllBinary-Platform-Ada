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
      This.imageUtil := ImageUtil_Package.getInstance;
      This.imageJ2SEUtil := ImageJ2SEUtil_Package.getInstance;
      This.imageCreationUtil := ImageCreationUtil_Package.getInstance;
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
      image : Image_Access;
   begin
        width := originalImage.getWidth;
        height := originalImage.getHeight;
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        image := null;
        if cached then
            image := imageCache.get (To_Unbounded_String (Ada.Tags.Expanded_Name (This.all'Tag)), Integer (((Float (width)) * (scaleX))), Integer (((Float (height)) * (scaleY))));
        else
            image := imageCache.get (To_Unbounded_String ("createImage"), Integer (((Float (width)) * (scaleX))), Integer (((Float (height)) * (scaleY))));
        end if;
        ImageScaleUtil'Class (This).scale (originalImage, image, scaleX, scaleY, True);
        return image;
   end createImage3;

   --  throws Exception
   procedure scale2 (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; originalImageArray : Image_Access_Array_Access; ximageToShowArray : Image_Access_Array_Access; unused : Integer; scaleX : Float; scaleY : Float; maxScaleX : Float; maxScaleY : Float) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        if (((maxScaleX) * (originalImage.getWidth)) > (originalImageArray (0).getWidth)) or else (((maxScaleY) * (originalImage.getHeight)) > (originalImageArray (0).getHeight)) then
            originalImageArray (0) := This.imageCreationUtil.createImage (originalImage.getWidth, originalImage.getHeight, maxScaleX, maxScaleY);
        end if;
        ImageScaleUtil'Class (This).scale (originalImage, originalImageArray (0), scaleX, scaleY, False);
   end scale2;

   procedure scale (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; newMaxSizeImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; clear : Boolean) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      newMaxSizeImage : constant Image_Access := Image_Access (newMaxSizeImage_Param);
      bufferedImage : BufferedImage_Access;
      newBufferedImage : BufferedImage_Access;
      at_Id : AffineTransform_Access;
      g : Graphics2D_Access;
   begin
        bufferedImage := This.imageUtil.getBufferedImage (originalImage);
        newBufferedImage := This.imageUtil.getBufferedImage (newMaxSizeImage);
        at_Id := AffineTransform_Package.getScaleInstance (scaleX, scaleY);
        g := newBufferedImage.createGraphics;
        if clear then
            g.setBackground (This.imageJ2SEUtil.TRANSPARENT_COLOR);
            g.clearRect (0, 0, newBufferedImage.getWidth, newBufferedImage.getHeight);
        end if;
        g.drawRenderedImage (bufferedImage, at_Id);
        g.dispose;
   end scale;

   procedure createImage2 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage2 (imageCache_Param, originalImage_Param, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage2;

   procedure createImage3 (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleNominatorX : Float; scaleDenominatorX : Float; scaleNominatorY : Float; scaleDenominatorY : Float; cached : Boolean; mutable : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage3 (imageCache_Param, originalImage_Param, scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, mutable);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage3;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


