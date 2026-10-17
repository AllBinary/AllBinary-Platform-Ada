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
with org.allbinary.media.image.analysis.ColorRange_Package; use org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package; use org.allbinary.media.image.analysis.ColorAverage_Package;

package org.allbinary.media.image.analysis.ImageColorResults_Package is


   type ImageColorResults is tagged;
   type ImageColorResults_Access is access all ImageColorResults'Class;
   type ImageColorResults_Access_Array is array (Natural range <>) of ImageColorResults_Access;
   type ImageColorResults_Access_Array_Access is access all ImageColorResults_Access_Array;

   type ImageColorResults is new Java_Object with record
      colorRange : ColorRange_Access;
      colorAverage : ColorAverage_Access;
   end record;

   procedure Initialize (This : in out ImageColorResults'Class);
   function Create return ImageColorResults_Access;
   function getColorRange (This : in out ImageColorResults) return ColorRange_Access;
   procedure setColorRange (This : in out ImageColorResults; colorRange : ColorRange_Access);
   function getColorAverage (This : in out ImageColorResults) return ColorAverage_Access;
   procedure setColorAverage (This : in out ImageColorResults; colorAverage : ColorAverage_Access);

end org.allbinary.media.image.analysis.ImageColorResults_Package;


