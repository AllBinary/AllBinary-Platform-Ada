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
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.color.ColorCacheFactory_Package; use org.allbinary.graphics.color.ColorCacheFactory_Package;
with org.allbinary.graphics.color.ColorCacheable_Package; use org.allbinary.graphics.color.ColorCacheable_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.cache.AutomaticCacheInterface_Package; use org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
with org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package; use org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;

package org.allbinary.media.image.comparison.ImageComparator_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package PointFactory_Package renames Standard.org.allbinary.graphics.PointFactory_Package;
   package ColorCacheFactory_Package renames Standard.org.allbinary.graphics.color.ColorCacheFactory_Package;
   package ColorCacheable_Package renames Standard.org.allbinary.graphics.color.ColorCacheable_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package AutomaticCacheInterface_Package renames Standard.org.allbinary.logic.util.cache.AutomaticCacheInterface_Package;
   package PixelDeltaFactory_Package renames Standard.org.allbinary.media.image.comparison.pixel.PixelDeltaFactory_Package;

   type ImageComparator is tagged;
   type ImageComparator_Access is access all ImageComparator'Class;
   type ImageComparator_Access_Array is array (Natural range <>) of ImageComparator_Access;
   type ImageComparator_Access_Array_Access is access all ImageComparator_Access_Array;

   type ImageComparator is new Java_Object with record
      imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access;
   end record;

   procedure Initialize (This : in out ImageComparator'Class; imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access);
   function Create (imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access) return ImageComparator_Access;
   procedure process (This : in out ImageComparator; imageComparisonInfo : ImageComparisonResult_Access; point : GPoint_Access);
   function compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access;
   procedure compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer);
   function compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String) return ImageComparisonResult_Access;
   procedure compare (This : in out ImageComparator; bufferedImage1 : BufferedImage_Access; bufferedImage2 : BufferedImage_Access; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String);

end org.allbinary.media.image.comparison.ImageComparator_Package;


