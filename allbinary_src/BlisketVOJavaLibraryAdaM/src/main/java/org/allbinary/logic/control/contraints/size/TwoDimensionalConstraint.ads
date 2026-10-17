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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;

package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package is

   package Node_Package renames Standard.org.w3c.dom.Node_Package;

   type TwoDimensionalConstraint is tagged;
   type TwoDimensionalConstraint_Access is access all TwoDimensionalConstraint'Class;
   type TwoDimensionalConstraint_Access_Array is array (Natural range <>) of TwoDimensionalConstraint_Access;
   type TwoDimensionalConstraint_Access_Array_Access is access all TwoDimensionalConstraint_Access_Array;

   type TwoDimensionalConstraint is new TwoDimensionalConstraintInterface with record
      widthSizeConstraintInterface : SizeConstraintInterface_Access;
      heightSizeConstraintInterface : SizeConstraintInterface_Access;
   end record;

   procedure Initialize (This : in out TwoDimensionalConstraint'Class; node : Node_Access);
   function Create (node : Node_Access) return TwoDimensionalConstraint_Access;
   function getHeight (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access;
   procedure getHeight (This : in out TwoDimensionalConstraint);
   function getWidth (This : in out TwoDimensionalConstraint) return SizeConstraintInterface_Access;
   procedure getWidth (This : in out TwoDimensionalConstraint);
   procedure setHeight (This : in out TwoDimensionalConstraint; heightSizeConstraintInterface : SizeConstraintInterface_Access);
   procedure setWidth (This : in out TwoDimensionalConstraint; widthSizeConstraintInterface : SizeConstraintInterface_Access);

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraint_Package;


