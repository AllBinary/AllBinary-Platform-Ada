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

limited with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References is
   type TwoDimensionalConstraintInterface_Access is access all org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package.TwoDimensionalConstraintInterface'Class;
   type TwoDimensionalConstraintInterface_Access_Array is array (Natural range <>) of TwoDimensionalConstraintInterface_Access;
   type TwoDimensionalConstraintInterface_Access_Array_Access is access all TwoDimensionalConstraintInterface_Access_Array;
   type TwoDimensionalConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of TwoDimensionalConstraintInterface_Access_Array_Access;
   type TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is access all TwoDimensionalConstraintInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;

with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References;

package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package is

   package Reference_Types is
   subtype SizeConstraintInterface_Access is org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References.SizeConstraintInterface_Access;
   use type SizeConstraintInterface_Access;
   subtype SizeConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References.SizeConstraintInterface_Access_Array;
   use type SizeConstraintInterface_Access_Array;
   subtype SizeConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References.SizeConstraintInterface_Access_Array_Access;
   use type SizeConstraintInterface_Access_Array_Access;
   subtype SizeConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References.SizeConstraintInterface_Access_Array_Access_Array;
   use type SizeConstraintInterface_Access_Array_Access_Array;
   subtype SizeConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References.SizeConstraintInterface_Access_Array_Access_Array_Access;
   use type SizeConstraintInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type TwoDimensionalConstraintInterface is interface;
   subtype TwoDimensionalConstraintInterface_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   subtype TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References.TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package_References."=";
   function Java_Object_Access_From_TwoDimensionalConstraintInterface (Value : TwoDimensionalConstraintInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getHeight (This : in out TwoDimensionalConstraintInterface) return SizeConstraintInterface_Access is abstract;
   function getWidth (This : in out TwoDimensionalConstraintInterface) return SizeConstraintInterface_Access is abstract;
   procedure setHeight (This : in out TwoDimensionalConstraintInterface; heightSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is abstract;
   procedure setWidth (This : in out TwoDimensionalConstraintInterface; widthSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is abstract;

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;


