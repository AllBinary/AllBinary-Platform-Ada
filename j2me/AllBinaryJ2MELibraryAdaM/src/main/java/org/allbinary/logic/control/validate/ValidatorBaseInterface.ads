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
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package org.allbinary.logic.control.validate.ValidatorBaseInterface_Package is

   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type ValidatorBaseInterface is interface;
   type ValidatorBaseInterface_Access is access all ValidatorBaseInterface'Class;
   type ValidatorBaseInterface_Access_Array is array (Natural range <>) of ValidatorBaseInterface_Access;
   type ValidatorBaseInterface_Access_Array_Access is access all ValidatorBaseInterface_Access_Array;
   type ValidatorBaseInterface_Access_Array_Access_Array is array (Natural range <>) of ValidatorBaseInterface_Access_Array_Access;
   type ValidatorBaseInterface_Access_Array_Access_Array_Access is access all ValidatorBaseInterface_Access_Array_Access_Array;
   function isValid (This : in out ValidatorBaseInterface) return Boolean is abstract;
   function validationInfo (This : in out ValidatorBaseInterface) return Unbounded_String is abstract;
   function toHashtable (This : in out ValidatorBaseInterface) return ABHashtable_Access is abstract;
   function toList (This : in out ValidatorBaseInterface) return BasicArrayList_Access is abstract;

end org.allbinary.logic.control.validate.ValidatorBaseInterface_Package;


