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

limited with org.allbinary.input.automation.module.MotionRectangleConstraints_Package;
package org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References is
   type MotionRectangleConstraints_Access is access all org.allbinary.input.automation.module.MotionRectangleConstraints_Package.MotionRectangleConstraints'Class;
   type MotionRectangleConstraints_Access_Array is array (Natural range <>) of MotionRectangleConstraints_Access;
   type MotionRectangleConstraints_Access_Array_Access is access all MotionRectangleConstraints_Access_Array;
   type MotionRectangleConstraints_Access_Array_Access_Array is array (Natural range <>) of MotionRectangleConstraints_Access_Array_Access;
   type MotionRectangleConstraints_Access_Array_Access_Array_Access is access all MotionRectangleConstraints_Access_Array_Access_Array;
end org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References;

with org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package; use org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
limited with org.allbinary.input.automation.module.Dimension_Package;
with org.allbinary.input.automation.module.Dimension_Package_References;
limited with org.allbinary.input.automation.module.Rectangle_Package;
with org.allbinary.input.automation.module.Rectangle_Package_References;

package org.allbinary.input.automation.module.MotionRectangleConstraints_Package is

   package MotionRectangleConstraintsInterface_Package renames Standard.org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface_Package;
   package Reference_Types is
   subtype Dimension_Access is org.allbinary.input.automation.module.Dimension_Package_References.Dimension_Access;
   use type Dimension_Access;
   subtype Dimension_Access_Array is org.allbinary.input.automation.module.Dimension_Package_References.Dimension_Access_Array;
   use type Dimension_Access_Array;
   subtype Dimension_Access_Array_Access is org.allbinary.input.automation.module.Dimension_Package_References.Dimension_Access_Array_Access;
   use type Dimension_Access_Array_Access;
   subtype Dimension_Access_Array_Access_Array is org.allbinary.input.automation.module.Dimension_Package_References.Dimension_Access_Array_Access_Array;
   use type Dimension_Access_Array_Access_Array;
   subtype Dimension_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.Dimension_Package_References.Dimension_Access_Array_Access_Array_Access;
   use type Dimension_Access_Array_Access_Array_Access;
   subtype Rectangle_Access is org.allbinary.input.automation.module.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.module.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.module.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.module.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype MotionRectangleConstraints_Access is org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References.MotionRectangleConstraints_Access;
   function "=" (Left, Right : MotionRectangleConstraints_Access) return Boolean renames org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References."=";
   subtype MotionRectangleConstraints_Access_Array is org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References.MotionRectangleConstraints_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraints_Access_Array) return Boolean renames org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References."=";
   subtype MotionRectangleConstraints_Access_Array_Access is org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References.MotionRectangleConstraints_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraints_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References."=";
   subtype MotionRectangleConstraints_Access_Array_Access_Array is org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References.MotionRectangleConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : MotionRectangleConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References."=";
   subtype MotionRectangleConstraints_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References.MotionRectangleConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MotionRectangleConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.MotionRectangleConstraints_Package_References."=";

   type MotionRectangleConstraints is new Java_Object and MotionRectangleConstraintsInterface with record
      minDimension : Dimension_Access;
      maxDimension : Dimension_Access;
      maxMotionRectangles : Integer;
      minArea : Integer;
   end record;

   procedure Initialize (This : in out MotionRectangleConstraints'Class);
   function Create return MotionRectangleConstraints_Access;
   function getMinDimension (This : in out MotionRectangleConstraints) return Dimension_Access;
   function getMaxDimension (This : in out MotionRectangleConstraints) return Dimension_Access;
   function isTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isAreaTooSmall (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isTooBig (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isTooBig (This : in out MotionRectangleConstraints; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   function isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isValid (This : in out MotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);
   procedure setMinDimension (This : in out MotionRectangleConstraints; minDimension_Param : access Dimension_Package.Dimension'Class);
   procedure setMaxDimension (This : in out MotionRectangleConstraints; maxDimension_Param : access Dimension_Package.Dimension'Class);
   function getMaxMotionRectangles (This : in out MotionRectangleConstraints) return Integer;
   procedure setMaxMotionRectangles (This : in out MotionRectangleConstraints; maxMotionRectangles : Integer);
   function getMinArea (This : in out MotionRectangleConstraints) return Integer;
   procedure setMinArea (This : in out MotionRectangleConstraints; minArea : Integer);

end org.allbinary.input.automation.module.MotionRectangleConstraints_Package;


