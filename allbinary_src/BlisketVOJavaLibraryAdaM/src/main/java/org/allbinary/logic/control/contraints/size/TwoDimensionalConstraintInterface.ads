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
with org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package; use org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;

package org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package is


   type TwoDimensionalConstraintInterface is interface;
   type TwoDimensionalConstraintInterface_Access is access all TwoDimensionalConstraintInterface'Class;
   type TwoDimensionalConstraintInterface_Access_Array is array (Natural range <>) of TwoDimensionalConstraintInterface_Access;
   type TwoDimensionalConstraintInterface_Access_Array_Access is access all TwoDimensionalConstraintInterface_Access_Array;
   type TwoDimensionalConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of TwoDimensionalConstraintInterface_Access_Array_Access;
   type TwoDimensionalConstraintInterface_Access_Array_Access_Array_Access is access all TwoDimensionalConstraintInterface_Access_Array_Access_Array;
   function getHeight (This : in out TwoDimensionalConstraintInterface) return SizeConstraintInterface_Access is abstract;
   function getWidth (This : in out TwoDimensionalConstraintInterface) return SizeConstraintInterface_Access is abstract;
   procedure setHeight (This : in out TwoDimensionalConstraintInterface; heightSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is abstract;
   procedure setWidth (This : in out TwoDimensionalConstraintInterface; widthSizeConstraintInterface_Param : access SizeConstraintInterface_Package.SizeConstraintInterface'Class) is abstract;

end org.allbinary.logic.control.contraints.size.TwoDimensionalConstraintInterface_Package;


