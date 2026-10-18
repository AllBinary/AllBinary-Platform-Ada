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
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package; use org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.media.image.comparison.ImageComparisonResult_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PixelDelta_Package renames Standard.org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type ImageComparisonResult is tagged;
   type ImageComparisonResult_Access is access all ImageComparisonResult'Class;
   type ImageComparisonResult_Access_Array is array (Natural range <>) of ImageComparisonResult_Access;
   type ImageComparisonResult_Access_Array_Access is access all ImageComparisonResult_Access_Array;
   type ImageComparisonResult_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonResult_Access_Array_Access;
   type ImageComparisonResult_Access_Array_Access_Array_Access is access all ImageComparisonResult_Access_Array_Access_Array;

   type ImageComparisonResult is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      bufferedImages : BufferedImage_Access_Array_Access;
      name : Unbounded_String;
      isSameHeight : Boolean;
      isSameWidth : Boolean;
      imageHeight : Integer;
      imageWidth : Integer;
      nonMatchingPixelVector : BasicArrayList_Access;
      frameOne : Long_Long_Integer;
      frameTwo : Long_Long_Integer;
      pixelsThatMatch : Integer;
      pixelsIgnored : Integer;
      tolerance : Integer;
      matchingPercent : Float;
   end record;

   procedure Initialize (This : in out ImageComparisonResult'Class; name : Unbounded_String; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer);
   function Create (name : Unbounded_String; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access;
   function getMatchingPercent (This : in out ImageComparisonResult) return Float;
   procedure add (This : in out ImageComparisonResult; pixel_Param : access PixelDelta_Package.PixelDelta'Class);
   function getNonMatchingPixelVector (This : in out ImageComparisonResult) return BasicArrayList_Access;
   function toString (This : in out ImageComparisonResult) return Unbounded_String;
   function getBufferedImages (This : in out ImageComparisonResult) return BufferedImage_Access_Array_Access;
   function getTolerance (This : in out ImageComparisonResult) return Integer;
   procedure setTolerance (This : in out ImageComparisonResult; tolerance : Integer);
   function getFrameOne (This : in out ImageComparisonResult) return Long_Long_Integer;
   function getFrameTwo (This : in out ImageComparisonResult) return Long_Long_Integer;

end org.allbinary.media.image.comparison.ImageComparisonResult_Package;


