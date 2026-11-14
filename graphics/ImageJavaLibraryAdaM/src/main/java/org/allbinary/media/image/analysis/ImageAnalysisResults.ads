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

with AllBinary_Java;
limited with org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
package org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References is
   type ImageAnalysisResults_Access is access all org.allbinary.media.image.analysis.ImageAnalysisResults_Package.ImageAnalysisResults'Class;
   type ImageAnalysisResults_Access_Array is array (Natural range <>) of ImageAnalysisResults_Access;
   type ImageAnalysisResults_Access_Array_Access is access all ImageAnalysisResults_Access_Array;
   type ImageAnalysisResults_Access_Array_Access_Array is array (Natural range <>) of ImageAnalysisResults_Access_Array_Access;
   type ImageAnalysisResults_Access_Array_Access_Array_Access is access all ImageAnalysisResults_Access_Array_Access_Array;
   type ImageAnalysisResults_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysisResults_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysisResults_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysisResults_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysisResults_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysisResults_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysisResults_Access_Array_Object'Class then ImageAnalysisResults_Access_Array_Object'Class (Value.all).Value else null);
   type ImageAnalysisResults_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysisResults_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysisResults_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysisResults_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysisResults_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysisResults_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysisResults_Access_Array_Access_Array_Object'Class then ImageAnalysisResults_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References;

with org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.analysis.ImageColorRangeResults_Package;
with org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References;
limited with org.allbinary.media.image.analysis.ImageColorResults_Package;
with org.allbinary.media.image.analysis.ImageColorResults_Package_References;

package org.allbinary.media.image.analysis.ImageAnalysisResults_Package is

   package Reference_Types is
   subtype ImageColorRangeResults_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access;
   use type ImageColorRangeResults_Access;
   subtype ImageColorRangeResults_Access_Array is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array;
   use type ImageColorRangeResults_Access_Array;
   subtype ImageColorRangeResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access;
   use type ImageColorRangeResults_Access_Array_Access;
   subtype ImageColorRangeResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access_Array;
   use type ImageColorRangeResults_Access_Array_Access_Array;
   subtype ImageColorRangeResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorRangeResults_Package_References.ImageColorRangeResults_Access_Array_Access_Array_Access;
   use type ImageColorRangeResults_Access_Array_Access_Array_Access;
   subtype ImageColorResults_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access;
   use type ImageColorResults_Access;
   subtype ImageColorResults_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array;
   use type ImageColorResults_Access_Array;
   subtype ImageColorResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access;
   use type ImageColorResults_Access_Array_Access;
   subtype ImageColorResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array;
   use type ImageColorResults_Access_Array_Access_Array;
   subtype ImageColorResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array_Access;
   use type ImageColorResults_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageAnalysisResults_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access;
   function "=" (Left, Right : ImageAnalysisResults_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References."=";
   subtype ImageAnalysisResults_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array;
   function "=" (Left, Right : ImageAnalysisResults_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References."=";
   subtype ImageAnalysisResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysisResults_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References."=";
   function Java_Box (Value : ImageAnalysisResults_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysisResults_Access_Array (Value : access Java_Object'Class) return ImageAnalysisResults_Access_Array_Access renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.Java_Unbox_ImageAnalysisResults_Access_Array;
   subtype ImageAnalysisResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array;
   function "=" (Left, Right : ImageAnalysisResults_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References."=";
   subtype ImageAnalysisResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysisResults_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References."=";
   function Java_Box (Value : ImageAnalysisResults_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysisResults_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageAnalysisResults_Access_Array_Access_Array_Access renames org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.Java_Unbox_ImageAnalysisResults_Access_Array_Access_Array;

   type ImageAnalysisResults is new Java_Object with record
      imageColorRangeResults : ImageColorRangeResults_Access;
      imageColorResults : ImageColorResults_Access;
      averageAmbientLevel : Float;
   end record;

   procedure Initialize (This : in out ImageAnalysisResults'Class);
   function Create return ImageAnalysisResults_Access;
   function getImageColorRangeResults (This : in out ImageAnalysisResults) return ImageColorRangeResults_Access;
   procedure setImageColorRangeResults (This : in out ImageAnalysisResults; imageColorRangeResults_Param : access ImageColorRangeResults_Package.ImageColorRangeResults'Class);
   function getAverageAmbientLevel (This : in out ImageAnalysisResults) return Float;
   procedure setAverageAmbientLevel (This : in out ImageAnalysisResults; averageAmbientLevel : Float);
   function getImageColorResults (This : in out ImageAnalysisResults) return ImageColorResults_Access;
   procedure setImageColorResults (This : in out ImageAnalysisResults; imageColorResults_Param : access ImageColorResults_Package.ImageColorResults'Class);

end org.allbinary.media.image.analysis.ImageAnalysisResults_Package;


