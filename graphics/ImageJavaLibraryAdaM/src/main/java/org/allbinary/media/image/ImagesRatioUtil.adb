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


package body org.allbinary.media.image.ImagesRatioUtil_Package is

   procedure Initialize_Fields (This : in out ImagesRatioUtil'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.imageUtil := ImageUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImagesRatioUtil_Access is
   begin
        return ImagesRatioUtil_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImagesRatioUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImagesRatioUtil_Access is
      This : constant ImagesRatioUtil_Access := new ImagesRatioUtil;
   begin
      ImagesRatioUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Boolean is
      end_Id : Integer;
      ratio : Long_Float;
      index : Integer;
   begin
        end_Id := totalImages;
        if (bufferedImageArray'Length) < (totalImages) then
            end_Id := bufferedImageArray'Length;
        end if;
        ratio := ((Long_Float (bufferedImageArray (0).getWidth)) / (bufferedImageArray (0).getHeight));
        for index in 1 .. (end_Id) - 1 loop
            if (ratio) /= (((Long_Float (bufferedImageArray (index).getWidth)) / (bufferedImageArray (index).getHeight))) then
                return False;
            end if;
        end loop;
        return True;
   end isEqual;

   function getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) return Long_Float is
      ratio : Long_Float;
      end_Id : Integer;
      index : Integer;
   begin
        ratio := 0.0;
        end_Id := totalImages;
        if (bufferedImageArray'Length) < (totalImages) then
            end_Id := bufferedImageArray'Length;
        end if;
        for index in 0 .. (end_Id) - 1 loop
            ratio := (ratio) + (((Long_Float (bufferedImageArray (index).getWidth)) / (bufferedImageArray (index).getHeight)));
        end loop;
        return ((ratio) / (Long_Float (end_Id)));
   end getAverage;

   --  throws Exception
   function fudge (This : in out ImagesRatioUtil; bufferedImage_Param : access BufferedImage'Class; ratio : Long_Float) return BufferedImage_Access is
      bufferedImage : BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      imageRatio : Long_Float;
      point : Point_Access;
      newHeight : Integer;
      newWidth : Integer;
      commonLabels : CommonLabels_Access;
      newBufferedImage : BufferedImage_Access;
      g : Graphics2D_Access;
      firstColumnBufferedImage : BufferedImage_Access;
      lastColumnBufferedImage : BufferedImage_Access;
      index : Integer;
      firstRowBufferedImage : BufferedImage_Access;
      lastRowBufferedImage : BufferedImage_Access;
   begin
        imageRatio := ((Long_Float (bufferedImage.getWidth)) / (bufferedImage.getHeight));
        point := Point_Package.Create;
        newHeight := bufferedImage.getHeight;
        newWidth := bufferedImage.getWidth;
        if (ratio) > (imageRatio) then
            newWidth := Integer (((Long_Float (bufferedImage.getHeight)) * (ratio)));
            point.x := (((newWidth) - (bufferedImage.getWidth))) / (2);
        else
            newHeight := Integer (((Long_Float (bufferedImage.getWidth)) / (ratio)));
            point.y := (((newHeight) - (bufferedImage.getHeight))) / (2);
        end if;
        commonLabels := CommonLabels_Package.getInstance;
        This.logUtil.putF (Java_Image ((commonLabels.WIDTH_LABEL) + (bufferedImage.getWidth)) & To_Unbounded_String (" newWidth: ") & Java_Image (newWidth) & Java_Image (commonLabels.HEIGHT_LABEL) & Java_Image (bufferedImage.getHeight) & To_Unbounded_String (" newHeight: ") & Java_Image (newHeight) & To_Unbounded_String (" needed ratio: ") & Java_Image (((Long_Float (newWidth)) / (Long_Float (newHeight)))), ImagesRatioUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("fudge"));
        newBufferedImage := This.imageUtil.create (newWidth, newHeight);
        g := newBufferedImage.createGraphics;
        if (point.x) > (0) then
            firstColumnBufferedImage := bufferedImage.getSubimage (0, 0, 1, bufferedImage.getHeight);
            lastColumnBufferedImage := bufferedImage.getSubimage ((bufferedImage.getWidth) - (1), 0, 1, bufferedImage.getHeight);
            This.logUtil.putF (To_Unbounded_String ("Draw some columns to fill in gap"), ImagesRatioUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("fudge"));
            for index in 0 .. (point.x) - 1 loop
                g.drawImage (firstColumnBufferedImage, index, 0, null);
                g.drawImage (lastColumnBufferedImage, (newWidth) - (index), 0, null);
            end loop;
        end if;
        if (point.y) > (0) then
            firstRowBufferedImage := bufferedImage.getSubimage (0, 0, bufferedImage.getWidth, 1);
            lastRowBufferedImage := bufferedImage.getSubimage (0, (bufferedImage.getHeight) - (1), bufferedImage.getWidth, 1);
            This.logUtil.putF (To_Unbounded_String ("Draw some rows to fill in gap"), ImagesRatioUtil_Access'(This'Unchecked_Access), To_Unbounded_String ("fudge"));
            for index in 0 .. (point.y) - 1 loop
                g.drawImage (firstRowBufferedImage, 0, index, null);
                g.drawImage (lastRowBufferedImage, 0, (newHeight) - (index), null);
            end loop;
        end if;
        g.drawImage (bufferedImage, point.x, point.y, bufferedImage.getWidth, bufferedImage.getHeight, null);
        return newBufferedImage;
   end fudge;

   --  throws Exception
   function fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float) return BufferedImage_Access_Array_Access is
      end_Id : Integer;
      fudgedBufferedImageArray : BufferedImage_Access_Array_Access;
      index : Integer;
   begin
        end_Id := totalImages;
        if (bufferedImageArray'Length) < (totalImages) then
            end_Id := bufferedImageArray'Length;
        end if;
        fudgedBufferedImageArray := new BufferedImage_Access_Array'(0 .. (end_Id) - 1 => null);
        for index in 0 .. (end_Id) - 1 loop
            fudgedBufferedImageArray (index) := This.fudge (bufferedImageArray (index), ratio);
        end loop;
        return fudgedBufferedImageArray;
   end fudge;

   procedure isEqual (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) is
      Java_Result : constant Boolean := ImagesRatioUtil'Class (This).isEqual (bufferedImageArray, totalImages);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEqual;

   procedure getAverage (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer) is
      Java_Result : constant Long_Float := ImagesRatioUtil'Class (This).getAverage (bufferedImageArray, totalImages);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAverage;

   procedure fudge (This : in out ImagesRatioUtil; bufferedImage_Param : access BufferedImage'Class; ratio : Long_Float) is
      Java_Result : constant BufferedImage_Access := ImagesRatioUtil'Class (This).fudge (bufferedImage_Param, ratio);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end fudge;

   procedure fudge (This : in out ImagesRatioUtil; bufferedImageArray : BufferedImage_Access_Array_Access; totalImages : Integer; ratio : Long_Float) is
      Java_Result : constant BufferedImage_Access_Array_Access := ImagesRatioUtil'Class (This).fudge (bufferedImageArray, totalImages, ratio);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end fudge;

begin
   null;
   instance := ImagesRatioUtil_Package.Create;

end org.allbinary.media.image.ImagesRatioUtil_Package;


