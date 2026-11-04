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

limited with org.allbinary.media.image.comparison.ChangedPixelsUtil_Package;
package org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References is
   type ChangedPixelsUtil_Access is access all org.allbinary.media.image.comparison.ChangedPixelsUtil_Package.ChangedPixelsUtil'Class;
   type ChangedPixelsUtil_Access_Array is array (Natural range <>) of ChangedPixelsUtil_Access;
   type ChangedPixelsUtil_Access_Array_Access is access all ChangedPixelsUtil_Access_Array;
   type ChangedPixelsUtil_Access_Array_Access_Array is array (Natural range <>) of ChangedPixelsUtil_Access_Array_Access;
   type ChangedPixelsUtil_Access_Array_Access_Array_Access is access all ChangedPixelsUtil_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References;

with org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.media.image.cache.BufferedImageCacheable_Package;
with org.allbinary.media.image.cache.BufferedImageCacheable_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package_References;

package org.allbinary.media.image.comparison.ChangedPixelsUtil_Package is

   package BufferedImageCacheable_Package renames Standard.org.allbinary.media.image.cache.BufferedImageCacheable_Package;
   package Reference_Types is
   subtype BufferedImageCacheable_Access is org.allbinary.media.image.cache.BufferedImageCacheable_Package_References.BufferedImageCacheable_Access;
   use type BufferedImageCacheable_Access;
   subtype BufferedImageCacheable_Access_Array is org.allbinary.media.image.cache.BufferedImageCacheable_Package_References.BufferedImageCacheable_Access_Array;
   use type BufferedImageCacheable_Access_Array;
   subtype BufferedImageCacheable_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageCacheable_Package_References.BufferedImageCacheable_Access_Array_Access;
   use type BufferedImageCacheable_Access_Array_Access;
   subtype BufferedImageCacheable_Access_Array_Access_Array is org.allbinary.media.image.cache.BufferedImageCacheable_Package_References.BufferedImageCacheable_Access_Array_Access_Array;
   use type BufferedImageCacheable_Access_Array_Access_Array;
   subtype BufferedImageCacheable_Access_Array_Access_Array_Access is org.allbinary.media.image.cache.BufferedImageCacheable_Package_References.BufferedImageCacheable_Access_Array_Access_Array_Access;
   use type BufferedImageCacheable_Access_Array_Access_Array_Access;
   subtype ImageComparisonResult_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access;
   use type ImageComparisonResult_Access;
   subtype ImageComparisonResult_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array;
   use type ImageComparisonResult_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access;
   subtype ImageComparisonResult_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array;
   use type ImageComparisonResult_Access_Array_Access_Array;
   subtype ImageComparisonResult_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparisonResult_Package_References.ImageComparisonResult_Access_Array_Access_Array_Access;
   use type ImageComparisonResult_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ChangedPixelsUtil_Access is org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References.ChangedPixelsUtil_Access;
   function "=" (Left, Right : ChangedPixelsUtil_Access) return Boolean renames org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References."=";
   subtype ChangedPixelsUtil_Access_Array is org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References.ChangedPixelsUtil_Access_Array;
   function "=" (Left, Right : ChangedPixelsUtil_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References."=";
   subtype ChangedPixelsUtil_Access_Array_Access is org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References.ChangedPixelsUtil_Access_Array_Access;
   function "=" (Left, Right : ChangedPixelsUtil_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References."=";
   subtype ChangedPixelsUtil_Access_Array_Access_Array is org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References.ChangedPixelsUtil_Access_Array_Access_Array;
   function "=" (Left, Right : ChangedPixelsUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References."=";
   subtype ChangedPixelsUtil_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References.ChangedPixelsUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ChangedPixelsUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ChangedPixelsUtil_Package_References."=";

   type ChangedPixelsUtil is new Java_Object with null record;
   START_X : Integer;
   START_Y : Integer;
   OFFSET : Integer;
   SCAN_SIZE : Integer;
   CLEAR_INT_ARRAY : Integer_Array_Access;

   procedure Initialize (This : in out ChangedPixelsUtil'Class);
   function Create return ChangedPixelsUtil_Access;
   function generateBufferedImageChacheables (imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class) return BufferedImageCacheable_Access_Array_Access;
   procedure generateBufferedImageChacheables (imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class);

end org.allbinary.media.image.comparison.ChangedPixelsUtil_Package;


