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
with org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package; use org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;

package org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package is

   package MinMaxDoubleConstraintInterface_Package renames org.allbinary.logic.control.contraints.MinMaxDoubleConstraintInterface_Package;

   type PriceConstraintInterface is interface and MinMaxDoubleConstraintInterface;
   type PriceConstraintInterface_Access is access all PriceConstraintInterface'Class;
   type PriceConstraintInterface_Access_Array is array (Natural range <>) of PriceConstraintInterface_Access;
   type PriceConstraintInterface_Access_Array_Access is access all PriceConstraintInterface_Access_Array;

end org.allbinary.logic.control.contraints.price.PriceConstraintInterface_Package;


