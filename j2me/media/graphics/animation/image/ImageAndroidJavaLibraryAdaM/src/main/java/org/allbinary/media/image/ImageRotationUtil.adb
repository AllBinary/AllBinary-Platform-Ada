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
      This.matrix := Matrix_Package.Create;
      This.anchor := Anchor_Package.TOP_LEFT;
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
      bitmap : Bitmap_Access;
      width : Integer;
      height : Integer;
      canvas : Canvas_Access;
   begin
        image := ImageCreationUtil_Package.getInstance.createImageWH (originalImage.getWidth, originalImage.getHeight);
        if image.isMutable then
            bitmap := (AndroidImageInterface_Access (image)).getBitmap;
            width := bitmap.getWidth;
            height := bitmap.getHeight;
            This.matrix.setRotate (Float (rotationInDegrees), Float ((Java_Shift_Right_Arithmetic (width, 1))), Float ((Java_Shift_Right_Arithmetic (height, 1))));
            canvas := (AndroidImageInterface_Access (image)).getCanvas;
            canvas.concat (This.matrix);
            image.getGraphics.drawImage (originalImage, 0, 0, This.anchor);
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


