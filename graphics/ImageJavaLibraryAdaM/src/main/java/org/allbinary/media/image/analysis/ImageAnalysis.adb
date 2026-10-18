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


with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package; use org.allbinary.media.image.analysis.ColorAverage_Package;

package body org.allbinary.media.image.analysis.ImageAnalysis_Package is

   package ColorCacheFactory_Package renames Standard.org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames Standard.org.allbinary.graphics.color.ColorCacheable_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   procedure Initialize_Fields (This : in out ImageAnalysis'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
   end Initialize_Fields;


   function getInstance return ImageAnalysis_Access is
   begin
        return ImageAnalysis_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ImageAnalysis'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ImageAnalysis_Access is
      This : constant ImageAnalysis_Access := new ImageAnalysis;
   begin
      ImageAnalysis_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) return ImageAnalysisResults_Access_Array_Access is
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
      commonStrings : CommonStrings_Access;
      imageAnalysisResultsArray : ImageAnalysisResults_Access_Array_Access;
      index : Integer;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & colorRangeInterface.toString, ImageAnalysis_Access'(This'Unchecked_Access), commonStrings.PROCESS);
        imageAnalysisResultsArray := new ImageAnalysisResults_Access_Array'(0 .. (bufferedImageArray'Length) - 1 => null);
        for index in 0 .. (bufferedImageArray'Length) - 1 loop
            imageAnalysisResultsArray (index) := ImageAnalysis_Package.process (bufferedImageArray (index), colorRangeInterface);
        end loop;
        return imageAnalysisResultsArray;
   end process;

   --  throws Exception
   function process (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) return ImageAnalysisResults_Access is
      bufferedImage : constant BufferedImage_Access := BufferedImage_Access (bufferedImage_Param);
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
      imageAnalysisResults : ImageAnalysisResults_Access;
      redTotal : Long_Long_Integer;
      greenTotal : Long_Long_Integer;
      blueTotal : Long_Long_Integer;
      keyInteger : Integer;
      colorCacheable : ColorCacheable_Access;
      color : Color_Access;
      indexX : Integer;
      indexY : Integer;
      totalPixels : Long_Long_Integer;
      colorAverage : ColorAverage_Access;
   begin
        imageAnalysisResults := ImageAnalysisResults_Package.Create;
        redTotal := 0;
        greenTotal := 0;
        blueTotal := 0;
        for indexY in 0 .. (bufferedImage.getHeight) - 1 loop
            for indexX in 0 .. (bufferedImage.getWidth) - 1 loop
                keyInteger := To_Unbounded_String (Java_Image (bufferedImage.getRGB (indexX, indexY)));
                colorCacheable := ColorCacheable_Access (ColorCacheFactory_Package.getInstance.get (keyInteger));
                color := colorCacheable.getColor;
                ImageAnalysis_Package.processColorRangeResults (imageAnalysisResults, colorRangeInterface, color);
                ImageAnalysis_Package.processImageColorResults (imageAnalysisResults.getImageColorResults, colorRangeInterface, color);
                redTotal := (redTotal) + (color.getRed);
                greenTotal := (greenTotal) + (color.getGreen);
                blueTotal := (blueTotal) + (color.getBlue);
            end loop;
        end loop;
        totalPixels := imageAnalysisResults.getImageColorRangeResults.getTotalPixelsChecked;
        colorAverage := imageAnalysisResults.getImageColorResults.getColorAverage;
        colorAverage.setAvgRed ((Float (redTotal)) / (Float (totalPixels)));
        colorAverage.setAvgGreen ((Float (greenTotal)) / (Float (totalPixels)));
        colorAverage.setAvgBlue ((Float (blueTotal)) / (Float (totalPixels)));
        return imageAnalysisResults;
   end process;

   procedure processColorRangeResults (imageAnalysisResults_Param : access ImageAnalysisResults_Package.ImageAnalysisResults'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class; color_Param : access Color_Package.Color'Class) is
      imageAnalysisResults : constant ImageAnalysisResults_Access := ImageAnalysisResults_Access (imageAnalysisResults_Param);
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
      color : constant Color_Access := Color_Access (color_Param);
   begin
        if colorRangeInterface.isInRange (color) then
            imageAnalysisResults.getImageColorRangeResults.addMatchingPixelsChecked;
        else
            null;
        end if;
        imageAnalysisResults.getImageColorRangeResults.addTotalPixelsChecked;
   end processColorRangeResults;

   procedure processImageColorResults (imageColorResults_Param : access ImageColorResults_Package.ImageColorResults'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class; color_Param : access Color_Package.Color'Class) is
      imageColorResults : constant ImageColorResults_Access := ImageColorResults_Access (imageColorResults_Param);
      colorRangeInterface : constant ColorRangeInterface_Access := ColorRangeInterface_Access (colorRangeInterface_Param);
      color : constant Color_Access := Color_Access (color_Param);
   begin
        if (color.getRed) < (imageColorResults.getColorRange.getMinRed) then
            imageColorResults.getColorRange.setMinRed (color.getRed);
        end if;
        if (color.getGreen) < (imageColorResults.getColorRange.getMinGreen) then
            imageColorResults.getColorRange.setMinGreen (color.getGreen);
        end if;
        if (color.getBlue) < (imageColorResults.getColorRange.getMinBlue) then
            imageColorResults.getColorRange.setMinBlue (color.getBlue);
        end if;
        if (color.getRed) > (imageColorResults.getColorRange.getMaxRed) then
            imageColorResults.getColorRange.setMaxRed (color.getRed);
        end if;
        if (color.getGreen) > (imageColorResults.getColorRange.getMaxGreen) then
            imageColorResults.getColorRange.setMaxGreen (color.getGreen);
        end if;
        if (color.getBlue) > (imageColorResults.getColorRange.getMaxBlue) then
            imageColorResults.getColorRange.setMaxBlue (color.getBlue);
        end if;
   end processImageColorResults;

   procedure process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is
      Java_Result : constant ImageAnalysisResults_Access_Array_Access := ImageAnalysis'Class (This).process (bufferedImageArray, colorRangeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

   procedure process (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) is
      Java_Result : constant ImageAnalysisResults_Access := process (bufferedImage_Param, colorRangeInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end process;

begin
   null;
   instance := ImageAnalysis_Package.Create;

end org.allbinary.media.image.analysis.ImageAnalysis_Package;


