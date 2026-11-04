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

limited with org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;
package org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References is
   type NoImageComparatorConstraints_Access is access all org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package.NoImageComparatorConstraints'Class;
   type NoImageComparatorConstraints_Access_Array is array (Natural range <>) of NoImageComparatorConstraints_Access;
   type NoImageComparatorConstraints_Access_Array_Access is access all NoImageComparatorConstraints_Access_Array;
   type NoImageComparatorConstraints_Access_Array_Access_Array is array (Natural range <>) of NoImageComparatorConstraints_Access_Array_Access;
   type NoImageComparatorConstraints_Access_Array_Access_Array_Access is access all NoImageComparatorConstraints_Access_Array_Access_Array;
end org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References;

with org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References;
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
with org.allbinary.input.automation.module.ImageComparatorConstraints_Package; use org.allbinary.input.automation.module.ImageComparatorConstraints_Package;
limited with org.allbinary.input.automation.module.generic_Id.constraints.Color_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References;

package org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package is

   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package ImageComparatorConstraints_Package renames Standard.org.allbinary.input.automation.module.ImageComparatorConstraints_Package;
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
   subtype Color_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access;
   use type Color_Access;
   subtype Color_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array;
   use type Color_Access_Array;
   subtype Color_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access;
   use type Color_Access_Array_Access;
   subtype Color_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access_Array;
   use type Color_Access_Array_Access_Array;
   subtype Color_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Color_Package_References.Color_Access_Array_Access_Array_Access;
   use type Color_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoImageComparatorConstraints_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References.NoImageComparatorConstraints_Access;
   function "=" (Left, Right : NoImageComparatorConstraints_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References."=";
   subtype NoImageComparatorConstraints_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References.NoImageComparatorConstraints_Access_Array;
   function "=" (Left, Right : NoImageComparatorConstraints_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References."=";
   subtype NoImageComparatorConstraints_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References.NoImageComparatorConstraints_Access_Array_Access;
   function "=" (Left, Right : NoImageComparatorConstraints_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References."=";
   subtype NoImageComparatorConstraints_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References.NoImageComparatorConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : NoImageComparatorConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References."=";
   subtype NoImageComparatorConstraints_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References.NoImageComparatorConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoImageComparatorConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package_References."=";

   type NoImageComparatorConstraints is new ImageComparatorConstraints with null record;

   procedure Initialize (This : in out NoImageComparatorConstraints'Class);
   function Create return NoImageComparatorConstraints_Access;
   function isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class) return Boolean;
   procedure isColorAllowed (This : in out NoImageComparatorConstraints; frame : Integer; point_Param : access GPoint_Package.GPoint'Class; color_Param : access Color_Package.Color'Class);
   function isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class) return Boolean;
   procedure isImageValid (This : in out NoImageComparatorConstraints; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class);

end org.allbinary.input.automation.module.generic_Id.constraints.NoImageComparatorConstraints_Package;


