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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.logic.control.validate.ValidatorBaseInterface_Package; use org.allbinary.logic.control.validate.ValidatorBaseInterface_Package;

package org.allbinary.logic.control.validate.ValidatorBase_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;

   type ValidatorBase is tagged;
   type ValidatorBase_Access is access all ValidatorBase'Class;
   type ValidatorBase_Access_Array is array (Natural range <>) of ValidatorBase_Access;
   type ValidatorBase_Access_Array_Access is access all ValidatorBase_Access_Array;
   type ValidatorBase_Access_Array_Access_Array is array (Natural range <>) of ValidatorBase_Access_Array_Access;
   type ValidatorBase_Access_Array_Access_Array_Access is access all ValidatorBase_Access_Array_Access_Array;

   type ValidatorBase is new Java_Object and ValidatorBaseInterface with null record;
   instance : ValidatorBase_Access;

   procedure Initialize (This : in out ValidatorBase'Class);
   function Create return ValidatorBase_Access;
   function getInstance return ValidatorBase_Access;
   function isValid (This : in out ValidatorBase) return Boolean;
   function validationInfo (This : in out ValidatorBase) return Unbounded_String;
   function toHashtable (This : in out ValidatorBase) return ABHashtable_Access;
   function toList (This : in out ValidatorBase) return BasicArrayList_Access;

end org.allbinary.logic.control.validate.ValidatorBase_Package;


