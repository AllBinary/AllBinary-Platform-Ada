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
with org.allbinary.media.image.analysis.ImageColorRangeResults_Package; use org.allbinary.media.image.analysis.ImageColorRangeResults_Package;
with org.allbinary.media.image.analysis.ImageColorResults_Package; use org.allbinary.media.image.analysis.ImageColorResults_Package;

package org.allbinary.media.image.analysis.ImageAnalysisResults_Package is


   type ImageAnalysisResults is tagged;
   type ImageAnalysisResults_Access is access all ImageAnalysisResults'Class;
   type ImageAnalysisResults_Access_Array is array (Natural range <>) of ImageAnalysisResults_Access;
   type ImageAnalysisResults_Access_Array_Access is access all ImageAnalysisResults_Access_Array;

   type ImageAnalysisResults is new Java_Object with record
      imageColorRangeResults : ImageColorRangeResults_Access;
      imageColorResults : ImageColorResults_Access;
      averageAmbientLevel : Float;
   end record;

   procedure Initialize (This : in out ImageAnalysisResults'Class);
   function Create return ImageAnalysisResults_Access;
   function getImageColorRangeResults (This : in out ImageAnalysisResults) return ImageColorRangeResults_Access;
   procedure setImageColorRangeResults (This : in out ImageAnalysisResults; imageColorRangeResults_Param : access ImageColorRangeResults'Class);
   function getAverageAmbientLevel (This : in out ImageAnalysisResults) return Float;
   procedure setAverageAmbientLevel (This : in out ImageAnalysisResults; averageAmbientLevel : Float);
   function getImageColorResults (This : in out ImageAnalysisResults) return ImageColorResults_Access;
   procedure setImageColorResults (This : in out ImageAnalysisResults; imageColorResults_Param : access ImageColorResults'Class);

end org.allbinary.media.image.analysis.ImageAnalysisResults_Package;


