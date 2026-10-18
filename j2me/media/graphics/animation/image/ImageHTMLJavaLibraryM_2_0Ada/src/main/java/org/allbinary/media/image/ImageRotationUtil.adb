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


with org.microemu.device.playn.PlaynImmutableImage_Package; use org.microemu.device.playn.PlaynImmutableImage_Package;
with org.microemu.device.playn.PlaynMutableImage_Package; use org.microemu.device.playn.PlaynMutableImage_Package;
with playn.core.CoreImage_Package; use playn.core.CoreImage_Package;
with playn.core.ImageImpl_Package; use playn.core.ImageImpl_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package body org.allbinary.media.image.ImageRotationUtil_Package is

   package PlaynImmutableImage_Package renames Standard.org.microemu.device.playn.PlaynImmutableImage_Package;
   package PlaynMutableImage_Package renames Standard.org.microemu.device.playn.PlaynMutableImage_Package;
   package CoreImage_Package renames Standard.playn.core.CoreImage_Package;
   package ImageImpl_Package renames Standard.playn.core.ImageImpl_Package;
   procedure Initialize_Fields (This : in out ImageRotationUtil'Class) is
   begin
      null;
      This.playnUtil := HTMLPlaynUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageRotationUtil_Access is
   begin
        return ImageRotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageRotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageRotationUtil_Access is
      This : constant ImageRotationUtil_Access := new ImageRotationUtil;
   begin
      ImageRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      htmlImage : PlaynMutableImage_Access;
      canvasImage : ImageImpl_Access;
      canvas : Canvas_Access;
      image2 : Image_Access;
   begin
        if image.isMutable then
            htmlImage := PlaynMutableImage_Access (image);
            canvasImage := ImageImpl_Access (htmlImage.getImage);
            canvas := This.playnUtil.getCanvas (canvasImage);
            canvas.save;
            canvas.clear;
            canvas.translate ((originalImage.getWidth) / (2), (originalImage.getHeight) / (2));
            image2 := ImageRotationUtil'Class (This).rotateImageCanvasSurface (originalImage, image, canvas, totalAngle);
            ImageRotationUtil'Class (This).drawImage (originalImage, image, canvas);
            canvas.restore;
            return image2;
        else
            return null;
        end if;
   end rotateImage;

   function rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      canvasSurface : constant Canvas_Access := Canvas_Access (canvasSurface_Param);
   begin
        if image.isMutable then
            canvasSurface.translate ((-(originalImage.getWidth)) / (2), (-(originalImage.getHeight)) / (2));
            canvasSurface.clear;
            canvasSurface.translate ((originalImage.getWidth) / (2), (originalImage.getHeight) / (2));
            return ImageRotationUtil'Class (This).rotateImageCanvasSurface (originalImage, image, canvasSurface, totalAngle);
        else
            return null;
        end if;
   end rotateImageCanvasSurfaceClear;

   function rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      canvasSurface : constant Canvas_Access := Canvas_Access (canvasSurface_Param);
   begin
        if image.isMutable then
            canvasSurface.rotate (Float (Ada.Numerics.Long_Elementary_Functions.ToRadians (totalAngle)));
            return image;
        else
            return null;
        end if;
   end rotateImageCanvasSurface;

   procedure drawImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class) is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      canvasSurface : constant Canvas_Access := Canvas_Access (canvasSurface_Param);
      originalPlayNImage : CoreImage_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
   begin
        originalPlayNImage := null;
        if originalImage.isMutable then
            originalHTMLImage := PlaynMutableImage_Access (originalImage);
            originalPlayNImage := CoreImage_Access (originalHTMLImage.getImage);
        else
            originalHTMLImage := PlaynImmutableImage_Access (originalImage);
            originalPlayNImage := CoreImage_Access (originalHTMLImage.getImage);
        end if;
        canvasSurface.draw (originalPlayNImage, (-(originalImage.getWidth)) / (2), (-(originalImage.getHeight)) / (2));
   end drawImage;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      rotatedImage : Image_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.createImageWH (originalImage.getWidth, originalImage.getHeight);
        rotatedImage := ImageRotationUtil'Class (This).rotateImage (originalImage, image, rotationInDegrees);
        if (rotatedImage) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
        return rotatedImage;
   end createRotatedImage;

   procedure rotateImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImage (originalImage_Param => originalImage_Param, image_Param => image_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImage;

   procedure rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImageCanvasSurfaceClear (originalImage_Param => originalImage_Param, image_Param => image_Param, canvasSurface_Param => canvasSurface_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImageCanvasSurfaceClear;

   procedure rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; canvasSurface_Param : access Canvas_Package.Canvas'Class; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImageCanvasSurface (originalImage_Param => originalImage_Param, image_Param => image_Param, canvasSurface_Param => canvasSurface_Param, totalAngle => totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImageCanvasSurface;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage_Param => originalImage_Param, rotationInDegrees => rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


