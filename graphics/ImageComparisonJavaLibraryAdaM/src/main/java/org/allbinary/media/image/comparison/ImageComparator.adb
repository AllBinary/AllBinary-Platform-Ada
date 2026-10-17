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


package body org.allbinary.media.image.comparison.ImageComparator_Package is

   procedure Initialize_Fields (This : in out ImageComparator'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ImageComparator'Class; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) is
   begin
      Initialize_Fields (This);
        This.imageComparatorConstraintsInterface := imageComparatorConstraintsInterface;
   end Initialize;

   function Create (imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) return ImageComparator_Access is
      This : constant ImageComparator_Access := new ImageComparator;
   begin
      Initialize (This.all, imageComparatorConstraintsInterface);
      return This;
   end Create;

   --  throws Exception
   procedure process (This : in out ImageComparator; imageComparisonInfo : ImageComparisonResult_Access; point : GPoint_Access) is
      isCollsionWithAvoidRectangles : Boolean;
      rgb1 : Integer;
      rgb2 : Integer;
      automaticCacheInterface : AutomaticCacheInterface_Access;
      colorInteger : Integer;
      colorCacheable : ColorCacheable_Access;
      color : Color_Access;
      colorInteger2 : Integer;
      colorCacheable2 : ColorCacheable_Access;
      color2 : Color_Access;
   begin
        isCollsionWithAvoidRectangles := This.imageComparatorConstraintsInterface.isCollisionWithAvoidRectangles (point);
        if not (isCollsionWithAvoidRectangles) then
            rgb1 := imageComparisonInfo.getBufferedImages (0).getRGB (point.getX, point.getY);
            rgb2 := imageComparisonInfo.getBufferedImages (1).getRGB (point.getX, point.getY);
            automaticCacheInterface := ColorCacheFactory_Package.getInstance;
            colorInteger := To_Unbounded_String (Java_Image (rgb1));
            colorCacheable := ColorCacheable_Access (automaticCacheInterface.get (colorInteger));
            color := colorCacheable.getColor;
            colorInteger2 := To_Unbounded_String (Java_Image (rgb2));
            colorCacheable2 := ColorCacheable_Access (automaticCacheInterface.get (colorInteger));
            color2 := colorCacheable.getColor;
            if (This.imageComparatorConstraintsInterface.isColorAllowed (0, point, color)) or else (This.imageComparatorConstraintsInterface.isColorAllowed (1, point, color2)) then
                if (abs ((rgb1) - (rgb2))) <= (imageComparisonInfo.getTolerance) then
                    imageComparisonInfo.pixelsThatMatch := imageComparisonInfo.pixelsThatMatch + 1;
                else
                    imageComparisonInfo.add (PixelDeltaFactory_Package.getInstance (point.getX, point.getY, rgb1, rgb2));
                end if;
            end if;
        else
            imageComparisonInfo.pixelsIgnored := imageComparisonInfo.pixelsIgnored + 1;
        end if;
   end process;

   --  throws Exception
   function compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access is
   begin
        return This.compare (bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, StringUtil_Package.getInstance.EMPTY_STRING);
   end compare;

   --  throws Exception
   function compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String) return ImageComparisonResult_Access is
      imageComparisonInfo : ImageComparisonResult_Access;
      indexX : Integer;
      indexY : Integer;
   begin
        if ((bufferedImage1) = (null)) or else ((bufferedImage2) = (null)) then
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Input images must not be null.")));
        end if;
        imageComparisonInfo := ImageComparisonResult_Package.Create (name, bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance);
        for indexY in 0 .. (imageComparisonInfo.imageHeight) - 1 loop
            for indexX in 0 .. (imageComparisonInfo.imageWidth) - 1 loop
                This.process (imageComparisonInfo, PointFactory_Package.getInstance.createXY (indexX, indexY));
                if (imageComparisonInfo.getNonMatchingPixelVector.size) > (This.imageComparatorConstraintsInterface.getMaxNonMatchingPixelDeltas) then
                    exit;
                end if;
            end loop;
        end loop;
        return imageComparisonInfo;
   end compare;

   procedure compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) is
      Java_Result : constant ImageComparisonResult_Access := ImageComparator'Class (This).compare (bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

   procedure compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String) is
      Java_Result : constant ImageComparisonResult_Access := ImageComparator'Class (This).compare (bufferedImage1, bufferedImage2, frameOne, frameTwo, tolerance, name);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compare;

end org.allbinary.media.image.comparison.ImageComparator_Package;


