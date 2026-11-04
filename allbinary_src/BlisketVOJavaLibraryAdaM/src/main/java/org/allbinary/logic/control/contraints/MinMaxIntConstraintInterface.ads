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

limited with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;
package org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References is
   type MinMaxIntConstraintInterface_Access is access all org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package.MinMaxIntConstraintInterface'Class;
   type MinMaxIntConstraintInterface_Access_Array is array (Natural range <>) of MinMaxIntConstraintInterface_Access;
   type MinMaxIntConstraintInterface_Access_Array_Access is access all MinMaxIntConstraintInterface_Access_Array;
   type MinMaxIntConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of MinMaxIntConstraintInterface_Access_Array_Access;
   type MinMaxIntConstraintInterface_Access_Array_Access_Array_Access is access all MinMaxIntConstraintInterface_Access_Array_Access_Array;
end org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References;

with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type MinMaxIntConstraintInterface is interface;
   subtype MinMaxIntConstraintInterface_Access is org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References.MinMaxIntConstraintInterface_Access;
   function "=" (Left, Right : MinMaxIntConstraintInterface_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References."=";
   subtype MinMaxIntConstraintInterface_Access_Array is org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References.MinMaxIntConstraintInterface_Access_Array;
   function "=" (Left, Right : MinMaxIntConstraintInterface_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References."=";
   subtype MinMaxIntConstraintInterface_Access_Array_Access is org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References.MinMaxIntConstraintInterface_Access_Array_Access;
   function "=" (Left, Right : MinMaxIntConstraintInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References."=";
   subtype MinMaxIntConstraintInterface_Access_Array_Access_Array is org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References.MinMaxIntConstraintInterface_Access_Array_Access_Array;
   function "=" (Left, Right : MinMaxIntConstraintInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References."=";
   subtype MinMaxIntConstraintInterface_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References.MinMaxIntConstraintInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MinMaxIntConstraintInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package_References."=";
   function Java_Object_Access_From_MinMaxIntConstraintInterface (Value : MinMaxIntConstraintInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getMax (This : in out MinMaxIntConstraintInterface) return Integer is abstract;
   function getMin (This : in out MinMaxIntConstraintInterface) return Integer is abstract;
   procedure setMax (This : in out MinMaxIntConstraintInterface; max : Integer) is abstract;
   procedure setMin (This : in out MinMaxIntConstraintInterface; min : Integer) is abstract;

end org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;


