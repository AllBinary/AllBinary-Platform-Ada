-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.ImageCreationUtil_Package; use org.allbinary.media.image.ImageCreationUtil_Package;

package body org.allbinary.media.image.ImageModifierUtil_Package is

   package Anchor_Package renames Standard.org.allbinary.graphics.Anchor_Package;
   package PreLogUtil_Package renames Standard.org.allbinary.logic.communication.log.PreLogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ImageModifierUtil'Class) is
   begin
      null;
      This.imageUtil := ImageUtil_Package.getInstance;
      This.colorArray := new Integer_Array'(0 .. (1) - 1 => 0);
   end Initialize_Fields;

   procedure Initialize (This : in out ImageModifierUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ImageModifierUtil_Access is
      This : constant ImageModifierUtil_Access := new ImageModifierUtil;
   begin
      ImageModifierUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstanceOrCreate return ImageModifierUtil_Access is
   begin
        return ImageModifierUtil_Package.instance;
   end getInstanceOrCreate;

   procedure setBasicColorP (This : in out ImageModifierUtil; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        null;
   end setBasicColorP;

   procedure setColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      newBufferedImage : BufferedImage_Access;
      r : Short_Integer;
      g : Short_Integer;
      b : Short_Integer;
      width : Integer;
      height : Integer;
      colorModel : ColorModel_Access;
      dataElements : Java_Object_Access;
      ax : Integer;
      rx : Integer;
      gx : Integer;
      bx : Integer;
      index2 : Integer;
      index : Integer;
   begin
        newBufferedImage := This.imageUtil.getBufferedImage (image);
        r := basicColor.red;
        g := basicColor.green;
        b := basicColor.blue;
        width := image.getWidth;
        height := image.getHeight;
        colorModel := null;
        dataElements := null;
        ax := 0;
        rx := 0;
        gx := 0;
        bx := 0;
        for index in 0 .. (width) - 1 loop
            for index2 in 0 .. (height) - 1 loop
                colorModel := newBufferedImage.getColorModel;
                dataElements := newBufferedImage.getRaster.getDataElements (index, index2, null);
                ax := colorModel.getAlpha (dataElements);
                rx := colorModel.getRed (dataElements);
                gx := colorModel.getGreen (dataElements);
                bx := colorModel.getBlue (dataElements);
                if (((rx) /= (0)) or else ((gx) /= (0))) or else ((bx) /= (0)) then
                    newBufferedImage.setRGB (index, index2, Java_Or (Java_Or (Java_Or ((Java_Shift_Left (ax, 24)), (Java_Shift_Left (Integer (r), 16))), (Java_Shift_Left (Integer (g), 8))), Integer (Integer ((b)))));
                end if;
            end loop;
        end loop;
   end setColor;

   procedure changeColor (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
      newBufferedImage : BufferedImage_Access;
      MAX : Float;
      r : Float;
      g : Float;
      b : Float;
      width : Integer;
      height : Integer;
      colorModel : ColorModel_Access;
      dataElements : Java_Object_Access;
      ax : Integer;
      rx : Integer;
      gx : Integer;
      bx : Integer;
      index2 : Integer;
      index : Integer;
   begin
        newBufferedImage := This.imageUtil.getBufferedImage (image);
        MAX := 255.0;
        r := ((Float (basicColor.red))) / (MAX);
        g := ((Float (basicColor.green))) / (MAX);
        b := ((Float (basicColor.blue))) / (MAX);
        width := image.getWidth;
        height := image.getHeight;
        colorModel := null;
        dataElements := null;
        ax := 0;
        rx := 0;
        gx := 0;
        bx := 0;
        for index in 0 .. (width) - 1 loop
            for index2 in 0 .. (height) - 1 loop
                colorModel := newBufferedImage.getColorModel;
                dataElements := newBufferedImage.getRaster.getDataElements (index, index2, null);
                ax := colorModel.getAlpha (dataElements);
                rx := colorModel.getRed (dataElements);
                gx := colorModel.getGreen (dataElements);
                bx := colorModel.getBlue (dataElements);
                rx := Integer ((rx) * (r));
                gx := Integer ((gx) * (g));
                bx := Integer ((bx) * (b));
                newBufferedImage.setRGB (index, index2, Java_Or (Java_Or (Java_Or ((Java_Shift_Left (ax, 24)), (Java_Shift_Left (rx, 16))), (Java_Shift_Left (gx, 8))), (bx)));
            end loop;
        end loop;
   end changeColor;

   procedure setAlpha (This : in out ImageModifierUtil; unusedOriginalImage_Param : access Image_Package.Image'Class; image_Param : access Image_Package.Image'Class; imageIndex : Integer; alphaInt : Integer) is
      unusedOriginalImage : constant Image_Access := Image_Access (unusedOriginalImage_Param);
      image : constant Image_Access := Image_Access (image_Param);
      alpha : Short_Short_Integer;
      newBufferedImage : BufferedImage_Access;
      width : Integer;
      height : Integer;
      raster : WritableRaster_Access;
      index2 : Integer;
      index : Integer;
   begin
        alpha := Short_Short_Integer (alphaInt);
        newBufferedImage := This.imageUtil.getBufferedImage (image);
        width := image.getWidth;
        height := image.getHeight;
        raster := newBufferedImage.getAlphaRaster;
        for index in 0 .. (width) - 1 loop
            for index2 in 0 .. (height) - 1 loop
                raster.getPixel (index, index2, This.colorArray);
                This.colorArray (0) := Java_And (Integer (Integer (alpha)), This.colorArray (0));
                raster.setPixel (index, index2, This.colorArray);
            end loop;
        end loop;
   end setAlpha;

   function getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) return Image_Access_Array_Access is
      newImageArray : Image_Access_Array_Access;
      size : Integer;
      originalImage : Image_Access;
      image : Image_Access;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            newImageArray := new Image_Access_Array'(0 .. (originalImageArray'Length) - 1 => null);
            size := newImageArray'Length;
            originalImage := null;
            for index in 0 .. (size) - 1 loop
                originalImage := originalImageArray (index);
                image := ImageCreationUtil_Package.getInstance.createImageWH (originalImage.getWidth, originalImage.getHeight);
                image.getGraphics.drawImage (originalImage, 0, 0, Anchor_Package.TOP_LEFT);
                newImageArray (index) := image;
            end loop;
            return newImageArray;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            PreLogUtil_Package.putOE (commonStrings.EXCEPTION_Id, ImageModifierUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("getImageArray"), e);
            return originalImageArray;
                end;
        end;
   end getImageArray;

   procedure handleImage (This : in out ImageModifierUtil; imageArray : Image_Access_Array_Access; index : Integer; image_Param : access Image_Package.Image'Class) is
      image : constant Image_Access := Image_Access (image_Param);
   begin
        null;
   end handleImage;

   procedure reset (This : in out ImageModifierUtil) is
   begin
        null;
   end reset;

   procedure getImageArray (This : in out ImageModifierUtil; originalImageArray : Image_Access_Array_Access) is
      Java_Result : constant Image_Access_Array_Access := ImageModifierUtil'Class (This).getImageArray (originalImageArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getImageArray;

begin
   null;
   instance := ImageModifierUtil_Package.Create;

end org.allbinary.media.image.ImageModifierUtil_Package;


