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

package org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package is


   type MinMaxDoubleConstraintInterface is interface;
   type MinMaxDoubleConstraintInterface_Access is access all MinMaxDoubleConstraintInterface'Class;
   type MinMaxDoubleConstraintInterface_Access_Array is array (Natural range <>) of MinMaxDoubleConstraintInterface_Access;
   type MinMaxDoubleConstraintInterface_Access_Array_Access is access all MinMaxDoubleConstraintInterface_Access_Array;
   type MinMaxDoubleConstraintInterface_Access_Array_Access_Array is array (Natural range <>) of MinMaxDoubleConstraintInterface_Access_Array_Access;
   type MinMaxDoubleConstraintInterface_Access_Array_Access_Array_Access is access all MinMaxDoubleConstraintInterface_Access_Array_Access_Array;
   function getMax (This : in out MinMaxDoubleConstraintInterface) return Long_Float is abstract;
   function getMin (This : in out MinMaxDoubleConstraintInterface) return Long_Float is abstract;
   procedure setMax (This : in out MinMaxDoubleConstraintInterface; max : Long_Float) is abstract;
   procedure setMin (This : in out MinMaxDoubleConstraintInterface; min : Long_Float) is abstract;

end org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;


