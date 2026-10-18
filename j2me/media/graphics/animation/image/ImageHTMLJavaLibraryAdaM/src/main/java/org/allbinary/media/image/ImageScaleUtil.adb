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


with org.allbinary.graphics.Anchor_Package; use org.allbinary.graphics.Anchor_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.CanvasImage_Package; use playn.core.CanvasImage_Package;
with playn.core.CanvasSurface_Package; use playn.core.CanvasSurface_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package body org.allbinary.media.image.ImageScaleUtil_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package CanvasImage_Package renames Standard.playn.core.CanvasImage_Package;
   package CanvasSurface_Package renames Standard.playn.core.CanvasSurface_Package;
   procedure Initialize_Fields (This : in out ImageScaleUtil'Class) is
   begin
      null;
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
      scaleX : Float;
      scaleY : Float;
   begin
        scaleX := (scaleNominatorX) / (scaleDenominatorX);
        scaleY := (scaleNominatorY) / (scaleDenominatorY);
        return ImageScaleUtil'Class (This).createImage (imageCache, originalImage, scaleX, scaleY, cached);
   end createImage3;

   --  throws Exception
   function createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) return Image_Access is
      imageCache : constant ImageCache_Access := ImageCache_Access (imageCache_Param);
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
   begin
        return ImageScaleUtil'Class (This).createImageInternal (originalImage, scaleX, scaleY);
   end createImage;

   --  throws Exception
   function createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      originalPlayNImage : Image_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
      htmlImage : PlaynMutableImage_Access;
      canvasImage : CanvasImage_Access;
      canvasSurface : CanvasSurface_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.getInstance (Integer (((originalImage.getWidth) * (scaleX))), Integer (((originalImage.getHeight) * (scaleY))));
        if image.isMutable then
            originalPlayNImage := null;
            if originalImage.isMutable then
                originalHTMLImage := PlaynMutableImage_Access (originalImage);
                originalPlayNImage := Image_Access (originalHTMLImage.getImage);
            else
                originalHTMLImage := PlaynImmutableImage_Access (originalImage);
                originalPlayNImage := Image_Access (originalHTMLImage.getImage);
            end if;
            htmlImage := PlaynMutableImage_Access (image);
            canvasImage := CanvasImage_Access (htmlImage.getImage);
            canvasSurface := htmlImage.getCanvasSurface (canvasImage);
            canvasSurface.drawImage (originalPlayNImage, 0, 0, image.getWidth, image.getHeight, 0, 0, originalPlayNImage.width, originalPlayNImage.height);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImageInternal;

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

   procedure createImage (This : in out ImageScaleUtil; imageCache_Param : access ImageCache_Package.ImageCache'Class; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float; cached : Boolean) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImage (imageCache_Param, originalImage_Param, scaleX, scaleY, cached);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageInternal (This : in out ImageScaleUtil; originalImage_Param : access Image_Package.Image'Class; scaleX : Float; scaleY : Float) is
      Java_Result : constant Image_Access := ImageScaleUtil'Class (This).createImageInternal (originalImage_Param, scaleX, scaleY);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageInternal;

begin
   null;
   instance := ImageScaleUtil_Package.Create;

end org.allbinary.media.image.ImageScaleUtil_Package;


