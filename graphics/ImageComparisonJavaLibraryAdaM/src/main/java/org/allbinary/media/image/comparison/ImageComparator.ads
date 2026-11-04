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

limited with org.allbinary.media.image.comparison.ImageComparator_Package;
package org.allbinary.media.image.comparison.ImageComparator_Package_References is
   type ImageComparator_Access is access all org.allbinary.media.image.comparison.ImageComparator_Package.ImageComparator'Class;
   type ImageComparator_Access_Array is array (Natural range <>) of ImageComparator_Access;
   type ImageComparator_Access_Array_Access is access all ImageComparator_Access_Array;
   type ImageComparator_Access_Array_Access_Array is array (Natural range <>) of ImageComparator_Access_Array_Access;
   type ImageComparator_Access_Array_Access_Array_Access is access all ImageComparator_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.ImageComparator_Package_References;

with org.allbinary.media.image.comparison.ImageComparator_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
limited with org.allbinary.media.image.comparison.ImageComparisonResult_Package;
with org.allbinary.media.image.comparison.ImageComparisonResult_Package_References;

package org.allbinary.media.image.comparison.ImageComparator_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package Reference_Types is
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   use type GPoint_Access;
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   use type GPoint_Access_Array;
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   use type GPoint_Access_Array_Access;
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   use type GPoint_Access_Array_Access_Array;
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   use type GPoint_Access_Array_Access_Array_Access;
   subtype ImageComparatorConstraintsInterface_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access;
   use type ImageComparatorConstraintsInterface_Access;
   subtype ImageComparatorConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array;
   use type ImageComparatorConstraintsInterface_Access_Array;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access;
   use type ImageComparatorConstraintsInterface_Access_Array_Access;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   use type ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   use type ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
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


   subtype ImageComparator_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access;
   function "=" (Left, Right : ImageComparator_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparator_Package_References."=";
   subtype ImageComparator_Access_Array is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array;
   function "=" (Left, Right : ImageComparator_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparator_Package_References."=";
   subtype ImageComparator_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access;
   function "=" (Left, Right : ImageComparator_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparator_Package_References."=";
   subtype ImageComparator_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparator_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparator_Package_References."=";
   subtype ImageComparator_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparator_Package_References.ImageComparator_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparator_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparator_Package_References."=";

   type ImageComparator is new Java_Object with record
      imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface_Access;
   end record;

   procedure Initialize (This : in out ImageComparator'Class; imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class);
   function Create (imageComparatorConstraintsInterface_Param : access ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class) return ImageComparator_Access;
   procedure process (This : in out ImageComparator; imageComparisonInfo_Param : access ImageComparisonResult_Package.ImageComparisonResult'Class; point_Param : access GPoint_Package.GPoint'Class);
   function compare (This : in out ImageComparator; bufferedImage1_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer) return ImageComparisonResult_Access;
   procedure compare (This : in out ImageComparator; bufferedImage1_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer);
   function compare (This : in out ImageComparator; bufferedImage1_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String) return ImageComparisonResult_Access;
   procedure compare (This : in out ImageComparator; bufferedImage1_Param : access BufferedImage_Package.BufferedImage'Class; bufferedImage2_Param : access BufferedImage_Package.BufferedImage'Class; frameOne : Long_Long_Integer; frameTwo : Long_Long_Integer; tolerance : Integer; name : Unbounded_String);

end org.allbinary.media.image.comparison.ImageComparator_Package;


