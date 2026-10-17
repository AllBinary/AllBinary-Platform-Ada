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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.analysis.ImageAnalysis_Package is

   package ColorCacheFactory_Package renames org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames org.allbinary.graphics.color.ColorCacheable_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonLabels_Package renames org.allbinary.string_Id.CommonLabels_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ImageAnalysis is tagged;
   type ImageAnalysis_Access is access all ImageAnalysis'Class;
   type ImageAnalysis_Access_Array is array (Natural range <>) of ImageAnalysis_Access;
   type ImageAnalysis_Access_Array_Access is access all ImageAnalysis_Access_Array;

   type ImageAnalysis is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ImageAnalysis_Access;

   procedure Initialize (This : in out ImageAnalysis'Class);
   function Create return ImageAnalysis_Access;
   function getInstance return ImageAnalysis_Access;
   procedure getInstance;
   function process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface : ColorRangeInterface_Access) return ImageAnalysisResults_Access_Array_Access;
   procedure process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface : ColorRangeInterface_Access);
   function process (bufferedImage : BufferedImage_Access; colorRangeInterface : ColorRangeInterface_Access) return ImageAnalysisResults_Access;
   procedure process (bufferedImage : BufferedImage_Access; colorRangeInterface : ColorRangeInterface_Access);
   procedure processColorRangeResults (imageAnalysisResults : ImageAnalysisResults_Access; colorRangeInterface : ColorRangeInterface_Access; color : Color_Access);
   procedure processImageColorResults (imageColorResults : ImageColorResults_Access; colorRangeInterface : ColorRangeInterface_Access; color : Color_Access);

end org.allbinary.media.image.analysis.ImageAnalysis_Package;


