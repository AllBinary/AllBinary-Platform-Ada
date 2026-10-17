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
with org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package; use org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;

package org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package is

   package MinMaxIntConstraintInterface_Package renames org.allbinary.logic.control.contraints.MinMaxIntConstraintInterface_Package;

   type SizeConstraintInterface is interface and MinMaxIntConstraintInterface;
   type SizeConstraintInterface_Access is access all SizeConstraintInterface'Class;
   type SizeConstraintInterface_Access_Array is array (Natural range <>) of SizeConstraintInterface_Access;
   type SizeConstraintInterface_Access_Array_Access is access all SizeConstraintInterface_Access_Array;

end org.allbinary.logic.control.contraints.size.SizeConstraintInterface_Package;


