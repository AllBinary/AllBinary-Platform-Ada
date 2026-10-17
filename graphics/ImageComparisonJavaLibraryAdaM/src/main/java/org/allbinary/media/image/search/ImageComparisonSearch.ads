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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.ImageUtil_Package; use org.allbinary.media.image.ImageUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package; use org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.search.ImageComparisonSearch_Package is

   package BasicArrayList_Package renames org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames org.allbinary.util.BasicArrayListD_Package;
   package StdUtil_Package renames org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageUtil_Package renames org.allbinary.media.image.ImageUtil_Package;
   package PixelDelta_Package renames org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type ImageComparisonSearch is tagged;
   type ImageComparisonSearch_Access is access all ImageComparisonSearch'Class;
   type ImageComparisonSearch_Access_Array is array (Natural range <>) of ImageComparisonSearch_Access;
   type ImageComparisonSearch_Access_Array_Access is access all ImageComparisonSearch_Access_Array;

   type ImageComparisonSearch is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      isSameHeight : Boolean;
      isSameWidth : Boolean;
      pixelsThatMatch : Integer;
      pixelsIgnored : Integer;
      imageHeight : Integer;
      imageWidth : Integer;
      tolerance : Integer;
      nonMatchingPixelVector : BasicArrayList_Access;
      bufferedImages : BufferedImage_Access_Array_Access;
      matchingPercent : Float;
   end record;

   procedure Initialize (This : in out ImageComparisonSearch'Class; bufferedImage : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; tolerance : Integer);
   function Create (bufferedImage : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; tolerance : Integer) return ImageComparisonSearch_Access;
   function getMatchingPercent (This : in out ImageComparisonSearch) return Float;
   procedure getMatchingPercent (This : in out ImageComparisonSearch);
   procedure add (This : in out ImageComparisonSearch; pixel : PixelDelta_Access);
   function getNonMatchingPixelVector (This : in out ImageComparisonSearch) return BasicArrayList_Access;
   procedure getNonMatchingPixelVector (This : in out ImageComparisonSearch);
   function toString (This : in out ImageComparisonSearch) return Unbounded_String;
   procedure toString (This : in out ImageComparisonSearch);
   function getBufferedImages (This : in out ImageComparisonSearch) return BufferedImage_Access_Array_Access;
   procedure getBufferedImages (This : in out ImageComparisonSearch);
   procedure setBufferedImages (This : in out ImageComparisonSearch; bufferedImages : BufferedImage_Access_Array_Access);
   function getTolerance (This : in out ImageComparisonSearch) return Integer;
   procedure getTolerance (This : in out ImageComparisonSearch);
   procedure setTolerance (This : in out ImageComparisonSearch; tolerance : Integer);

end org.allbinary.media.image.search.ImageComparisonSearch_Package;


