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
limited with org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;
package org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References is
   type NoMotionRectangleConstraints_Access is access all org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package.NoMotionRectangleConstraints'Class;
   type NoMotionRectangleConstraints_Access_Array is array (Natural range <>) of NoMotionRectangleConstraints_Access;
   type NoMotionRectangleConstraints_Access_Array_Access is access all NoMotionRectangleConstraints_Access_Array;
   type NoMotionRectangleConstraints_Access_Array_Access_Array is array (Natural range <>) of NoMotionRectangleConstraints_Access_Array_Access;
   type NoMotionRectangleConstraints_Access_Array_Access_Array_Access is access all NoMotionRectangleConstraints_Access_Array_Access_Array;
   type NoMotionRectangleConstraints_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMotionRectangleConstraints_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMotionRectangleConstraints_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMotionRectangleConstraints_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMotionRectangleConstraints_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMotionRectangleConstraints_Access_Array_Access is (if Value /= null and then Value.all in NoMotionRectangleConstraints_Access_Array_Object'Class then NoMotionRectangleConstraints_Access_Array_Object'Class (Value.all).Value else null);
   type NoMotionRectangleConstraints_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NoMotionRectangleConstraints_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NoMotionRectangleConstraints_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NoMotionRectangleConstraints_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NoMotionRectangleConstraints_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NoMotionRectangleConstraints_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NoMotionRectangleConstraints_Access_Array_Access_Array_Object'Class then NoMotionRectangleConstraints_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References;

with org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.awt.image.BufferedImage_Package; use java.awt.image.BufferedImage_Package;
with org.allbinary.input.automation.module.MotionRectangleConstraints_Package; use org.allbinary.input.automation.module.MotionRectangleConstraints_Package;
limited with org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package;
with org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References;

package org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package is

   package MotionRectangleConstraints_Package renames Standard.org.allbinary.input.automation.module.MotionRectangleConstraints_Package;
   package Reference_Types is
   subtype Rectangle_Access is org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References.Rectangle_Access;
   use type Rectangle_Access;
   subtype Rectangle_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References.Rectangle_Access_Array;
   use type Rectangle_Access_Array;
   subtype Rectangle_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References.Rectangle_Access_Array_Access;
   use type Rectangle_Access_Array_Access;
   subtype Rectangle_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References.Rectangle_Access_Array_Access_Array;
   use type Rectangle_Access_Array_Access_Array;
   subtype Rectangle_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.Rectangle_Package_References.Rectangle_Access_Array_Access_Array_Access;
   use type Rectangle_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NoMotionRectangleConstraints_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.NoMotionRectangleConstraints_Access;
   function "=" (Left, Right : NoMotionRectangleConstraints_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References."=";
   subtype NoMotionRectangleConstraints_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.NoMotionRectangleConstraints_Access_Array;
   function "=" (Left, Right : NoMotionRectangleConstraints_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References."=";
   subtype NoMotionRectangleConstraints_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.NoMotionRectangleConstraints_Access_Array_Access;
   function "=" (Left, Right : NoMotionRectangleConstraints_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References."=";
   function Java_Box (Value : NoMotionRectangleConstraints_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.Java_Box;
   function Java_Unbox_NoMotionRectangleConstraints_Access_Array (Value : access Java_Object'Class) return NoMotionRectangleConstraints_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.Java_Unbox_NoMotionRectangleConstraints_Access_Array;
   subtype NoMotionRectangleConstraints_Access_Array_Access_Array is org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.NoMotionRectangleConstraints_Access_Array_Access_Array;
   function "=" (Left, Right : NoMotionRectangleConstraints_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References."=";
   subtype NoMotionRectangleConstraints_Access_Array_Access_Array_Access is org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.NoMotionRectangleConstraints_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NoMotionRectangleConstraints_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References."=";
   function Java_Box (Value : NoMotionRectangleConstraints_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.Java_Box;
   function Java_Unbox_NoMotionRectangleConstraints_Access_Array_Access_Array (Value : access Java_Object'Class) return NoMotionRectangleConstraints_Access_Array_Access_Array_Access renames org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package_References.Java_Unbox_NoMotionRectangleConstraints_Access_Array_Access_Array;

   type NoMotionRectangleConstraints is new MotionRectangleConstraints with null record;

   procedure Initialize (This : in out NoMotionRectangleConstraints'Class);
   function Create return NoMotionRectangleConstraints_Access;
   function isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class) return Boolean;
   procedure isValid (This : in out NoMotionRectangleConstraints; frame : Long_Long_Integer; bufferedImage_Param : access BufferedImage_Package.BufferedImage'Class; rectangle_Param : access Rectangle_Package.Rectangle'Class);

end org.allbinary.input.automation.module.generic_Id.constraints.NoMotionRectangleConstraints_Package;


