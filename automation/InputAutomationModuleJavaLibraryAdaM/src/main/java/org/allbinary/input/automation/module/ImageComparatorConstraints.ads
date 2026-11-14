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
limited with org.allbinary.input.automation.module.ImageComparatorConstraints_Package;
package org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References is
   type ImageComparatorConstraints_Access is access all org.allbinary.input.automation.module.ImageComparatorConstraints_Package.ImageComparatorConstraints'Class;
   type ImageComparatorConstraints_Access_Array is array (Natural range <>) of ImageComparatorConstraints_Access;
   type ImageComparatorConstraints_Access_Array_Access is access all ImageComparatorConstraints_Access_Array;
   type ImageComparatorConstraints_Access_Array_Access_Array is array (Natural range <>) of ImageComparatorConstraints_Access_Array_Access;
   type ImageComparatorConstraints_Access_Array_Access_Array_Access is access all ImageComparatorConstraints_Access_Array_Access_Array;
   type ImageComparatorConstraints_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparatorConstraints_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparatorConstraints_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparatorConstraints_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparatorConstraints_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparatorConstraints_Access_Array_Access is (if Value /= null and then Value.all in ImageComparatorConstraints_Access_Array_Object'Class then ImageComparatorConstraints_Access_Array_Object'Class (Value.all).Value else null);
   type ImageComparatorConstraints_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ImageComparatorConstraints_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ImageComparatorConstraints_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ImageComparatorConstraints_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ImageComparatorConstraints_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ImageComparatorConstraints_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ImageComparatorConstraints_Access_Array_Access_Array_Object'Class then ImageComparatorConstraints_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References;

with org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.Color_Package; use java.awt.Color_Package;
--  with java.awt.Rectangle_Package; use java.awt.Rectangle_Package;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
limited with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package; use org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;

package org.allbinary.input.automation.module.ImageComparatorConstraints_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package ImageComparatorConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface_Package;
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
   end Reference_Types;
   use Reference_Types;


   subtype ImageComparatorConstraints_Access is org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.ImageComparatorConstraints_Access;
   function "=" (Left, Right : ImageComparatorConstraints_Access) return Boolean renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References."=";
   subtype ImageComparatorConstraints_Access_Array is org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.ImageComparatorConstraints_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraints_Access_Array) return Boolean renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References."=";
   subtype ImageComparatorConstraints_Access_Array_Access is org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.ImageComparatorConstraints_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraints_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References."=";
   function Java_Box (Value : ImageComparatorConstraints_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.Java_Box;
   function Java_Unbox_ImageComparatorConstraints_Access_Array (Value : access Java_Object'Class) return ImageComparatorConstraints_Access_Array_Access renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.Java_Unbox_ImageComparatorConstraints_Access_Array;
   subtype ImageComparatorConstraints_Access_Array_Access_Array is org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.ImageComparatorConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : ImageComparatorConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References."=";
   subtype ImageComparatorConstraints_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.ImageComparatorConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ImageComparatorConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References."=";
   function Java_Box (Value : ImageComparatorConstraints_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.Java_Box;
   function Java_Unbox_ImageComparatorConstraints_Access_Array_Access_Array (Value : access Java_Object'Class) return ImageComparatorConstraints_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.ImageComparatorConstraints_Package_References.Java_Unbox_ImageComparatorConstraints_Access_Array_Access_Array;

   type ImageComparatorConstraints is new Java_Object and ImageComparatorConstraintsInterface with record
      logUtil : LogUtil_Access;
      avoidVector : BasicArrayList_Access;
      maxNonMatchingPixelDeltas : Integer;
      doImageComparisonEveryNthFrame : Integer;
   end record;

   procedure Initialize (This : in out ImageComparatorConstraints'Class; doImageComparisonEveryNthFrame : Integer);
   function Create (doImageComparisonEveryNthFrame : Integer) return ImageComparatorConstraints_Access;
   function getAvoidVector (This : in out ImageComparatorConstraints) return BasicArrayList_Access;
   function isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) return Boolean;
   procedure isColorAllowed (This : in out ImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class);
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point_Param : access GPoint_Package.GPoint'Class) return Boolean;
   procedure isCollisionWithAvoidRectangles (This : in out ImageComparatorConstraints; point_Param : access GPoint_Package.GPoint'Class);
   procedure setAvoidVector (This : in out ImageComparatorConstraints; avoidVector_Param : access BasicArrayList_Package.BasicArrayList'Class);
   function getMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints) return Integer;
   procedure setMaxNonMatchingPixelDeltas (This : in out ImageComparatorConstraints; maxNonMatchingPixelDeltas : Integer);
   function isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer) return Boolean;
   procedure isFrameAllowed (This : in out ImageComparatorConstraints; frame : Integer);
   function isImageValid (This : in out ImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Boolean;
   procedure isImageValid (This : in out ImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);
   procedure log (This : in out ImageComparatorConstraints);

end org.allbinary.input.automation.module.ImageComparatorConstraints_Package;


