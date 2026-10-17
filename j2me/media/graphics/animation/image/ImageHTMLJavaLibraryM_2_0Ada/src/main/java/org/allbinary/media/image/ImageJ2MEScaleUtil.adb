--
-- AllBinary Open License Version 1
-- Copyright (c) 2023 AllBinary
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


package body org.allbinary.media.image.ImageJ2MEScaleUtil_Package is

   procedure Initialize_Fields (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageJ2MEScaleUtil_Access is
   begin
        return ImageJ2MEScaleUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageJ2MEScaleUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageJ2MEScaleUtil_Access is
      This : constant ImageJ2MEScaleUtil_Access := new ImageJ2MEScaleUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) return Image_Access_Array_Access is
      scaledImages : Image_Access_Array_Access;
      index : Integer;
   begin
        scaledImages := new Image_Access_Array'(0 .. (images'Length) - 1 => null);
        index := images'Length;
        while (Java_Pre_Decrement (index)) >= (0) loop
            scaledImages (index) := This.scale (images (index), width, height);
        end loop;
        return scaledImages;
   end scaleArray;

   --  throws Exception
   function scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer) return Image_Access is
      originalPlayNImage : CoreImage_Access;
      originalHTMLImage : PlaynImmutableImage_Access;
      scaledImage : Image_Access;
      htmlImage : PlaynMutableImage_Access;
      scaledPlayNImage : ImageImpl_Access;
      canvas : Canvas_Access;
   begin
        originalPlayNImage := null;
        if image.isMutable then
            originalHTMLImage := PlaynMutableImage_Access (image);
            originalPlayNImage := CoreImage_Access (originalHTMLImage.getImage);
        else
            originalHTMLImage := PlaynImmutableImage_Access (image);
            originalPlayNImage := CoreImage_Access (originalHTMLImage.getImage);
        end if;
        scaledImage := Image_Package.createImageWH (width, height);
        htmlImage := PlaynMutableImage_Access (scaledImage);
        scaledPlayNImage := ImageImpl_Access (htmlImage.getImage);
        canvas := (HtmlGraphics_Access (PlayN_Package.getInstance.graphics)).get (HtmlImage_Access (scaledPlayNImage));
        (ImageImpl_Access (originalPlayNImage)).draw (canvas.gc, 0, 0, scaledImage.getWidth, scaledImage.getHeight, 0, 0, image.getWidth, image.getHeight);
        return scaledImage;
   end scale;

   procedure getInstance is
      Java_Result : constant ImageJ2MEScaleUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure scaleArray (This : in out ImageJ2MEScaleUtil; images : Image_Access_Array_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access_Array_Access := ImageJ2MEScaleUtil'Class (This).scaleArray (images, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scaleArray;

   procedure scale (This : in out ImageJ2MEScaleUtil; image : Image_Access; width : Integer; height : Integer) is
      Java_Result : constant Image_Access := ImageJ2MEScaleUtil'Class (This).scale (image, width, height);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end scale;

begin
   null;
   instance := ImageJ2MEScaleUtil_Package.Create;

end org.allbinary.media.image.ImageJ2MEScaleUtil_Package;


