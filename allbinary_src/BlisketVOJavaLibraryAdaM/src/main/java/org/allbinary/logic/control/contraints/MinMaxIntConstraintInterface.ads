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

package org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package is


   type MinMaxIntConstraintInterface is interface;
   type MinMaxIntConstraintInterface_Access is access all MinMaxIntConstraintInterface'Class;
   type MinMaxIntConstraintInterface_Access_Array is array (Natural range <>) of MinMaxIntConstraintInterface_Access;
   type MinMaxIntConstraintInterface_Access_Array_Access is access all MinMaxIntConstraintInterface_Access_Array;
   function getMax (This : in out MinMaxIntConstraintInterface) return Integer is abstract;
   function getMin (This : in out MinMaxIntConstraintInterface) return Integer is abstract;
   procedure setMax (This : in out MinMaxIntConstraintInterface; max : Integer) is abstract;
   procedure setMin (This : in out MinMaxIntConstraintInterface; min : Integer) is abstract;

end org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;


