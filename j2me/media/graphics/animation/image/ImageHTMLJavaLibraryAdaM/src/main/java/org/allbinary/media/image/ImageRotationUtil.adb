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
      ImageRotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) return Image_Access is
      originalImage : constant Image_Access := Image_Access (originalImage_Param);
      image : Image_Access;
      originalPlayNImage : Image_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
      htmlImage : PlaynMutableImage_Access;
      canvasImage : CanvasImage_Access;
      canvasSurface : CanvasSurface_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.getInstance (originalImage.getWidth, originalImage.getHeight);
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
            canvasSurface.translate ((originalPlayNImage.width) / (2), (originalPlayNImage.height) / (2));
            canvasSurface.rotate (Float (Ada.Numerics.Long_Elementary_Functions.ToRadians (rotationInDegrees)));
            canvasSurface.drawImage (originalPlayNImage, (-(originalPlayNImage.width)) / (2), (-(originalPlayNImage.height)) / (2));
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createRotatedImage;

   procedure createRotatedImage (This : in out ImageRotationUtil; originalImage_Param : access Image_Package.Image'Class; rotationInDegrees : Integer) is
      Java_Result : constant Image_Access := ImageRotationUtil'Class (This).createRotatedImage (originalImage_Param, rotationInDegrees);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

begin
   null;
   instance := ImageRotationUtil_Package.Create;

end org.allbinary.media.image.ImageRotationUtil_Package;


