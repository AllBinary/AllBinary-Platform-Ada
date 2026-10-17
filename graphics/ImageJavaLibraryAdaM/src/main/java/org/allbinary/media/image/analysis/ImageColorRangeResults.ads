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

package org.allbinary.media.image.analysis.ImageColorRangeResults_Package is


   type ImageColorRangeResults is tagged;
   type ImageColorRangeResults_Access is access all ImageColorRangeResults'Class;
   type ImageColorRangeResults_Access_Array is array (Natural range <>) of ImageColorRangeResults_Access;
   type ImageColorRangeResults_Access_Array_Access is access all ImageColorRangeResults_Access_Array;

   type ImageColorRangeResults is new Java_Object with record
      colorRangeInterface : ColorRangeInterface_Access;
      matchingPixelsChecked : Long_Long_Integer;
      totalPixelsChecked : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out ImageColorRangeResults'Class);
   function Create return ImageColorRangeResults_Access;
   function getColorRangeInterface (This : in out ImageColorRangeResults) return ColorRangeInterface_Access;
   procedure getColorRangeInterface (This : in out ImageColorRangeResults);
   procedure setColorRangeInterface (This : in out ImageColorRangeResults; colorRangeInterface : ColorRangeInterface_Access);
   function getMatchingPixelsChecked (This : in out ImageColorRangeResults) return Long_Long_Integer;
   procedure getMatchingPixelsChecked (This : in out ImageColorRangeResults);
   procedure setMatchingPixelsChecked (This : in out ImageColorRangeResults; matchingPixelsChecked : Long_Long_Integer);
   procedure addMatchingPixelsChecked (This : in out ImageColorRangeResults);
   function getTotalPixelsChecked (This : in out ImageColorRangeResults) return Long_Long_Integer;
   procedure getTotalPixelsChecked (This : in out ImageColorRangeResults);
   procedure addTotalPixelsChecked (This : in out ImageColorRangeResults);
   procedure setTotalPixelsChecked (This : in out ImageColorRangeResults; totalPixelsChecked : Long_Long_Integer);
   function getPercent (This : in out ImageColorRangeResults) return Float;
   procedure getPercent (This : in out ImageColorRangeResults);

end org.allbinary.media.image.analysis.ImageColorRangeResults_Package;


