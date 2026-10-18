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



package body org.allbinary.media.image.ImageJ2SERotationUtil_Package is

   procedure Initialize_Fields (This : in out ImageJ2SERotationUtil'Class) is
   begin
      null;
      This.imageUtil := ImageUtil_Package.getInstance;
      This.imageJ2SEUtil := ImageJ2SEUtil_Package.getInstance;
      This.TWO_PIE := (2) * (Math_Package.PI);
   end Initialize_Fields;


   function getInstance return ImageJ2SERotationUtil_Access is
   begin
        return ImageJ2SERotationUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageJ2SERotationUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageJ2SERotationUtil_Access is
      This : constant ImageJ2SERotationUtil_Access := new ImageJ2SERotationUtil;
   begin
      ImageJ2SERotationUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function getRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) return BufferedImage_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
   begin
        return ImageJ2SERotationUtil'Class (This).getRotatedImageRadians (bufferedImage, ((This.TWO_PIE) * (Long_Float (totalAngle))) / (360.0));
   end getRotatedImage;

   function getRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; radians : Long_Float) return BufferedImage_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : BufferedImage_Access;
   begin
        newBufferedImage := This.imageUtil.create (bufferedImage.getWidth (null), bufferedImage.getHeight (null));
        return ImageJ2SERotationUtil'Class (This).drawRotatedImageRadians (bufferedImage, newBufferedImage, newBufferedImage.createGraphics, radians);
   end getRotatedImageRadians;

   function drawRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; g_Param : access Graphics2D_Package.Graphics2D'Class; radians : Long_Float) return BufferedImage_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : constant BufferedImage_Access := BufferedImage_Access (newBufferedImage_Param);
      g : constant Graphics2D_Access := Graphics2D_Access (g_Param);
   begin
        g.rotate (radians, (newBufferedImage.getWidth (null)) / (2), (newBufferedImage.getHeight (null)) / (2));
        g.drawImage (bufferedImage, 0, 0, bufferedImage.getWidth (null), bufferedImage.getHeight (null), null);
        g.dispose;
        return newBufferedImage;
   end drawRotatedImageRadians;

   function rotateImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) return BufferedImage_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : constant BufferedImage_Access := BufferedImage_Access (newBufferedImage_Param);
      g : Graphics2D_Access;
   begin
        g := newBufferedImage.createGraphics;
        g.setBackground (This.imageJ2SEUtil.TRANSPARENT_COLOR);
        g.clearRect (0, 0, newBufferedImage.getWidth, newBufferedImage.getHeight);
        return ImageJ2SERotationUtil'Class (This).drawRotatedImageRadians (bufferedImage, newBufferedImage, g, ((This.TWO_PIE) * (Long_Float (totalAngle))) / (360.0));
   end rotateImage;

   function createRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) return BufferedImage_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      newBufferedImage : constant BufferedImage_Access := BufferedImage_Access (newBufferedImage_Param);
      g : Graphics2D_Access;
   begin
        g := newBufferedImage.createGraphics;
        return ImageJ2SERotationUtil'Class (This).drawRotatedImageRadians (bufferedImage, newBufferedImage, g, ((This.TWO_PIE) * (Long_Float (totalAngle))) / (360.0));
   end createRotatedImage;

   function getRotatedImages (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) return BufferedImage_Access_Array_Access is
      bufferedImage : constant Image_Access := Image_Access (bufferedImage_Param);
      bufferedImageArray : BufferedImage_Access_Array_Access;
      arc : Long_Float;
      size : Integer;
      radians : Long_Float;
      index : Integer;
   begin
        bufferedImageArray := new BufferedImage_Access_Array'(0 .. (numberOfFrames) - 1 => null);
        arc := (((This.TWO_PIE)) * (Long_Float (totalAngle))) / (360.0);
        size := bufferedImageArray'Length;
        for index in 0 .. (size) - 1 loop
            radians := (((arc) / (Long_Float (size)))) * (Long_Float (index));
            bufferedImageArray (index) := ImageJ2SERotationUtil'Class (This).getRotatedImageRadians (bufferedImage, radians);
        end loop;
        return bufferedImageArray;
   end getRotatedImages;

   function createSpriteImage (This : in out ImageJ2SERotationUtil; bufferedImageArray : BufferedImage_Access_Array_Access) return BufferedImage_Access is
      columns : Integer;
      rows : Integer;
      size : Integer;
      firstBufferedImage : BufferedImage_Access;
      bufferedImage : BufferedImage_Access;
      g : Graphics2D_Access;
      columnIndex : Integer;
      rowIndex : Integer;
      nextBufferedImage : BufferedImage_Access;
      index : Integer;
   begin
        columns := 9;
        rows := 0;
        size := bufferedImageArray'Length;
        if (size) < (columns) then
            columns := size;
        end if;
        rows := ((size) / (columns));
        if ((size) rem (columns)) /= (0) then
            rows := rows + 1;
        end if;
        firstBufferedImage := bufferedImageArray (0);
        bufferedImage := This.imageUtil.create ((firstBufferedImage.getWidth (null)) * (columns), (firstBufferedImage.getHeight (null)) * (rows));
        g := bufferedImage.createGraphics;
        columnIndex := 0;
        rowIndex := 0;
        nextBufferedImage := null;
        for index in 0 .. (size) - 1 loop
            if (((index) / (9)) /= (0)) and then (((index) rem (9)) = (0)) then
                rowIndex := rowIndex + 1;
                columnIndex := 0;
            end if;
            nextBufferedImage := bufferedImageArray (index);
            g.drawImage (nextBufferedImage, (nextBufferedImage.getWidth (null)) * (columnIndex), (nextBufferedImage.getHeight (null)) * (rowIndex), nextBufferedImage.getWidth (null), nextBufferedImage.getHeight (null), null);
            columnIndex := columnIndex + 1;
        end loop;
        g.dispose;
        return bufferedImage;
   end createSpriteImage;

   procedure getRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; totalAngle : Integer) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).getRotatedImage (bufferedImage_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImage;

   procedure getRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; radians : Long_Float) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).getRotatedImageRadians (bufferedImage_Param, radians);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImageRadians;

   procedure drawRotatedImageRadians (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; g_Param : access Graphics2D_Package.Graphics2D'Class; radians : Long_Float) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).drawRotatedImageRadians (bufferedImage_Param, newBufferedImage_Param, g_Param, radians);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end drawRotatedImageRadians;

   procedure rotateImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).rotateImage (bufferedImage_Param, newBufferedImage_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end rotateImage;

   procedure createRotatedImage (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; newBufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; totalAngle : Integer) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).createRotatedImage (bufferedImage_Param, newBufferedImage_Param, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createRotatedImage;

   procedure getRotatedImages (This : in out ImageJ2SERotationUtil; bufferedImage_Param : access Image_Package.Image'Class; numberOfFrames : Integer; totalAngle : Integer) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImageJ2SERotationUtil'Class (This).getRotatedImages (bufferedImage_Param, numberOfFrames, totalAngle);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRotatedImages;

   procedure createSpriteImage (This : in out ImageJ2SERotationUtil; bufferedImageArray : BufferedImage_Access_Array_Access) is
      Java_Result : constant BufferedImage_Access := ImageJ2SERotationUtil'Class (This).createSpriteImage (bufferedImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end createSpriteImage;

begin
   null;
   instance := ImageJ2SERotationUtil_Package.Create;

end org.allbinary.media.image.ImageJ2SERotationUtil_Package;


