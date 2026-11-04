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

limited with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;
package org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References is
   type MinMaxDoubleConstraintInterface_Access is access all org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package.MinMaxDoubleConstraintInterface'Class;
   type MinMaxDoubleConstraintInterface_Access_Array is array (Natural range <>) of MinMaxDoubleConstraintInterface_Access;
   type MinMaxDoubleConstraintInterface_Access_Array_Access is access all MinMaxDoubleConstraintInterface_Access_Array;
   type MinMaxDoubleConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of MinMaxDoubleConstraintInterface_Access_Array_Access;
   type MinMaxDoubleConstraintInterface_Access_Array_Access_Array_Access is access all MinMaxDoubleConstraintInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References;

with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type MinMaxDoubleConstraintInterface is interface;
   subtype MinMaxDoubleConstraintInterface_Access is org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References.MinMaxDoubleConstraintInterface_Access;
   function "=" (Left, Right : MinMaxDoubleConstraintInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References."=";
   subtype MinMaxDoubleConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References.MinMaxDoubleConstraintInterface_Access_Array;
   function "=" (Left, Right : MinMaxDoubleConstraintInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References."=";
   subtype MinMaxDoubleConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References.MinMaxDoubleConstraintInterface_Access_Array_Access;
   function "=" (Left, Right : MinMaxDoubleConstraintInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References."=";
   subtype MinMaxDoubleConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References.MinMaxDoubleConstraintInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MinMaxDoubleConstraintInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References."=";
   subtype MinMaxDoubleConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References.MinMaxDoubleConstraintInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MinMaxDoubleConstraintInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package_References."=";
   function Java_Object_Access_From_MinMaxDoubleConstraintInterface (Value : MinMaxDoubleConstraintInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMax (This : in out MinMaxDoubleConstraintInterface) return Long_Float is abstract;
   function getMin (This : in out MinMaxDoubleConstraintInterface) return Long_Float is abstract;
   procedure setMax (This : in out MinMaxDoubleConstraintInterface; max : Long_Float) is abstract;
   procedure setMin (This : in out MinMaxDoubleConstraintInterface; min : Long_Float) is abstract;

end org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;


