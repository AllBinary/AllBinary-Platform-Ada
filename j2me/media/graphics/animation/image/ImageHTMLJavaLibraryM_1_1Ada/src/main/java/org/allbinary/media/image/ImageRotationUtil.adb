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


package body org.allbinary.media.image.ImageRotationUtil_Package is

   procedure Initialize_Fields (This : in out ImageRotationUtil'Class) is
   begin
      null;
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
      Initialize (This.all);
      return This;
   end Create;

   function rotateImage (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; totalAngle : Integer) return Image_Access is
      htmlImage : PlaynMutableImage_Access;
      canvasImage : CanvasImage_Access;
      canvasSurface : CanvasSurface_Access;
      image2 : Image_Access;
   begin
        if image.isMutable then
            htmlImage := PlaynMutableImage_Access (image);
            canvasImage := CanvasImage_Access (htmlImage.getImage);
            canvasSurface := htmlImage.getCanvasSurface (canvasImage);
            canvasSurface.translate ((originalImage.getWidth) / (2), (originalImage.getHeight) / (2));
            image2 := This.rotateImageCanvasSurface (originalImage, image, canvasSurface, totalAngle);
            This.drawImage (originalImage, image, canvasSurface);
            return image2;
        else
            return null;
        end if;
   end rotateImage;

   function rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; canvasSurface : CanvasSurface_Access; totalAngle : Integer) return Image_Access is
   begin
        if image.isMutable then
            canvasSurface.translate ((-(originalImage.getWidth)) / (2), (-(originalImage.getHeight)) / (2));
            canvasSurface.clear;
            canvasSurface.translate ((originalImage.getWidth) / (2), (originalImage.getHeight) / (2));
            return This.rotateImageCanvasSurface (originalImage, image, canvasSurface, totalAngle);
        else
            return null;
        end if;
   end rotateImageCanvasSurfaceClear;

   function rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; canvasSurface : CanvasSurface_Access; totalAngle : Integer) return Image_Access is
   begin
        if image.isMutable then
            canvasSurface.rotate (Float (Ada.Numerics.Long_Elementary_Functions.ToRadians (totalAngle)));
            return image;
        else
            return null;
        end if;
   end rotateImageCanvasSurface;

   procedure drawImage (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; canvasSurface : CanvasSurface_Access) is
      originalPlayNImage : Image_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
   begin
        originalPlayNImage := null;
        if originalImage.isMutable then
            originalHTMLImage := PlaynMutableImage_Access (originalImage);
            originalPlayNImage := Image_Access (originalHTMLImage.getImage);
        else
            originalHTMLImage := PlaynImmutableImage_Access (originalImage);
            originalPlayNImage := Image_Access (originalHTMLImage.getImage);
        end if;
        canvasSurface.drawImage (originalPlayNImage, (-(originalImage.getWidth)) / (2), (-(originalImage.getHeight)) / (2));
   end drawImage;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer) return Image_Access is
      image : Image_Access;
      rotatedImage : Image_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.createImageWH (originalImage.getWidth, originalImage.getHeight);
        rotatedImage := This.rotateImage (originalImage, image, rotationInDegrees);
        if (rotatedImage) = (null) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
        return rotatedImage;
   end createRotatedImage;

   procedure getInstance is
      Java_Result : constant ImageRotationUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure rotateImage (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImage (originalImage, image, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImage;

   procedure rotateImageCanvasSurfaceClear (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; canvasSurface : CanvasSurface_Access; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImageCanvasSurfaceClear (originalImage, image, canvasSurface, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImageCanvasSurfaceClear;

   procedure rotateImageCanvasSurface (This : in out ImageRotationUtil; originalImage : Image_Access; image : Image_Access; canvasSurface : CanvasSurface_Access; totalAngle : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).rotateImageCanvasSurface (originalImage, image, canvasSurface, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImageCanvasSurface;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage : Image_Access; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage, rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


