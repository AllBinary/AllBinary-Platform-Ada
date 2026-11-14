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
limited with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
package org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References is
   type ImageComparatorConstraintsInterface_Access is access all org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package.ImageComparatorConstraintsInterface'Class;
   type ImageComparatorConstraintsInterface_Access_Array is array (Natural range <>) of ImageComparatorConstraintsInterface_Access;
   type ImageComparatorConstraintsInterface_Access_Array_Access is access all ImageComparatorConstraintsInterface_Access_Array;
   type ImageComparatorConstraintsInterface_Access_Array_Access_Array is array (Natural range <>) of ImageComparatorConstraintsInterface_Access_Array_Access;
   type ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is access all ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   type ImageComparatorConstraintsInterface_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparatorConstraintsInterface_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparatorConstraintsInterface_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparatorConstraintsInterface_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparatorConstraintsInterface_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparatorConstraintsInterface_Access_Array_Access is (if Value /= null and then Value.all in ImageComparatorConstraintsInterface_Access_Array_Object'Class then ImageComparatorConstraintsInterface_Access_Array_Object'Class (Value.all).Value else null);
   type ImageComparatorConstraintsInterface_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparatorConstraintsInterface_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparatorConstraintsInterface_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageComparatorConstraintsInterface_Access_Array_Access_Array_Object'Class then ImageComparatorConstraintsInterface_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;

with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References;
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
limited with org.allbinary.media.image.comparison.Rectangle_Package;
with org.allbinary.media.image.comparison.Rectangle_Package_References;
limited with org.allbinary.media.image.comparison.Color_Package;
with org.allbinary.media.image.comparison.Color_Package_References;

package org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package is

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
   subtype Rectangle_Access is org.allbinary.media.image.comparison.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.media.image.comparison.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.media.image.comparison.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.media.image.comparison.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   subtype Color_Access is org.allbinary.media.image.comparison.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.media.image.comparison.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.media.image.comparison.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.media.image.comparison.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type ImageComparatorConstraintsInterface is interface;
   subtype ImageComparatorConstraintsInterface_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   function Java_Box (Value : ImageComparatorConstraintsInterface_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.Java_Box;
   function Java_Unbox_ImageComparatorConstraintsInterface_Access_Array (Value : access Java_Object'Class) return ImageComparatorConstraintsInterface_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.Java_Unbox_ImageComparatorConstraintsInterface_Access_Array;
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   subtype ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References."=";
   function Java_Box (Value : ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.Java_Box;
   function Java_Unbox_ImageComparatorConstraintsInterface_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageComparatorConstraintsInterface_Access_Array_Access_Array_Access renames org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package_References.Java_Unbox_ImageComparatorConstraintsInterface_Access_Array_Access_Array;
   function Java_Object_Access_From_ImageComparatorConstraintsInterface (Value : ImageComparatorConstraintsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraintsInterface) return Integer is abstract;
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; point_Param : access GPoint_Package.GPoint'Class) return Boolean is abstract;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraintsInterface; point_Param : access GPoint_Package.GPoint'Class) is abstract;
   function isColorAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) return Boolean is abstract;
   procedure isColorAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) is abstract;
   function isImageValid (This : in out ImageComparatorConstraintsInterface; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Boolean is abstract;
   procedure isImageValid (This : in out ImageComparatorConstraintsInterface; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) is abstract;
   function isFrameAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer) return Boolean is abstract;
   procedure isFrameAllowed (This : in out ImageComparatorConstraintsInterface; frame : Integer) is abstract;

end org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;


