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


with org.allbinary.media.image.analysis.ImageColorRangeResults_Package; use org.allbinary.media.image.analysis.ImageColorRangeResults_Package;
with org.allbinary.media.image.analysis.ImageColorResults_Package; use org.allbinary.media.image.analysis.ImageColorResults_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package;
with org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ImageColorRangeResults_Package;
with org.allbinary.media.image.analysis.ImageColorResults_Package;

package body org.allbinary.media.image.analysis.ImageAnalysisResults_Package is

   subtype ImageColorRangeResults_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access;
   function "=" (Left, Right : ImageColorRangeResults_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References."=";
   subtype ImageColorRangeResults_Access_Array is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array;
   function "=" (Left, Right : ImageColorRangeResults_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References."=";
   subtype ImageColorRangeResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access;
   function "=" (Left, Right : ImageColorRangeResults_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References."=";
   subtype ImageColorRangeResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access_Array;
   function "=" (Left, Right : ImageColorRangeResults_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References."=";
   subtype ImageColorRangeResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageColorRangeResults_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References."=";
   subtype ImageColorResults_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access;
   function "=" (Left, Right : ImageColorResults_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array;
   function "=" (Left, Right : ImageColorResults_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   procedure Initialize_Fields (This : in out ImageAnalysisResults'Class) is
   begin
      null;
      
      
      This.averageAmbientLevel := 0.0;
   end Initialize_Fields;


   procedure Initialize (This : in out ImageAnalysisResults'Class) is
   begin
      Initialize_Fields (This);
        This.imageColorRangeResults := ImageColorRangeResults_Package.Create;
        This.imageColorResults := ImageColorResults_Package.Create;
   end Initialize;

   function Create return ImageAnalysisResults_Access is
      This : constant ImageAnalysisResults_Access := new ImageAnalysisResults;
   begin
      ImageAnalysisResults_Package.Initialize (This.all);
      return This;
   end Create;

   function getImageColorRangeResults (This : in out ImageAnalysisResults) return ImageColorRangeResults_Access is
   begin
        return This.imageColorRangeResults;
   end getImageColorRangeResults;

   procedure setImageColorRangeResults (This : in out ImageAnalysisResults; imageColorRangeResults_Param : access ImageColorRangeResults_Package.ImageColorRangeResults'Class) is
      imageColorRangeResults : constant ImageColorRangeResults_Access := ImageColorRangeResults_Access (imageColorRangeResults_Param);
   begin
        This.imageColorRangeResults := imageColorRangeResults;
   end setImageColorRangeResults;

   function getAverageAmbientLevel (This : in out ImageAnalysisResults) return Float is
   begin
        return This.averageAmbientLevel;
   end getAverageAmbientLevel;

   procedure setAverageAmbientLevel (This : in out ImageAnalysisResults; averageAmbientLevel : Float) is
   begin
        This.averageAmbientLevel := averageAmbientLevel;
   end setAverageAmbientLevel;

   function getImageColorResults (This : in out ImageAnalysisResults) return ImageColorResults_Access is
   begin
        return This.imageColorResults;
   end getImageColorResults;

   procedure setImageColorResults (This : in out ImageAnalysisResults; imageColorResults_Param : access ImageColorResults_Package.ImageColorResults'Class) is
      imageColorResults : constant ImageColorResults_Access := ImageColorResults_Access (imageColorResults_Param);
   begin
        This.imageColorResults := imageColorResults;
   end setImageColorResults;

end org.allbinary.media.image.analysis.ImageAnalysisResults_Package;


