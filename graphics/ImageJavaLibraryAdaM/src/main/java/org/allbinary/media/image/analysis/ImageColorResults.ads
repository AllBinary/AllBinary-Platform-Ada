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
limited with org.allbinary.media.image.analysis.ImageColorResults_Package;
package org.allbinary.media.image.analysis.ImageColorResults_Package_References is
   type ImageColorResults_Access is access all org.allbinary.media.image.analysis.ImageColorResults_Package.ImageColorResults'Class;
   type ImageColorResults_Access_Array is array (Natural range <>) of ImageColorResults_Access;
   type ImageColorResults_Access_Array_Access is access all ImageColorResults_Access_Array;
   type ImageColorResults_Access_Array_Access_Array is array (Natural range <>) of ImageColorResults_Access_Array_Access;
   type ImageColorResults_Access_Array_Access_Array_Access is access all ImageColorResults_Access_Array_Access_Array;
   type ImageColorResults_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageColorResults_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageColorResults_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageColorResults_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageColorResults_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageColorResults_Access_Array_Access is (if Value /= null and then Value.all in ImageColorResults_Access_Array_Object'Class then ImageColorResults_Access_Array_Object'Class (Value.all).Value else null);
   type ImageColorResults_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageColorResults_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageColorResults_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageColorResults_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageColorResults_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageColorResults_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageColorResults_Access_Array_Access_Array_Object'Class then ImageColorResults_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.analysis.ImageColorResults_Package_References;

with org.allbinary.media.image.analysis.ImageColorResults_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.media.image.analysis.ColorRange_Package;
with org.allbinary.media.image.analysis.ColorRange_Package_References;
limited with org.allbinary.media.image.analysis.ColorAverage_Package;
with org.allbinary.media.image.analysis.ColorAverage_Package_References;

package org.allbinary.media.image.analysis.ImageColorResults_Package is

   package Reference_Types is
   subtype ColorRange_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access;
   use type ColorRange_Access;
   subtype ColorRange_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array;
   use type ColorRange_Access_Array;
   subtype ColorRange_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access;
   use type ColorRange_Access_Array_Access;
   subtype ColorRange_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array;
   use type ColorRange_Access_Array_Access_Array;
   subtype ColorRange_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorRange_Package_References.ColorRange_Access_Array_Access_Array_Access;
   use type ColorRange_Access_Array_Access_Array_Access;
   subtype ColorAverage_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access;
   use type ColorAverage_Access;
   subtype ColorAverage_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array;
   use type ColorAverage_Access_Array;
   subtype ColorAverage_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access;
   use type ColorAverage_Access_Array_Access;
   subtype ColorAverage_Access_Array_Access_Array is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array;
   use type ColorAverage_Access_Array_Access_Array;
   subtype ColorAverage_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ColorAverage_Package_References.ColorAverage_Access_Array_Access_Array_Access;
   use type ColorAverage_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ImageColorResults_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access;
   function "=" (Left, Right : ImageColorResults_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array;
   function "=" (Left, Right : ImageColorResults_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   function Java_Box (Value : ImageColorResults_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageColorResults_Package_References.Java_Box;
   function Java_Unbox_ImageColorResults_Access_Array (Value : access Java_Object'Class) return ImageColorResults_Access_Array_Access renames org.allbinary.media.image.analysis.ImageColorResults_Package_References.Java_Unbox_ImageColorResults_Access_Array;
   subtype ImageColorResults_Access_Array_Access_Array is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   subtype ImageColorResults_Access_Array_Access_Array_Access is org.allbinary.media.image.analysis.ImageColorResults_Package_References.ImageColorResults_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageColorResults_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.analysis.ImageColorResults_Package_References."=";
   function Java_Box (Value : ImageColorResults_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.analysis.ImageColorResults_Package_References.Java_Box;
   function Java_Unbox_ImageColorResults_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageColorResults_Access_Array_Access_Array_Access renames org.allbinary.media.image.analysis.ImageColorResults_Package_References.Java_Unbox_ImageColorResults_Access_Array_Access_Array;

   type ImageColorResults is new Java_Object with record
      colorRange : ColorRange_Access;
      colorAverage : ColorAverage_Access;
   end record;

   procedure Initialize (This : in out ImageColorResults'Class);
   function Create return ImageColorResults_Access;
   function getColorRange (This : in out ImageColorResults) return ColorRange_Access;
   procedure setColorRange (This : in out ImageColorResults; colorRange_Param : access ColorRange_Package.ColorRange'Class);
   function getColorAverage (This : in out ImageColorResults) return ColorAverage_Access;
   procedure setColorAverage (This : in out ImageColorResults; colorAverage_Param : access ColorAverage_Package.ColorAverage'Class);

end org.allbinary.media.image.analysis.ImageColorResults_Package;


