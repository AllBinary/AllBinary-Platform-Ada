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

limited with org.allbinary.media.image.search.ImageComparisonSearch_Package;
package org.allbinary.media.image.search.ImageComparisonSearch_Package_References is
   type ImageComparisonSearch_Access is access all org.allbinary.media.image.search.ImageComparisonSearch_Package.ImageComparisonSearch'Class;
   type ImageComparisonSearch_Access_Array is array (Natural range <>) of ImageComparisonSearch_Access;
   type ImageComparisonSearch_Access_Array_Access is access all ImageComparisonSearch_Access_Array;
   type ImageComparisonSearch_Access_Array_Access_Array is array (Natural range <>) of ImageComparisonSearch_Access_Array_Access;
   type ImageComparisonSearch_Access_Array_Access_Array_Access is access all ImageComparisonSearch_Access_Array_Access_Array;
end org.allbinary.media.image.search.ImageComparisonSearch_Package_References;

with org.allbinary.media.image.search.ImageComparisonSearch_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
with org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.media.image.search.ImageComparisonSearch_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package PixelDelta_Package renames Standard.org.allbinary.media.image.comparison.pixel.PixelDelta_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype PixelDelta_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access;
   use type PixelDelta_Access;
   subtype PixelDelta_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array;
   use type PixelDelta_Access_Array;
   subtype PixelDelta_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access;
   use type PixelDelta_Access_Array_Access;
   subtype PixelDelta_Access_Array_Access_Array is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array;
   use type PixelDelta_Access_Array_Access_Array;
   subtype PixelDelta_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.pixel.PixelDelta_Package_References.PixelDelta_Access_Array_Access_Array_Access;
   use type PixelDelta_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageComparisonSearch_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access;
   function "=" (Left, Right : ImageComparisonSearch_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearch_Package_References."=";
   subtype ImageComparisonSearch_Access_Array is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array;
   function "=" (Left, Right : ImageComparisonSearch_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearch_Package_References."=";
   subtype ImageComparisonSearch_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearch_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearch_Package_References."=";
   subtype ImageComparisonSearch_Access_Array_Access_Array is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparisonSearch_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearch_Package_References."=";
   subtype ImageComparisonSearch_Access_Array_Access_Array_Access is org.allbinary.media.image.search.ImageComparisonSearch_Package_References.ImageComparisonSearch_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparisonSearch_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.search.ImageComparisonSearch_Package_References."=";

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

   procedure Initialize (This : in out ImageComparisonSearch'Class; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; tolerance : Integer);
   function Create (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; tolerance : Integer) return ImageComparisonSearch_Access;
   function getMatchingPercent (This : in out ImageComparisonSearch) return Float;
   procedure add (This : in out ImageComparisonSearch; pixel_Param : access PixelDelta_Package.PixelDelta'Class);
   function getNonMatchingPixelVector (This : in out ImageComparisonSearch) return BasicArrayList_Access;
   function toString (This : in out ImageComparisonSearch) return Unbounded_String;
   function getBufferedImages (This : in out ImageComparisonSearch) return BufferedImage_Access_Array_Access;
   procedure setBufferedImages (This : in out ImageComparisonSearch; bufferedImages : BufferedImage_Access_Array_Access);
   function getTolerance (This : in out ImageComparisonSearch) return Integer;
   procedure setTolerance (This : in out ImageComparisonSearch; tolerance : Integer);

end org.allbinary.media.image.search.ImageComparisonSearch_Package;


