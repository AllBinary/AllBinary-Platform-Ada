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
limited with org.allbinary.media.image.analysis.ImageAnalysis_Package;
package org.allbinary.media.image.analysis.ImageAnalysis_Package_References is
   type ImageAnalysis_Access is access all org.allbinary.media.image.analysis.ImageAnalysis_Package.ImageAnalysis'Class;
   type ImageAnalysis_Access_Array is array (Natural range <>) of ImageAnalysis_Access;
   type ImageAnalysis_Access_Array_Access is access all ImageAnalysis_Access_Array;
   type ImageAnalysis_Access_Array_Access_Array is array (Natural range <>) of ImageAnalysis_Access_Array_Access;
   type ImageAnalysis_Access_Array_Access_Array_Access is access all ImageAnalysis_Access_Array_Access_Array;
   type ImageAnalysis_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysis_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysis_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysis_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysis_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysis_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysis_Access_Array_Object'Class then ImageAnalysis_Access_Array_Object'Class (Value.all).Value else null);
   type ImageAnalysis_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageAnalysis_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageAnalysis_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageAnalysis_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageAnalysis_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageAnalysis_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageAnalysis_Access_Array_Access_Array_Object'Class then ImageAnalysis_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.analysis.ImageAnalysis_Package_References;

with org.allbinary.media.image.analysis.ImageAnalysis_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.media.image.analysis.ImageAnalysisResults_Package;
with org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References;
limited with org.allbinary.media.image.analysis.ColorRangeInterface_Package;
with org.allbinary.media.image.analysis.ColorRangeInterface_Package_References;
limited with org.allbinary.media.image.analysis.Color_Package;
with org.allbinary.media.image.analysis.Color_Package_References;
limited with org.allbinary.media.image.analysis.ImageColorResults_Package;
with org.allbinary.media.image.analysis.ImageColorResults_Package_References;

package org.allbinary.media.image.analysis.ImageAnalysis_Package is

   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Reference_Types is
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
   subtype ImageAnalysisResults_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access;
   use type ImageAnalysisResults_Access;
   subtype ImageAnalysisResults_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array;
   use type ImageAnalysisResults_Access_Array;
   subtype ImageAnalysisResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access;
   use type ImageAnalysisResults_Access_Array_Access;
   subtype ImageAnalysisResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array;
   use type ImageAnalysisResults_Access_Array_Access_Array;
   subtype ImageAnalysisResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysisResults_Package_References.ImageAnalysisResults_Access_Array_Access_Array_Access;
   use type ImageAnalysisResults_Access_Array_Access_Array_Access;
   subtype ColorRangeInterface_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access;
   use type ColorRangeInterface_Access;
   subtype ColorRangeInterface_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array;
   use type ColorRangeInterface_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access;
   subtype ColorRangeInterface_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array;
   use type ColorRangeInterface_Access_Array_Access_Array;
   subtype ColorRangeInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRangeInterface_Package_References.ColorRangeInterface_Access_Array_Access_Array_Access;
   use type ColorRangeInterface_Access_Array_Access_Array_Access;
   subtype Color_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
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


   subtype ImageAnalysis_Access is org.allbinary.media.image.analysis.ImageAnalysis_Package_References.ImageAnalysis_Access;
   function "=" (Left, Right : ImageAnalysis_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References."=";
   subtype ImageAnalysis_Access_Array is org.allbinary.media.image.analysis.ImageAnalysis_Package_References.ImageAnalysis_Access_Array;
   function "=" (Left, Right : ImageAnalysis_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References."=";
   subtype ImageAnalysis_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysis_Package_References.ImageAnalysis_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysis_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References."=";
   function Java_Box (Value : ImageAnalysis_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysis_Access_Array (Value : access Java_Object'Class) return ImageAnalysis_Access_Array_Access renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References.Java_Unbox_ImageAnalysis_Access_Array;
   subtype ImageAnalysis_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageAnalysis_Package_References.ImageAnalysis_Access_Array_Access_Array;
   function "=" (Left, Right : ImageAnalysis_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References."=";
   subtype ImageAnalysis_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageAnalysis_Package_References.ImageAnalysis_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageAnalysis_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References."=";
   function Java_Box (Value : ImageAnalysis_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References.Java_Box;
   function Java_Unbox_ImageAnalysis_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageAnalysis_Access_Array_Access_Array_Access renames org.allbinary.media.image.analysis.ImageAnalysis_Package_References.Java_Unbox_ImageAnalysis_Access_Array_Access_Array;

   type ImageAnalysis is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : ImageAnalysis_Access;

   procedure Initialize (This : in out ImageAnalysis'Class);
   function Create return ImageAnalysis_Access;
   function getInstance return ImageAnalysis_Access;
   function process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) return ImageAnalysisResults_Access_Array_Access;
   procedure process (This : in out ImageAnalysis; bufferedImageArray : BufferedImage_Access_Array_Access; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class);
   function process (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class) return ImageAnalysisResults_Access;
   procedure process (bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class);
   procedure processColorRangeResults (imageAnalysisResults_Param : access ImageAnalysisResults_Package.ImageAnalysisResults'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class; color_Param : access Color_Package.Color'Class);
   procedure processImageColorResults (imageColorResults_Param : access ImageColorResults_Package.ImageColorResults'Class; colorRangeInterface_Param : access ColorRangeInterface_Package.ColorRangeInterface'Class; color_Param : access Color_Package.Color'Class);

end org.allbinary.media.image.analysis.ImageAnalysis_Package;


