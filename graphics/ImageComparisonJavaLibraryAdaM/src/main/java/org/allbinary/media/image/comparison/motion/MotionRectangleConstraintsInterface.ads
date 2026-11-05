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

limited with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
package org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References is
   type MotionRectangleConstraintsInterface_Access is access all org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package.MotionRectangleConstraintsInterface'Class;
   type MotionRectangleConstraintsInterface_Access_Array is array (Natural range <>) of MotionRectangleConstraintsInterface_Access;
   type MotionRectangleConstraintsInterface_Access_Array_Access is access all MotionRectangleConstraintsInterface_Access_Array;
   type MotionRectangleConstraintsInterface_Access_Array_Access_Array is array (Natural range <>) of MotionRectangleConstraintsInterface_Access_Array_Access;
   type MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is access all MotionRectangleConstraintsInterface_Access_Array_Access_Array;
end org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;

with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
limited with org.allbinary.media.image.comparison.motion.Dimension_Package;
with org.allbinary.media.image.comparison.motion.Dimension_Package_References;
limited with org.allbinary.media.image.comparison.motion.Rectangle_Package;
with org.allbinary.media.image.comparison.motion.Rectangle_Package_References;

package org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package is

   package Reference_Types is
   subtype Dimension_Access is org.allbinary.media.image.comparison.motion.Dimension_Package_References.Dimension_Access;
   use type Dimension_Access;
   subtype Dimension_Access_Array is org.allbinary.media.image.comparison.motion.Dimension_Package_References.Dimension_Access_Array;
   use type Dimension_Access_Array;
   subtype Dimension_Access_Array_Access is org.allbinary.media.image.comparison.motion.Dimension_Package_References.Dimension_Access_Array_Access;
   use type Dimension_Access_Array_Access;
   subtype Dimension_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   use type Dimension_Access_Array_Access_Array;
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   use type Dimension_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.media.image.comparison.motion.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.media.image.comparison.motion.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.media.image.comparison.motion.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type MotionRectangleConstraintsInterface is interface;
   subtype MotionRectangleConstraintsInterface_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   subtype MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access is org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References.MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraintsInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package_References."=";
   function Java_Object_Access_From_MotionRectangleConstraintsInterface (Value : MotionRectangleConstraintsInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMaxMotionRectangles (This : in out MotionRectangleConstraintsInterface) return Integer is abstract;
   function getMinDimension (This : in out MotionRectangleConstraintsInterface) return Dimension_Access is abstract;
   function getMinArea (This : in out MotionRectangleConstraintsInterface) return Integer is abstract;
   function getMaxDimension (This : in out MotionRectangleConstraintsInterface) return Dimension_Access is abstract;
   function isTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   procedure isTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   function isAreaTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   procedure isAreaTooSmall (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   function isTooBig (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   procedure isTooBig (This : in out MotionRectangleConstraintsInterface; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;
   function isValid (This : in out MotionRectangleConstraintsInterface; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean is abstract;
   procedure isValid (This : in out MotionRectangleConstraintsInterface; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) is abstract;

end org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;


