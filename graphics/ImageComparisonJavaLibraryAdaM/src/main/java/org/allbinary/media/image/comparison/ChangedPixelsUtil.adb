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


package body org.allbinary.media.image.comparison.ChangedPixelsUtil_Package is

   procedure Initialize_Fields (This : in out ChangedPixelsUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ChangedPixelsUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ChangedPixelsUtil_Access is
      This : constant ChangedPixelsUtil_Access := new ChangedPixelsUtil;
   begin
      ChangedPixelsUtil_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function generateBufferedImageChacheables (imageComparisonInfo : ImageComparisonResult_Access) return BufferedImageCacheable_Access_Array_Access is
      bufferedImageCacheables : BufferedImageCacheable_Access_Array_Access;
      originalBufferedImage : BufferedImage_Access;
      bufferedImageInfo : BufferedImageInfo_Access;
      poolInterface : PoolInterface_Access;
      bufferedImageCacheable : BufferedImageCacheable_Access;
      index : Integer;
      vector : BasicArrayList_Access;
      size : Integer;
      pixelDelta : PixelDelta_Access;
   begin
        bufferedImageCacheables := null;
        originalBufferedImage := imageComparisonInfo.getBufferedImages (0);
        bufferedImageCacheables := new BufferedImageCacheable_Access_Array'(0 .. (2) - 1 => null);
        bufferedImageInfo := BufferedImageInfoFactory_Package.getInstance (imageComparisonInfo.imageWidth, imageComparisonInfo.imageHeight, originalBufferedImage.getType);
        poolInterface := BufferedImagePoolSingleton_Package.getInstance;
        for index in 0 .. (bufferedImageCacheables'Length) - 1 loop
            bufferedImageCacheable := BufferedImageCacheable_Access (poolInterface.remove (bufferedImageInfo));
            bufferedImageCacheables (index) := bufferedImageCacheable;
            bufferedImageCacheables (index).getBufferedImage.setRGB (ChangedPixelsUtil_Package.START_X, ChangedPixelsUtil_Package.START_Y, bufferedImageInfo.getWidth, bufferedImageInfo.getHeight, ChangedPixelsUtil_Package.CLEAR_INT_ARRAY, ChangedPixelsUtil_Package.OFFSET, ChangedPixelsUtil_Package.SCAN_SIZE);
        end loop;
        vector := imageComparisonInfo.getNonMatchingPixelVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            pixelDelta := PixelDelta_Access (vector.get (index));
            if (pixelDelta.getColorDelta) = (null) then
                Ada.Text_IO.Put (Java_Image (To_Unbounded_String ("ColorDelta")));
                System_Package.exit_Id (0);
            end if;
            bufferedImageCacheables (0).getBufferedImage.setRGB (pixelDelta.getPoint.getX, pixelDelta.getPoint.getY, pixelDelta.getColorDelta.getRgb1);
            bufferedImageCacheables (1).getBufferedImage.setRGB (pixelDelta.getPoint.getX, pixelDelta.getPoint.getY, pixelDelta.getColorDelta.getRgb2);
        end loop;
        return bufferedImageCacheables;
   end generateBufferedImageChacheables;

   procedure generateBufferedImageChacheables (imageComparisonInfo : ImageComparisonResult_Access) is
      Java_Result : constant BufferedImageCacheable_Access_Array_Access := generateBufferedImageChacheables (imageComparisonInfo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end generateBufferedImageChacheables;

begin
   null;
   START_X := 0;
   START_Y := 0;
   OFFSET := 0;
   SCAN_SIZE := 0;
   CLEAR_INT_ARRAY := new Integer_Array'(0 .. ((1800) * (1600)) - 1 => 0);

end org.allbinary.media.image.comparison.ChangedPixelsUtil_Package;


