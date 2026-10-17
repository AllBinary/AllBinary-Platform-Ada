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


package body org.allbinary.media.image.ImageCopyUtil_Package is

   procedure Initialize_Fields (This : in out ImageCopyUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageCreationUtil := ImageCreationUtil_Package.getInstance;
      This.anchor := Anchor_Package.TOP_LEFT;
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
      Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function createImageForRotation (This : in out ImageCopyUtil; originalImage : Image_Access) return Image_Access is
   begin
        return This.createImage (originalImage);
   end createImageForRotation;

   --  throws Exception
   function createImage (This : in out ImageCopyUtil; originalImage : Image_Access) return Image_Access is
      image : Image_Access;
   begin
        image := This.imageCreationUtil.getInstance (originalImage.getWidth, originalImage.getHeight);
        if image.isMutable then
            image.getGraphics.drawImage (originalImage, 0, 0, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImage;

   --  throws Exception
   function createImageScale (This : in out ImageCopyUtil; originalImage : Image_Access; canvasScale : Float; resize : Boolean) return Image_Access is
      newWidth : Integer;
      newHeight : Integer;
      image : Image_Access;
      halfWidthDelta : Integer;
      halfHeightDelta : Integer;
      graphics : Graphics_Access;
   begin
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
        image := This.imageCreationUtil.getInstance (newWidth, newHeight);
        if image.isMutable then
            halfWidthDelta := (((newWidth) - (originalImage.getWidth))) / (2);
            halfHeightDelta := (((newHeight) - (originalImage.getHeight))) / (2);
            graphics := image.getGraphics;
            graphics.drawImage (originalImage, halfWidthDelta, halfHeightDelta, This.anchor);
            return image;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Not Mutable")));
        end if;
   end createImageScale;

   procedure getInstance is
      Java_Result : constant ImageCopyUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure createImageForRotation (This : in out ImageCopyUtil; originalImage : Image_Access) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageForRotation (originalImage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageForRotation;

   procedure createImage (This : in out ImageCopyUtil; originalImage : Image_Access) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImage (originalImage);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImage;

   procedure createImageScale (This : in out ImageCopyUtil; originalImage : Image_Access; canvasScale : Float; resize : Boolean) is
      Java_Result : constant Image_Access := ImageCopyUtil'Class (This).createImageScale (originalImage, canvasScale, resize);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createImageScale;

begin
   null;
   instance := ImageCopyUtil_Package.Create;

end org.allbinary.media.image.ImageCopyUtil_Package;


