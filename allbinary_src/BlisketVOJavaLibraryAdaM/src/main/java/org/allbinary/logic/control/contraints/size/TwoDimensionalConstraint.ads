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

limited with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;
package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References is
   type TwoDimensionalConstraint_Access is access all org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package.TwoDimensionalConstraint'Class;
   type TwoDimensionalConstraint_Access_Array is array (Natural range <>) of TwoDimensionalConstraint_Access;
   type TwoDimensionalConstraint_Access_Array_Access is access all TwoDimensionalConstraint_Access_Array;
   type TwoDimensionalConstraint_Access_Array_Access_Array is array (Natural range <>) of TwoDimensionalConstraint_Access_Array_Access;
   type TwoDimensionalConstraint_Access_Array_Access_Array_Access is access all TwoDimensionalConstraint_Access_Array_Access_Array;
end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References;

with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;
limited with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package_References;

package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;
   package Reference_Types is
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   use type Node_Access;
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   use type Node_Access_Array;
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   use type Node_Access_Array_Access;
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   use type Node_Access_Array_Access_Array;
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   use type Node_Access_Array_Access_Array_Access;
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


   subtype TwoDimensionalConstraint_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References.TwoDimensionalConstraint_Access;
   function "=" (Left, Right : TwoDimensionalConstraint_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References."=";
   subtype TwoDimensionalConstraint_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References.TwoDimensionalConstraint_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraint_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References."=";
   subtype TwoDimensionalConstraint_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References.TwoDimensionalConstraint_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraint_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References."=";
   subtype TwoDimensionalConstraint_Access_Array_Access_Array is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References.TwoDimensionalConstraint_Access_Array_Access_Array;
   function "=" (Left, Right : TwoDimensionalConstraint_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References."=";
   subtype TwoDimensionalConstraint_Access_Array_Access_Array_Access is org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References.TwoDimensionalConstraint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TwoDimensionalConstraint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package_References."=";

   type TwoDimensionalConstraint is new Java_Object and TwoDimensionalConstraintInterface with record
      widthSizeConstraintInterface : SizeConstraintInterface_Access;
      heightSizeConstraintInterface : SizeConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out TwoDimensionalConstraint'Class; node_Param : access Node_Package.Node'Class);
   function Create (node_Param : access Node_Package.Node'Class) return TwoDimensionalConstraint_Access;
   function getHeight (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access;
   function getWidth (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access;
   procedure setHeight (This : in out TwoDimensionalConstraint; heightSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class);
   procedure setWidth (This : in out TwoDimensionalConstraint; widthSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class);

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;


